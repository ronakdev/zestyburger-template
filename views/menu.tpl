<section class="site-section" id="section-menu">
   <div class="container">
      <div class="row">
         <div class="col-md-12 text-center mb-5 site-animate">
			 <h2 class="display-4">{{page.title}}</h2>
            <div class="row justify-content-center">
               <div class="col-md-7">
				   <p class="lead">{{page.description}}</p>
               </div>
            </div>
         </div>
         <div class="col-md-12 text-center">
            <ul class="nav site-tab-nav nav-pills mb-5" id="pills-tab" role="tablist">
               <li class="nav-item site-animate">
                  <a class="nav-link active" id="pills-food-tab" data-toggle="pill" href="#pills-food" role="tab" aria-controls="pills-food" aria-selected="true">Food</a>
               </li>
               <li class="nav-item site-animate">
                  <a class="nav-link" id="pills-drink-tab" data-toggle="pill" href="#pills-drink" role="tab" aria-controls="pills-drink" aria-selected="false">Drink</a>
               </li>
               <li class="nav-item site-animate">
                  <a class="nav-link" id="pills-local-tab" data-toggle="pill" href="#pills-local" role="tab" aria-controls="pills-local" aria-selected="false">Local</a>
               </li>
            </ul>
			 
			<div class="tab-content text-left">
              <div class="tab-pane fade show active" id="pills-food" role="tabpanel" aria-labelledby="pills-food-tab">
                <div class="row">
                    <div class="col-md-6 site-animate">
                        <h3>General</h3>
                        
                        {{ each foods as f where f.vegetarian = 0}}
                        <div class="media menu-item div-link">
							<a href="{{f.getUrl()}}"><span class="div-link-span"></span></a>
							{{ each media.{f.images} as media limit 1}}
							<img class="mr-3" src="{{media.image.getImage()}}" class="img-fluid" alt="{{media.image.getimagetitle()}}"/>
							{{ end-each }}
							                          <div class="media-body">
                            <h5 class="mt-0">{{f.name}} {{ if {f.gluten_free} = 1 }}<span class="tag">Gluten Free</span> {{end-if}}</h5>
                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                            <h6 class="text-primary menu-price">${{f.price}}</h6>
                          </div>
                        </div>
                        {{ end-each }}
                    </div>
                    
                    <div class="col-md-6 site-animate">
                        <h3>Vegetarian / Vegan</h3>
                        {{ each foods as f where f.vegetarian = 1 }}
                        <div class="media menu-item div-link">
							<a href="{{f.getUrl()}}"><span class="div-link-span"></span></a>
							{{ each media.{f.images} as media limit 1}}
							<img class="mr-3" src="{{media.image.getImage()}}" class="img-fluid" alt="{{media.image.getimagetitle()}}"/>
							{{ end-each }}
							<div class="media-body">
                            <h5 class="mt-0">{{f.name}} {{ if {f.gluten_free} = 1 }}<span class="tag">Gluten Free</span> {{end-if}}</h5>
                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                            <h6 class="text-primary menu-price">${{f.price}}</h6>
                          </div>
                        </div>
                        {{ end-each }}

                    </div>
                    
               
                    
                                    
                </div>
              </div>
                
              <div class="tab-pane fade" id="pills-drink" role="tabpanel" aria-labelledby="pills-drink-tab">
                <div class="row">
                  <div class="col-md-6 site-animate">
                      <h3>Non Alcoholic</h3>
                      
                      {{ each drinks as d where d.alcoholic = 0}}
                        <div class="media menu-item div-link">
							<a href="{{f.getUrl()}}"><span class="div-link-span"></span></a>
							{{ each media.{d.images} as media limit 1}}
							<img class="mr-3" src="{{media.image.getImage()}}" class="img-fluid" alt="{{media.image.getimagetitle()}}"/>
							{{ end-each }}                          <div class="media-body">
                            <h5 class="mt-0">{{d.name}} </h5>
                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                            <h6 class="text-primary menu-price">${{d.price}}</h6>
                          </div>
                        </div>
                        {{ end-each }}

                  </div>
                  <div class="col-md-6 site-animate div-link">
                      <h3>Alcoholic</h3>
                    {{ each drinks as d where d.alcoholic = 1}}
                        <div class="media menu-item div-link">
							<a href="{{f.getUrl()}}"><span class="div-link-span"></span></a>
							{{ each media.{d.images} as media}}
							<img class="mr-3" src="{{media.image.getImage()}}" class="img-fluid" alt="{{media.image.getimagetitle()}}"/>
							{{ end-each }}                          <div class="media-body">
                            <h5 class="mt-0">{{d.name}} </h5>
                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                            <h6 class="text-primary menu-price">${{d.price}}</h6>
                          </div>
                        </div>
                        {{ end-each }}

                    
                  </div>
                </div>
              </div>
                
              <div class="tab-pane fade" id="pills-local" role="tabpanel" aria-labelledby="pills-local-tab">
                <div class="row">
                    <h1>Local Specialties</h1>
                      <p>Each of our amazing restaurants have unique items specific to their region and season. You can see what they are serving right now on <a href="locations.html">their site page</a>.</p>
                      
                      <h3>Our Favorite Local Items</h3>
                      
                  <div class="col-md-12 site-animate">

                      {{ each local_menu as f limit 3}}
                        <div class="media menu-item div-link">
							<a href="{{f.getUrl()}}"><span class="div-link-span"></span></a>
							{{ each media.{f.images} as media  }}
							<img class="mr-3" src="{{media.image.getImage()}}" class="img-fluid" alt="{{media.image.getimagetitle()}}"/>
							{{ end-each }}
                          <div class="media-body">
                            <h5 class="mt-0">{{f.name}} </h5>
                            <p>{{f.description}}</p>
                            <h6 class="text-primary menu-price">${{f.price}}</h6>
                          </div>
                        </div>
                        {{ end-each }}
                    

                  </div>

                </div>
              </div>
            </div>
			
               
         </div>
		  
      </div>
   </div>
</section>