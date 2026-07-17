
// ===== Nodes =====

MERGE (:Person {name: "Marie Curie"});
MERGE (:Person {name: "Pierre Curie"});
MERGE (:Place {name: "Warsaw"});
MERGE (:Place {name: "Poland"});
MERGE (: Prize {name: "Nobel Prize in Chemistry"});
MERGE (: Prize {name: "Nobel Prize in Physics"});
MERGE (:Profession {name: "Physicist"})

// ===== Properties =====

MATCH (p:Prize {name: "Nobel Prize in Physics"})
SET p.year = 1903

// Or we can simply do that in one line when creating node using the following command:
// MERGE (: Prize {name: "Nobel Prize in Physics", year: 1903});

// ===== Relationships =====

MATCH (m:Person {name: "Marie Curie"})
MATCH (w:Place {name: "Warsaw"})
MERGE (m)-[:BORN_IN]->(w)

MATCH (a:Person {name: "Marie Curie"})
MATCH (b:Person {name: "Pierre Curie"})
MERGE (a)-[:WIFE_OF]->(b)

MATCH (a:Person {name: "Marie Curie"})
MATCH (b:Prize {name: "Nobel Prize in Physics"})
MERGE (a)-[:WON]->(b)

MATCH (a:Person {name: "Pierre Curie"})
MATCH (b:Prize {name: "Nobel Prize in Physics"})
MERGE (a)-[:WON]->(b)

MATCH (a:Person {name: "Marie Curie"})
MATCH (b:Prize {name: "Nobel Prize in Chemistry"})
MERGE (a)-[:WON]->(b)

MATCH (a:Person {name: "Marie Curie"})
MATCH (b:Profession {name: "Physicist"})
MERGE (a)-[:HAS_PROFESSION]->(b)

// ===== DELETE =====

// MATCH ()-[r:RELATIONSHIP_NAME]->()
// DELETE r

// ===== Verification =====
MATCH (n) RETURN count(n);            // expected: 7
MATCH ()-[r]->() RETURN count(r);     // expected: 7