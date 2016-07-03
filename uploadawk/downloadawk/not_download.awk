BEGIN{
   not_upload=TMP_DIR"/not_download";
   modify_md5=TMP_DIR"/modify_md5.txt";
}

{
  if( FILENAME == not_upload ){
     not_uploads[FNR] = $0;
     not_uploads_len = FNR;
  }else if( FILENAME == modify_md5 ){
     modify_md5s[FNR] = $0;
     modify_md5s_len = FNR;
  }
  
}

END{
  for( i=1;i<=modify_md5s_len;i++ ){
     is_equal=0;
     for( j=1;j<=not_uploads_len;j++){
        if(modify_md5s[i] == not_uploads[j]){
          is_equal=1;
          break;
        }
     }
     if(is_equal==0){
		 print modify_md5s[i];
     }
  }
}
