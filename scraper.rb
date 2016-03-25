#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = WikiData::Category.new( 'Categorie:Sint-Maartens politicus (land)', 'nl').member_titles |
        WikiData::Category.new( 'Categorie:Minister-president van Sint Maarten', 'nl').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { nl: names })
