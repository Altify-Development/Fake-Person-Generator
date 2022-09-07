objParam := {file: ["config.png"], content: "Test Image Send to Webhook"}
CreateFormData(PostData, hdr_ContentType, objParam)

HTTP := ComObjCreate("WinHTTP.WinHTTPRequest.5.1")
HTTP.Open("POST", "webhook", true)
HTTP.SetRequestHeader("User-Agent", "Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko")
HTTP.SetRequestHeader("Content-Type", hdr_ContentType)
HTTP.SetRequestHeader("Pragma", "no-cache")
HTTP.SetRequestHeader("Cache-Control", "no-cache, no-store")
HTTP.SetRequestHeader("If-Modified-Since", "Sat, 1 Jan 2000 00:00:00 GMT")
HTTP.Send(PostData)
HTTP.WaitForResponse()
msgbox % HTTP.ResponseText





CreateFormData(ByRef retData, ByRef retHeader, objParam) {
	New CreateFormData(retData, retHeader, objParam)
}

Class CreateFormData {

	__New(ByRef retData, ByRef retHeader, objParam) {

		Local CRLF := "`r`n", i, k, v, str, pvData
		; Create a random Boundary
		Local Boundary := this.RandomBoundary()
		Local BoundaryLine := "------------------------------" . Boundary

    this.Len := 0 ; GMEM_ZEROINIT|GMEM_FIXED = 0x40
    this.Ptr := DllCall( "GlobalAlloc", "UInt",0x40, "UInt",1, "Ptr"  )          ; allocate global memory

		; Loop input paramters
		For k, v in objParam
		{
			If IsObject(v) {
				For i, FileName in v
				{
					str := BoundaryLine . CRLF
					     . "Content-Disposition: form-data; name=""" . k . """; filename=""" . FileName . """" . CRLF
					     . "Content-Type: " . this.MimeType(FileName) . CRLF . CRLF
          this.StrPutUTF8( str )
          this.LoadFromFile( Filename )
          this.StrPutUTF8( CRLF )
				}
			} Else {
				str := BoundaryLine . CRLF
				     . "Content-Disposition: form-data; name=""" . k """" . CRLF . CRLF
				     . v . CRLF
        this.StrPutUTF8( str )
			}
		}

		this.StrPutUTF8( BoundaryLine . "--" . CRLF )

    ; Create a bytearray and copy data in to it.
    retData := ComObjArray( 0x11, this.Len ) ; Create SAFEARRAY = VT_ARRAY|VT_UI1
    pvData  := NumGet( ComObjValue( retData ) + 8 + A_PtrSize )
    DllCall( "RtlMoveMemory", "Ptr",pvData, "Ptr",this.Ptr, "Ptr",this.Len )

    this.Ptr := DllCall( "GlobalFree", "Ptr",this.Ptr, "Ptr" )                   ; free global memory 

    retHeader := "multipart/form-data; boundary=----------------------------" . Boundary
	}

  StrPutUTF8( str ) {
    Local ReqSz := StrPut( str, "utf-8" ) - 1
    this.Len += ReqSz                                  ; GMEM_ZEROINIT|GMEM_MOVEABLE = 0x42
    this.Ptr := DllCall( "GlobalReAlloc", "Ptr",this.Ptr, "UInt",this.len + 1, "UInt", 0x42 )   
    StrPut( str, this.Ptr + this.len - ReqSz, ReqSz, "utf-8" )
  }
  
  LoadFromFile( Filename ) {
    Local objFile := FileOpen( FileName, "r" )
    this.Len += objFile.Length                     ; GMEM_ZEROINIT|GMEM_MOVEABLE = 0x42 
    this.Ptr := DllCall( "GlobalReAlloc", "Ptr",this.Ptr, "UInt",this.len, "UInt", 0x42 )
    objFile.RawRead( this.Ptr + this.Len - objFile.length, objFile.length )
    objFile.Close()       
  }

	RandomBoundary() {
		str := "0|1|2|3|4|5|6|7|8|9|a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z"
		Sort, str, D| Random
		str := StrReplace(str, "|")
		Return SubStr(str, 1, 12)
	}

	MimeType(FileName) {
		n := FileOpen(FileName, "r").ReadUInt()
		Return (n        = 0x474E5089) ? "image/png"
		     : (n        = 0x38464947) ? "image/gif"
		     : (n&0xFFFF = 0x4D42    ) ? "image/bmp"
		     : (n&0xFFFF = 0xD8FF    ) ? "image/jpeg"
		     : (n&0xFFFF = 0x4949    ) ? "image/tiff"
		     : (n&0xFFFF = 0x4D4D    ) ? "image/tiff"
		     : "application/octet-stream"
	}

}
