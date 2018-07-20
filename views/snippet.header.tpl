
    <nav class="navbar navbar-expand-lg navbar-dark site_navbar bg-dark site-navbar-light" id="site-navbar">
      <div class="container">
		  <a class="navbar-brand" href="/">Zesty Burger</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#site-nav" aria-controls="site-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="site-nav">
						  {{ navigation(1)}}
<!--
          <ul class="navbar-nav ml-auto">

            <li class="nav-item active"><a href="#section-home" class="nav-link">Home</a></li>
            <li class="nav-item"><a href="#section-about" class="nav-link">About</a></li>
            <li class="nav-item"><a href="#section-offer" class="nav-link">Locations</a></li>
            <li class="nav-item"><a href="#section-menu" class="nav-link">Menu</a></li>
            <li class="nav-item"><a href="#section-news" class="nav-link">Events</a></li>
            <li class="nav-item"><a href="#section-gallery" class="nav-link">Blog</a></li>
            <li class="nav-item"><a href="#section-contact" class="nav-link">Careers</a></li>
          </ul>-->
        </div>
      </div>
    </nav>

<script>
	
	var navUL = document.getElementById("nav");
	navUL.classList.add("navbar-nav");
	navUL.classList.add("ml-auto");
	var lis = navUL.getElementsByTagName("li");
	for (var j =0; j<lis.length; j++) {
		lis[j].classList.add("nav-item");
		var a = lis[j].getElementsByTagName("a")[0]
		a.classList.add("nav-link");
	}
	
	
</script>