# Day 1-2: Triple Extraction — Marie Curie
# Source content: "Marie Curie was a physicist born in Warsaw, Poland. She won the Nobel Prize in Physics in 1903, which she shared with her husband Pierre Curie. She later won a second Nobel Prize, this time in Chemistry. Warsaw is the capital of Poland."

```
(:Person {name: "Marie Curie"})-[:BORN_IN]->(:Place{name:"Warsaw"}) 
(:Place {name: "Warsaw"})-[:CAPITAL_OF]->(:Place{name:"Poland"}) 
(:Person {name: "Marie Curie"})-[:WIFE_OF]->(:Person{name:"Pierre Curie"})
(:Person {name: "Marie Curie"})-[:HAS_PROFESSION]->(:Profession{name:"Physicist"}) 
(:Person {name: "Marie Curie"})-[:WON]->(:Prize{name:"Nobel Prize in Physics",year:1903})
(:Person {name: "Pierre Curie"})-[:WON]->(:Prize{name:"Nobel Prize in Physics",year:1903}) (:Person {name: "Marie Curie"})-[:WON]->(:Prize{name:"Nobel Prize in Chemistry"})

```
