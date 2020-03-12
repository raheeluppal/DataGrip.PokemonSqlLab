SELECT
pokemons.name AS 'Pokemon Name',
trainers.trainername AS 'Trainer Name',
pokemon_trainer.pokelevel AS 'LEVEL',
ptype.name AS 'Primary Type',
stype.name AS 'Secondary Type'
FROM pokemon_trainer
JOIN pokemons ON pokemon_trainer.pokemon_id = pokemons.id
JOIN trainers ON trainers.trainerID = pokemon_trainer.trainerID
JOIN types AS ptype ON ptype.id = pokemons.primary_type
JOIN types AS stype ON stype.id = pokemons.secondary_type
ORDER BY pokemon_trainer.pokelevel;


I believe measuring the trainers by their pokelevel is the best way to measure the stongest beacause at the end of the day,
the trainer with the strongest pokemons will be the strongest.
