{
    "careers" : {
        {{ if {get_var.location} }}
            {{ each location_pages as loc where loc.city = '{get_var.location}' }}
                {{ each local_careers_list as c where find_in_set(z.zuid, '{loc.local_careers_list}') }}
                    "{{c.title}}" : {
                        "description" : "{{c.description.escapeForJs()}}"
                    }{{ if {c._num} != {c._length} }},{{ end-if }}		
                {{ end-each }}
            {{ end-each }}
        {{ else }}
			{{ each career_list as c }}
					"{{c.title}}" : {
							"description" : "{{c.description.escapeForJs()}}"
						}{{ if {c._num} != {c._length} }},{{ end-if }}		
				{{ end-each }}
        {{ end-if }}
    }
}
