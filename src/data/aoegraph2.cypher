MATCH
  (Damian:Person {name:"Damian Hellekar"})
CREATE
  (Keisuke:Person {name:"Yamata Keisuke", short:"Keisuke"}),
  (Nikki:Person {name:"Nicole Knight", short:"Nikki"}),
  (Achille:Person {name:"Achille Hellekar"}),

    (Achille)-[:PARENTAL {nature:"FATHER"}]->(Damian),
      (Claudius:Person {name:"Claudius Hellekar"}),
      (Damian)-[:PARENAL {nature:"FATHER"}]->(Claudius),

      (Jane:Person {name:"Jane Hellekar", short:"Jane"}),
      (Damian)-[:PARENTAL {nature:"FATHER"}]->(Jane),

    (Alceus:Person {name:"Alceus Hellekar"}),
    (Achille)-[:PARENTAL {nature:"FATHER"}]->(Alceus),

      (Catesby:Person {name:"Catesby Hellekar"}),
      (Alceus)-[:PARENTAL {nature:"FATHER"}]->(Catesby),

        (Lorne:Person {name:"Lorne Hellekar", rank:"Admiral"}),
        (Catesby)-[:PARENTAL {nature:"FATHER"}]->(Lorne),

        (Oliandra:Person {name:"Oliandra Kava", formerNames:["Oliandra Hellekar"]}),
        (Catesby)-[:PARENTAL {nature:"FATHER"}]->(Oliandra),

          (Athena:Person {name:"Athena Kava"}),
          (Athena)-[:ROMANCE {nature:"MARRIED"}]->(Nikki)
RETURN
  Nikki
