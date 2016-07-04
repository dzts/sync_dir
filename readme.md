##This is a folder for the synchronization process, using SFTP to achieve.##

##Program directory structure:##
	Config configuration file
	downloadawk parsing data awk
	sync_download from the remote server synchronization directory to the local script
	sync_upload from the local host synchronization directory to the remote server script
	uploadawk parsing data awk

##command sync_download##

  	sync_download -r [username@host:path] -l path -n [not download file config] -sde
	option:
	  -r SSH configuration and directory of remote services；eg:root@192.168.0.3:/var/test
	  -l Local directory
	  -n not_download configuration file
	  -s Specify a directory to generate the SFTP command script
	  -d Are you sure you want to delete the unnecessary files and directories on the remote server
	  -e Do not use the not_download configuration

##command sync_upload##

	sync_upload -r [username@host:path] -l path -n [not upload file config] -sde
	option:
	  -r SSH configuration and directory of remote services；eg:root@192.168.0.3:/var/test
	  -l Local directory
	  -n not_upload configuration file
	  -s Specify a directory to generate the SFTP command script
	  -d Are you sure you want to delete the unnecessary files and directories on the remote server
	  -e Do not use the not_upload configuration

