    
    <section class="site-section" id="section-about">
      <div class="container">
        <div class="row">
          <div class="col-md-5 site-animate mb-5">
            <h4 class="site-sub-title">Our Story</h4>
			  <h2 class="site-primary-title display-4">{{page.header}}</h2>
			  {{page.description}}
			  <p><a href="{{page.link_destination}}" class="btn btn-secondary btn-lg">{{page.link_title}}</a></p>
          </div>
          <div class="col-md-1"></div>
          <div class="col-md-6 site-animate img" data-animate-effect="fadeInRight">
			  <img src="{{page.image.getImage()}}" alt="{{page.image.getimagetitle()}}" class="img-fluid">
          </div>
        </div>
      </div>
    </section>