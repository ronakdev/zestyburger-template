{{ $cityName = {page.parent_zuid} }}
{{ $home = .. }}
{{ include local-page-nav }}
{{ each location_pages as loc where loc._item_zuid = '{$cityName}' }}

<section class="site-section" id="section-about">
      <div class="container">
		  {{breadcrumbs}}
		          <div class="row">
          <div class="col-md-5 site-animate mb-5">
			  <h2 class="site-primary-title display-4">{{page.name}}</h2>
			  <h3>{{page.date}}</h3>
			  <p>{{page.description}}</p>
			  <p><a href="/-/custom/localevent.ics?id={{page._item_zuid}}&location={{loc.city}}" class="btn btn-secondary btn-lg">Add to Calendar</a></p>
          </div>
          <div class="col-md-1"></div>
          <div class="col-md-6 site-animate img" data-animate-effect="fadeInRight">
            <img src="https://6c706l48.media.zestyio.com/zestyteam.jpg" alt="Free Template by colorlib.com" class="img-fluid">
          </div>
        </div>
      </div>
    </section>

{{ end-each }}