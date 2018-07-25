{{ $cityName = {page._item_zuid} }}
{{ $home = {page.getUrl()} }}
{{ include local-page-nav }}


<style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 360px;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
    <section class="site-section" id="home">
      <div class="container">
        <div class="row">
          <div class="col-md-5 site-animate mb-5">
            <h4 class="site-sub-title">Destination</h4>
			  <h2 class="site-primary-title display-4">{{page.city}}</h2>
			  <p>{{page.description}}</p>
			  <p><a href="{{page.landing_link}}" class="btn btn-secondary btn-lg">{{page.landing_link_text}}</a></p>
          </div>
          <div class="col-md-1"></div>
          <div class="col-md-6 site-animate img" data-animate-effect="fadeInRight">
<div id="map"></div>
        <p>You can enable this feature by getting a <a href="https://cloud.google.com/maps-platform/?__utma=102347093.1732108420.1531515768.1532390950.1532390950.1&__utmb=102347093.0.10.1532390950&__utmc=102347093&__utmx=-&__utmz=102347093.1532390950.1.1.utmcsr=google|utmccn=(organic)|utmcmd=organic|utmctr=(not%20provided)&__utmv=-&__utmk=132917390&_ga=2.53216360.1183605615.1532387897-1732108420.1531515768#get-started">Google Maps Key</a> and putting it in your Content Clippings</p>
      <script>
        var geocoder;
        var map;
        var address = "{{page.address}}";
        function initMap() {
          var pos = {lat: {{page.lat}}, lng: {{page.lng}} }
          
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 19,
          center: pos
        });
          var marker = new google.maps.Marker({position: pos, map: map})
          
        }
    
      initMap()
      </script>
        <script src="https://maps.googleapis.com/maps/api/js?key={{clippings.googlemapskey}}&callback=initMap"
    async defer></script>
			</div>
        </div>
      </div>
    </section>

  
    <section class="site-section" id="local-events">
      <div class="container">
        <div class="row">
          <div class="col-md-5 site-animate mb-5">
            <h4 class="site-sub-title">Events</h4>
			  <h2 class="site-primary-title display-4">{{page.events_subpage_title}}</h2>
			  <p>{{page.events_subpage_description}} </p>
          </div>
          <div class="col-md-1"></div>
          <div class="col-md-6 site-animate img" data-animate-effect="fadeInRight">
			  <img src="{{page.events_subpage_image.getImage()}}" alt="{{page.events_subpage_image.getimagetitle()}}" class="img-fluid">
          </div>
        </div>
      </div>
    </section>
    <section class="site-section" id="events-list">
			      <div class="container">

{{ each local_events as event where find_in_set(z.zuid, '{page.local_event_list}') }}
					  
					  <div class="card">
						  
						  <div class="card-body">
							  <h5 class="card-title">{{event.name}}</h5>
							  <p class="card-text">On {{event.date}} at all locations worldwide.</p>
							  <a href="/-/custom/localevent.ics?id={{event._item_zuid}}&location={{page.city}}" class="btn btn-primary">Add to Calendar</a>
							  <a href="{{event.getUrl()}}" class="btn btn-primary">View Event Page </a>
						  </div>
					  </div>
	{{end-each}}
		</div>
</section>

<section class="site-section" id="local-specialties">
   <div class="container">
      <div class="row">
         <div class="col-md-12 text-center mb-5 site-animate">
			 <h2 class="display-4">{{page.menu_subpage_title}}</h2>
            <div class="row justify-content-center">
               <div class="col-md-7">
				   <p class="lead">{{page.menu_subpage_description}}</p>
               </div>
            </div>
         </div>
         <div class="col-md-12 text-center">
           
			 
			<div class="tab-content text-left">
              
                
              <div class="tab-pane fade show active" id="pills-local" role="tabpanel" aria-labelledby="pills-local-tab">
                <div class="row">
                    <h1>Local Specialties</h1>

                      
                      
                  <div class="col-md-12 site-animate">

						{{ each local_menu as f where find_in_set(z.zuid, '{page.local_menu_items}') }}
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

  
    <section class="site-section" id="local-careers">
      <div class="container">
        <div class="row">
          <div class="col-md-5 site-animate mb-5">
            <h4 class="site-sub-title">Careers</h4>
			  <h2 class="site-primary-title display-4">{{page.careers_subpage_title}}</h2>
			  <p>{{page.careers_subpage_description}}</p>
          </div>
          <div class="col-md-1"></div>
          <div class="col-md-6 site-animate img" data-animate-effect="fadeInRight">
			  <img src="{{page.careers_subpage_image.getImage()}}" alt="{{page.careers_subpage_image.getimagetitle()}}" class="img-fluid">
          </div>
        </div>
      </div>
    </section>
    <section class="site-section" id="section-events">
			      <div class="container">

{{ each local_careers_list as car where find_in_set(z.zuid, '{page.local_careers_list}') }}
					  
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



