{
    "items" : {
        {{ if {get_var.location} }}
            {{ each location_pages as loc where loc.city = '{get_var.location}' }}
                {{ each local_menu as f where find_in_set(z.zuid, '{loc.local_menu_items}') }}
                    "{{f.name}}" : {
                        "price" : "{{f.price}}",
                        "description" : "{{f.description.escapeForJs()}}",
                        "vegetarian": "{{f.vegetarian}}",
                        "vegan": "{{f.vegan}}",
                        "gluten-free": "{{f.gluten_free}}",
                        "images" : {
                            {{ each media.{f.images} as media  }} 
                                {{ if {index} != 1 }},{{end-if}}"image_{{index}}" : "{{media.image.getImage()}}"
                            {{ end-each }}
                        }		
                    }{{ if {f._num} != {f._length} }},{{ end-if }}		
                {{ end-each }}
            {{ end-each }}
        {{ else }}
			"food" : {
				{{ each foods as f }}
					"{{f.name}}" : {
							"price" : "{{f.price}}",
							"description" : "{{f.description.escapeForJs()}}",
							"vegetarian": "{{f.vegetarian}}",
							"vegan": "{{f.vegan}}",
							"gluten-free": "{{f.gluten_free}}",
							"images" : {
								{{ each media.{f.images} as myMedia  }}
									{{ if {index} != 1 }},{{end-if}}"image_{{index}}" : "{{myMedia.image.getImage()}}" 
								{{ end-each }}
							}		
						}{{ if {f._num} != {f._length} }},{{ end-if }}		
				{{ end-each }}
			},
			"drink" : {
				{{ each drinks as d }}
						"{{f.name}}" : {
								"price" : "{{d.price}}",
								"description" : "{{d.description.escapeForJs()}}",
								"alcoholic": "{{d.alcoholic}}",
								"images" : {
									{{ each media.{d.images} as media  }}
									{{ if {index} != 1 }},{{end-if}} "image_{{index}}" : "{{media.image.getImage()}}"
									{{ end-each }}
								}		
							}{{ if {d._num} != {d._length} }},{{ end-if }}		
				{{ end-each }}
			}
        {{ end-if }}
    }
}
