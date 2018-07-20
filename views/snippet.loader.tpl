{{ include header }}
<div data-spy="scroll" data-target="#site-navbar" data-offset="200">

   {{current_view}}
</div>
{{ include footer }}

<script>
	var anims = document.getElementsByClassName("site-animate");
	for (var j =0; j<anims.length;j++) {
		anims[j].classList.remove("site-animate");
		j--;
	}
</script>