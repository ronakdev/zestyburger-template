{
    "posts" : {
		{{ each articles as art }}
			"{{art.title}}" : {
				"thumbnail" : "{{art.thumbnail}}",
				"content" : "{{art.content.escapeForJs()}}"
			}{{ if {art._num} != {art._length} }},{{ end-if }}
		{{ end-each }}
    }
}
