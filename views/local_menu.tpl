{{ $cityName = {page.parent_zuid} }}
{{ $home = .. }}
{{ include local-page-nav }}

       
    <section class="site-section" id="section-about">
      <div class="container">
        <div class="row">
          <div class="col-md-5 site-animate mb-5">
			  <h2 class="site-primary-title display-4">{{page.name}}</h2>
			  <p>Price: ${{page.price}} 
				  {{ if {page.vegetarian} = 1  }}<span class="tag">Vegetarian</span>{{end-if}}
				  {{ if {page.vegan} = 1 }}<span class="tag">Vegan</span>{{end-if}}
				  {{ if {page.gluten_free} = 1  }}<span class="tag">Gluten Free</span>{{end-if}}
			  </p>

			  <p class="mb-4">{{page.description}}</p>
            <p><a href="../#local-specialties" class="btn btn-secondary btn-lg">Back to Menu</a></p>
          </div>
          <div class="col-md-1"></div>
          <div class="col-md-6 site-animate img" data-animate-effect="fadeInRight">
			  {{ each media.{page.images} as media limit 1}}
			  <img src="{{media.image.getImage()}}" class="img-fluid" alt="{{media.image.getimagetitle()}}"/>
			  {{ end-each }}                         
							
          </div>
        </div>
      </div>
    </section>