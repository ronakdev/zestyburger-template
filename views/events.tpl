  
    <section class="site-section" id="section-about">
      <div class="container">
        <div class="row">
          <div class="col-md-5 site-animate mb-5">
            <h4 class="site-sub-title">Events</h4>
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

	{{each event_list as event sort by event.date}}
					  
					  <div class="card">
						  
						  <div class="card-body">
							  <h5 class="card-title">{{event.name}}</h5>
							  <p class="card-text">On {{event.date}} at all locations worldwide.</p>
							  <a href="/-/custom/event.ics?id={{event._item_zuid}}" class="btn btn-primary">Add to Calendar</a>
							  <a href="{{event.getUrl()}}" class="btn btn-primary">View Event Page </a>
						  </div>
					  </div>
	{{end-each}}
		</div>
</section>

