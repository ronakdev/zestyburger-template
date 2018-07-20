
    <section class="site-section bg-light" id="section-news">
      <div class="container">

        <div class="row">
          <div class="col-md-12 text-center mb-5 no-site-animate">
			  <h2 class="display-4">{{page.title}}</h2>
            <div class="row justify-content-center">
              <div class="col-md-7">
				  <p class="lead">{{page.description}}</p>
              </div>
            </div>
          </div>
			{{ each articles as artcile  }}
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="media d-block mb-4 text-center site-media no-site-animate">
				<img src="{{article.thumbnail.getImage()}}" alt="Free Template by colorlib.com" class="img-fluid">
              <div class="media-body p-md-5 p-4">
				  <h5 class="mt-0 h4">{{article.title}}</h5>
				  <p class="mb-4">{{article.content.subWords(5)}}...</p>

				  <p class="mb-0"><a href="{{article.getUrl()}}" class="btn btn-primary btn-sm">Read More</a></p>
              </div>
            </div>
          </div>
			{{ end-each }}

        </div>
      </div>
    </section>
    <!-- END section -->
