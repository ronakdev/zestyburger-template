  
    <section class="site-section" id="section-about">
      <div class="container">
        <div class="row">
          <div class="col-md-5 site-animate mb-5">
            <h4 class="site-sub-title">Careers</h4>
			  <h2 class="site-primary-title display-4">{{page.title}}</h2>
			  <p>{{page.description}}</p>
          </div>
          <div class="col-md-1"></div>
          <div class="col-md-6 site-animate img" data-animate-effect="fadeInRight">
			  <img src="{{page.image.getImage()}}" alt="{{page.image.getimagetitle()}}" class="img-fluid">
          </div>
        </div>
      </div>
    </section>
    <section class="site-section" id="section-events">
			      <div class="container">

	{{each career_list as car}}
					  
					  <div class="card">
						  
						  <div class="card-body">
							  <h5 class="card-title">{{car.title}}</h5>
							  <p class="card-text">{{car.description.subwords(30)}}.</p>
 <a href="{{car.getUrl()}}" class="btn btn-primary">View Job Page </a>
						  </div>
					  </div>
	{{end-each}}
		</div>
</section>

