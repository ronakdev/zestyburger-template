
{{ each location_pages as loc where loc._item_zuid = '{$cityName}' }}

<nav class="navbar navbar-expand-lg navbar-dark bg-dark" data-toggle="sticky-onscroll">
    <div class="navbar-collapse collapse w-100 dual-collapse2 order-1 order-md-0">
						

        <ul class="navbar-nav ml-auto text-center">
			<a class="navbar-brand" href="{{ loc.getUrl() }}">{{ loc.city }}</a>
             <li class="nav-item active">
						 <a class="nav-link" href="{{ $home }}#home">Home <span class="sr-only">(current)</span></a>
                     </li>
                     <li class="nav-item">
						 <a class="nav-link" href="{{ $home }}#local-events">Local Events</a>
                     </li>
        </ul>
    </div>
    <div class="mx-auto my-2 order-0 order-md-1 position-relative">
		
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
    <div class="navbar-collapse collapse w-100 dual-collapse2 order-2 order-md-2">
        <ul class="navbar-nav mr-auto text-center">
             <li class="nav-item">
                        <a class="nav-link" href="{{ $home }}#local-specialties">Local Specialties</a>
                     </li>
						 <li class="nav-item">
                        <a class="nav-link" href="{{ $home }}#local-careers">Local Careers</a>
                     </li>
        </ul>
    </div>
</nav>
{{ end-each }}