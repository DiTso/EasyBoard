<br/>
<p>Ad <b>№[+id+]</b>;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Author <input name="createdby" style="width:120px;" class="styler" value="[+createdby+]" size="10" type="number"></input>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
views:
<input class="styler" type="text" name="hit" style="width:120px;" value="[+hit+]" />
<label><input name="published" type="checkbox" [+published+]/> Published</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<table border="0"><tr>
<td valign="top">
	<div class="sec maxheight">
		<p>Category:</p>
		<select name="parent">
			[+parent+]				
		</select>
	</div>
</td>
<td valign="top">
	<div class="sec maxheight">
		<p>City:</p>
		<select name="city" data-search="true">
			[+city+]				
		</select>
	</div>
	<label><input name="allcity" type="checkbox" [+allcity+]/> Post all cities</label>
</td>
<td valign="top">
	<div class="sec maxheight">
		<p>Context:</p>
		<select name="context">
			<option value="">All contexts</option>
			[+contexts+]				
		</select>
	</div>
</td>
</tr></table>
<br/><p>Title:</p>
<input class="styler" type="text" name="pagetitle" style="width:90%;" value="[+pagetitle+]" />
<br/><br/><p>Advertisement:</p>
<textarea name="content" class="styler" style="width:90%;height:190px;" placeholder="Advertisement">[+content+]</textarea>
<br/><br/><p>contacts:</p>
<input class="styler" type="text" name="contact" style="width:90%;" value="[+contact+]" />
<br/><br/><p>The price, if there is:</p>
<input class="styler" type="text" name="price" style="width:90%;" value="[+price+]" />
<br/><br/>
[+image+]
<p>&nbsp;</p>