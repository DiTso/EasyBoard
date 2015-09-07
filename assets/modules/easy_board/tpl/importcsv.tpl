<h1>Import from a csv</h1>
<br/><br/>
<p>Download file csv. Please note, the operation is not reversible. Be careful, it is recommended to backup the database.</p>
<input name="csv" type="file" /><br/>
<label><input name="published" type="checkbox"/> Post, if not in the import file column "published"</label><br/><br/>
<button class="styler" href="#"onclick="postForm('importcsvgo', null);return false;">Import</button>&nbsp;&nbsp;&nbsp;
<a href="#" onclick="postForm('reload',null);return false;">Отмена</a>