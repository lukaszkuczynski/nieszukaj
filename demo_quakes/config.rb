input {
	file {
		sincedb_path => "/dev/null"
		ignore_older => 0
		path => "/home/luk/prj/nieszukaj/demo_quakes/quakes_sr.csv"
		start_position => "beginning"
	}
}

filter {

	csv {
		autodetect_column_names => true
		separator => ";"
	}
	
	if (("" in [Year]) and ("" not in [Month]) and ("" not in [Day])) {
	mutate {
		add_field => {
			date_collected => "%{Year}"
		}
	}
	}
	if (("" in [Year]) and ("" in [Month]) and ("" not in [Day])) {
	mutate {
		add_field => {
			date_collected => "%{Year}-%{Month}"
		}
	}
	}
	if (("" in [Year]) and ("" in [Month]) and ("" in [Day])) {
	mutate {
		add_field => {
			date_collected => "%{Year}-%{Month}-%{Day}"
		}
	}
	}

	
	date {
		match => [ "date_collected", "yyyy-MM", "yyyy-MM-dd", "yyyy"]
	}

	mutate {
      add_field => {
        "[location][lat]" => "%{Latitude}"
        "[location][lon]" => "%{Longitude}"
      }
    }
    mutate {
		convert => {
			"[location][lat]" => "float"
			"[location][lon]" => "float"
		}
	}

	
	
}

output {
	stdout {codec => rubydebug}
	elasticsearch {
		index => "earth_events"		
		document_type => "quake"
	}
}
