BEGIN{
	local_md5=TMP_DIR"/remote_md5.txt";
	remote_md5=TMP_DIR"/local_md5.txt";
}

{
  if( FILENAME == local_md5 ){
     local[FNR] = $2;
     localLen = FNR;
  }else if( FILENAME == remote_md5 ){
     remote[FNR] = $2;
     remoteLen = FNR;
  }
}

END{
  for( i=1;i<=remoteLen;i++ ){
     is_equal = 0;
     for( j=1;j<=localLen;j++){
        if( remote[i] == local[j]){
          is_equal = 1;
          break;
        }
     }
     if(is_equal==0){
        print remote[i];
     }
  }
}
