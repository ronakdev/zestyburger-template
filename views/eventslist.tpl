{
    "events" : {
        {{ if {get_var.location} }}
            {{ each location_pages as loc where loc.city = '{get_var.location}' }}
                {{ each local_events as e where find_in_set(z.zuid, '{loc.local_event_list}') }}
                    "{{e.name}}" : {
                        "date" : "{{e.date}}",
                        "description" : "{{e.description.escapeForJs()}}"
                    }{{ if {e._num} != {e._length} }},{{ end-if }}		
                {{ end-each }}
            {{ end-each }}
        {{ else }}
			{{ each event_list as e }}
					"{{e.name}}" : {
							"date" : "{{e.date}}",
							"description" : "{{e.description.escapeForJs()}}"
						}{{ if {e._num} != {e._length} }},{{ end-if }}		
				{{ end-each }}
        {{ end-if }}
    }
}
