// Jack + Yvonna
CREATE (Jack:Person {name:'John Schuyler'})
CREATE (Yvonne:Person {name:'Yvonne Schuyler'})
CREATE (Lara:Person {name:'Lara Schuyler'})

// Orlandics
CREATE (Richard:Person {name:'Richard Orlandic'})
CREATE (Morgian:Person {name:'Morgian the Fair'})
CREATE (Sabrael:Person {name: 'Sabrael'})
CREATE (Anna:Person {name:'Anna Schuyler', nee:['Orlandic']})
CREATE (Thor:God {name:'Thor Odinson'})
CREATE (Marcus:Person {name:'Marcus Orlandic'})
CREATE (Waterhouse:Person {name:'Rachel Waterhouse'})

// Schuylers
CREATE (Mary:Person {name:'Mary Schuyler', nee:['Orlandic Thorsdottir']})
CREATE (Zach:Person {name:'Zachary Schuyler'})
CREATE (Tommy:Person {name:'Thomas Schuyler'})
CREATE (Finial:Person {name:'Finial Schuyler'})
CREATE (Haly:Person {name:'Halcyon Schuyler'})
CREATE (Lyric:Person {name:'Lyric Schuyler'})
CREATE (Vespertine:Person {name:'Vespertine Schuyler'})
CREATE (MarcusJr:Person {name:'Marcus Schuyler'})
CREATE (Anthem:Person {name:'Anthem Schuyler'})

// Ramseys
CREATE (Emmett:Person {name:'Emmett Ramsey'})
CREATE (Alexandra:Person {name:'Alexandra Ramsey'})
CREATE (Deandre:Person {name:'Deandre Ramsey'})
CREATE (Jules:Person {name:'Jules Ramsey'})
CREATE (Kayla:Person {name:'Kayla Ramsey'})
CREATE (Vincent:Person {name:'Vincent Ramsey'})

// Zach/Jules' Schuylers
CREATE (Elaina:Person {name:'Elaina Schuyler'})
CREATE (JJ:Person {name:'John Schuyler, Jr.'})
CREATE (Niobe:Person {name:'Niobe Schuyler'})
CREATE (Naomi:Person {name:'Naomi Schuyler'})

// Mavens
CREATE (GW:Person {name:'The Great Wing'})
CREATE (Greg:Person {name:'Gregory Maven'})
CREATE (Ephram:Person {name:'Ephram Maven'})
CREATE (Eyota:Person {name:'Eyota'})
CREATE (Starling:Person {name:'Starling'})
CREATE (DaisyC:Person {name:'Daisy Cockburn'})
CREATE (Regina:Person {name:'Regina Cockburn'})
CREATE (Xavier:Person {name:'Xavier Cockburn-Maven'})
CREATE (Steren:Person {name: 'Steren Maven', nee:['Arts']})
CREATE (Nicolas:Person {name: 'Nicolas Maven'})
CREATE (Bonita:Person {name: 'Bonita Maven'})

// Daria
CREATE (Daria:Person {name:'Daria Lutrell'})
CREATE (Claire:Person {name:'Claire Sajjadi'})

// Yue
CREATE (Lian:Person {name:'Yue Lian'})
CREATE (Deng:Person {name:'Yue Deng'})
CREATE (Xiang:Person {name:'Yue Xiang'})
CREATE (Changying:Person {name:'Yue Changying'})
CREATE (Fu:Person {name:'Yue Fu'})
CREATE (Zhen:Person {name:'Yue Zhen'})

// Mella
CREATE (Mella:Person {name:'Mella'})
CREATE (Nea:Person {name:'Nea Yue'})

// Yue-Schuyler
CREATE (Mistral:Person {name:'Mistral Yue-Schuyler'})
CREATE (Tynan:Person {name:'Tynan Yue-Schuyler'})
CREATE (Zephyr:Person {name:'Zephyr Yue-Schuyler'})

// Yue-Sajjadi
CREATE (Allen:Person {name:'Allen Yue-Sajjadi'})
CREATE (Antimony:Person {name:'Antimony Yue-Sajjadi'})
CREATE (Ianthe:Person {name:'Ianthe Yue-Sajjadi'})
CREATE (Meili:Person {name:'Meili Yue-Sajjadi'})
CREATE (Xinyi:Person {name:'Xinyi Yue-Sajjadi'})
CREATE (Eowyn:Person {name:'Eowyn Yue-Sajjadi'})
CREATE (Eomir:Person {name:'Eomir Yue-Sajjadi'})

