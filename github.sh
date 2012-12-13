curl -s -X GET https://status.github.com/api/status.json | underscore select .status --outfmt text
