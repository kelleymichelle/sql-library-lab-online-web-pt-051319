def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
  FROM books
  WHERE series_id = 1
  ORDER BY year ASC;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto
  FROM characters
  ORDER BY LENGTH(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
 "SELECT species, COUNT(species)
 FROM characters
 GROUP BY species
 ORDER BY COUNT(species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM series
  INNER JOIN subgenres ON series.author_id = subgenres.id
  INNER JOIN authors ON series.author_id = authors.id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series
  INNER JOIN characters
  WHERE characters.species = 'human'
  GROUP BY series.title;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT charcters.name
  FROM characters
  INNER JOIN character_books
  WHERE characters.id = character_books.character_id;"
end