// Cockburn-Schuylers
CREATE (Monique:Person {name:'Monique Cockburn-Schuyler'})
CREATE (Clark:Person {name:'Clark Cockburn-Schuyler'})

// Schuyler-Mavens
CREATE (Sparrow:Person {name:'Sparrow Schuyler-Maven'})

// Hanraats
CREATE (Rini:Person {name:'Rini Hanraats'})

// Schuyler-Hanraats
CREATE (Peregrine:Person {name:'Peregrine Schuyler-Hanraats'})

// Says
CREATE (Woodhouse:Person {name:'Woodhouse Says'})

// Schuyler-Abrego
CREATE (Lillith:Person {name:'Lillith Schuyler-Abrego'})

CREATE
  (Jack)-[:ROMANCE {nature:'MARRIED', active:FALSE}]->(Yvonne),
  (Yvonne)-[:PARENTAL {nature:'MOTHER'}]->(Lara),
  (Jack)-[:PARENTAL {nature:'FATHER'}]->(Lara),
  (Morgian)-[:PARENTAL {nature:'MOTHER'}]->(Anna),
  (Richard)-[:PARENTAL {nature:'FATHER'}]->(Anna),
  (Sabrael)-[:PARENTAL {nature:'STEPMOTHER'}]->(Anna),
  (Morgian)-[:PARENTAL {nature:'MOTHER'}]->(Marcus),
  (Richard)-[:PARENTAL {nature:'FATHER'}]->(Marcus),
  (Sabrael)-[:PARENTAL {nature:'STEPMOTHER'}]->(Marcus),
  (Jack)-[:ROMANCE {nature:'MARRIED', active:TRUE}]->(Anna),
  (Marcus)-[:ROMANCE {nature:'PARTNERED', active:TRUE}]->(Waterhouse),
  (Thor)-[:PATRON {active:TRUE}]->(Anna),
  (Thor)-[:PARENTAL {nature:'FATHER'}]->(Mary),
  (Anna)-[:PARENTAL {nature:'MOTHER'}]->(Mary),
  (Jack)-[:PARENTAL {nature:'STEPFATHER'}]->(Mary),
  (Anna)-[:PARENTAL {nature:'MOTHER'}]->(Zach),
  (Jack)-[:PARENTAL {nature:'FATHER'}]->(Zach),
  (Anna)-[:PARENTAL {nature:'MOTHER'}]->(Finial),
  (Jack)-[:PARENTAL {nature:'FATHER'}]->(Finial),
  (Anna)-[:PARENTAL {nature:'MOTHER'}]->(Tommy),
  (Jack)-[:PARENTAL {nature:'FATHER'}]->(Tommy),
  (Anna)-[:PARENTAL {nature:'MOTHER'}]->(Haly),
  (Jack)-[:PARENTAL {nature:'FATHER'}]->(Haly),
  (Anna)-[:PARENTAL {nature:'MOTHER'}]->(Lyric),
  (Jack)-[:PARENTAL {nature:'FATHER'}]->(Lyric),
  (Anna)-[:PARENTAL {nature:'MOTHER'}]->(Vespertine),
  (Jack)-[:PARENTAL {nature:'FATHER'}]->(Vespertine),
  (Anna)-[:PARENTAL {nature:'MOTHER'}]->(MarcusJr),
  (Jack)-[:PARENTAL {nature:'FATHER'}]->(MarcusJr),
  (Anna)-[:PARENTAL {nature:'MOTHER'}]->(Anthem),
  (Jack)-[:PARENTAL {nature:'FATHER'}]->(Anthem),
  (GW)-[:PARENTAL {nature:'MOTHER'}]->(Ephram),
  (Greg)-[:PARENTAL {nature:'FATHER'}]->(Ephram),
  (GW)-[:PARENTAL {nature:'MOTHER'}]->(Eyota),
  (GW)-[:PARENTAL {nature:'MOTHER'}]->(Starling),
  (DaisyC)-[:ROMANCE {nature:'PARTNERED', active:FALSE}]->(Ephram),
  (DaisyC)-[:PARENTAL {nature:'MOTHER'}]->(Regina),
  (Ephram)-[:PARENTAL {nature:'FATHER'}]->(Regina),
  (DaisyC)-[:PARENTAL {nature:'MOTHER'}]->(Xavier),
  (Ephram)-[:PARENTAL {nature:'FATHER'}]->(Xavier),
  (Ephram)-[:ROMANCE {nature:'PARTNERED', active:TRUE}]->(Steren),
  (Steren)-[:PARENTAL {nature:'MOTHER'}]->(Nicolas),
  (Ephram)-[:PARENTAL {nature:'FATHER'}]->(Nicolas),
  (Steren)-[:PARENTAL {nature:'MOTHER'}]->(Bonita),
  (Ephram)-[:PARENTAL {nature:'FATHER'}]->(Bonita),
  (Daria)-[:PARENTAL {nature:'MOTHER'}]->(Claire),
  (Lian)-[:ROMANCE {nature:'MARRIED', active:FALSE}]->(Deng),
  (Lian)-[:PARENTAL {nature:'MOTHER'}]->(Xiang),
  (Deng)-[:PARENTAL {nature:'FATHER'}]->(Xiang),
  (Lian)-[:PARENTAL {nature:'MOTHER'}]->(Changying),
  (Deng)-[:PARENTAL {nature:'FATHER'}]->(Changying),
  (Lian)-[:PARENTAL {nature:'MOTHER'}]->(Fu),
  (Deng)-[:PARENTAL {nature:'FATHER'}]->(Fu),
  (Lian)-[:PARENTAL {nature:'MOTHER'}]->(Zhen),
  (Deng)-[:PARENTAL {nature:'FATHER'}]->(Zhen),
  (Mella)-[:PARENTAL {nature:'MOTHER'}]->(Nea),
  (Xiang)-[:PARENTAL {nature:'FATHER'}]->(Nea),
  (Nea)-[:ROMANCE {nature:'MARRIED', active:FALSE}]->(Tommy),
  (Nea)-[:PARENTAL {nature:'MOTHER'}]->(Mistral),
  (Tommy)-[:PARENTAL {nature:'FATHER'}]->(Mistral),
  (Nea)-[:PARENTAL {nature:'MOTHER'}]->(Tynan),
  (Tommy)-[:PARENTAL {nature:'FATHER'}]->(Tynan),
  (Nea)-[:PARENTAL {nature:'MOTHER'}]->(Zephyr),
  (Tommy)-[:PARENTAL {nature:'FATHER'}]->(Zephyr),
  (Regina)-[:ROMANCE {nature:'MARRIED', active:TRUE}]->(Tommy),
  (Regina)-[:PARENTAL {nature:'MOTHER'}]->(Monique),
  (Tommy)-[:PARENTAL {nature:'FATHER'}]->(Monique),
  (Regina)-[:PARENTAL {nature:'MOTHER'}]->(Clark),
  (Tommy)-[:PARENTAL {nature:'FATHER'}]->(Clark),
  (Claire)-[:ROMANCE {nature:'MARRIED', active:TRUE}]->(Xiang)

