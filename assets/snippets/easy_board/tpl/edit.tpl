<br/>
<form method="post" enctype="multipart/form-data">
<input type="hidden" name="act" value="edit">
<input type="hidden" name="ebid" value="[+id+]">
[+notice+]
<p>Ad <b>№[+id+]</b>;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Author: [+username+]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<label><input name="published" type="checkbox" [+published+]/> Published</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<table class="eb-table" border="0"><tr>
<td valign="top">
	<div>
		<p>Category:</p>
		<select name="parent">
			[+parentIds+]				
		</select>
	</div>
</td>
<td valign="top">
	<div>
		<p>City:</p>
		<select name="city">
			[+cityIds+]				
		</select>
	</div>

</td>
</tr></table>
<br/><p>Title:*</p>
<input type="text" name="pagetitle" style="width:90%;" value="[+pagetitle+]" />
<br/><br/><p>Advertisement:</p>
<textarea name="content" style="width:90%;height:190px;" >[+content+]</textarea>
<br/><br/><p>Phone:*</p>
<input type="text" name="contact" style="width:90%;" value="[+contact+]" />
<br/><br/><p>The price, if there is:</p>
<input type="text" name="price" style="width:90%;" value="[+price+]" />
<br/><br/>
[+image+]
<p>&nbsp;</p>
<p>* - mandatory fields</p>
<input type="submit" value="Save">
</form>
<p>&nbsp;</p>