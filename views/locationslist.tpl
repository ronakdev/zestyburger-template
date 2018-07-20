{
	"locations" : [
		{{ each location_pages as loc }}
			"{{loc.city}}"{{if {loc._num} != {loc._length} }},{{end-if}}
		{{end-each}}
	]
	
}