// // Yue-Sajjadi
// CREATE (Allen:Person {name:'Allen Yue-Sajjadi'})
// CREATE (Antimony:Person {name:'Antimony Yue-Sajjadi'})
// CREATE (Ianthe:Person {name:'Ianthe Yue-Sajjadi'})
// CREATE (Meili:Person {name:'Meili Yue-Sajjadi'})
// CREATE (Xinyi:Person {name:'Xinyi Yue-Sajjadi'})
// CREATE (Eowyn:Person {name:'Eowyn Yue-Sajjadi'})
// CREATE (Eomir:Person {name:'Eomir Yue-Sajjadi'})

// // Yue-Schuyler
// CREATE (Mistral:Person {name:'Mistral Yue-Schuyler'})
// CREATE (Tynan:Person {name:'Tynan Yue-Schuyler'})
// CREATE (Zephyr:Person {name:'Zephyr Yue-Schuyler'})

// // Cockburn-Schuylers
// CREATE (Monique:Person {name:'Monique Cockburn-Schuyler'})
// CREATE (Clark:Person {name:'Clark Cockburn-Schuyler'})

// // Schuyler-Mavens
// CREATE (Sparrow:Person {name:'Sparrow Schuyler-Maven'})

// // Hanraats
// CREATE (Rini:Person {name:'Rini Hanraats'})

// // Schuyler-Hanraats
// CREATE (Peregrine:Person {name:'Peregrine Schuyler-Hanraats'})
