---creating indexes
CREATE INDEX idx_animals_species_id ON Animals (species_id);
CREATE INDEX Animals_status_id_idx ON Animals(status_id);
CREATE INDEX Animals_exhibit_id_idx ON Animals(exhibit_id);
CREATE INDEX Animals_created_by_idx ON Animals( created_by);
CREATE INDEX Animals_updated_by_idx ON Animals(updated_by);
CREATE INDEX Animal_Feeding_food_id_idx ON Animal_Feeding(food_id);