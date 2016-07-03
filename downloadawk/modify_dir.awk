BEGIN{
	local_dir=TMP_DIR"/remote_dir.txt";
	remote_dir=TMP_DIR"/local_dir.txt";
}

{
  if( FILENAME == local_dir ){
     local[FNR] = $0;
     localLen = FNR;
  }else if( FILENAME == remote_dir ){
     remote[FNR] = $0;
     remoteLen = FNR;
  }
}

END{
  for( i=1;i<=localLen;i++ ){
     is_equal=0;
     for( j=1;j<=remoteLen;j++){
        if(local[i] == remote[j]){
          is_equal=1;
          break;
        }
     }
     if(is_equal==0){
       print local[i];
     }
  }
}
