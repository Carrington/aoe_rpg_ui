CREATE
  (Jack:Person {name:"John Schuyler", short:"Jack"}),
  (Yvonne:Person {name:"Yvonne Schuyler", short:"Yvonne", alive:FALSE}),
  (Jack)-[:ROMANCE {nature:"MARRIED", active:FALSE}]->(Yvonne),

    (Lara:Person {name:"Lara Schuyler", short:"Lara", alive:FALSE}),
    (Jack)-[:PARENTAL {nature:"FATHER"}]->(Lara),
    (Yvonne)-[:PARENTAL {nature:"MOTHER"}]->(Lara),

  (Richard:Person {name:"Richard Orlandic", short:"Richard", alive:FALSE}),
  (Morgian:Person {name:"Morgian the Fair", short:"Morgian", alive:FALSE}),
  (Sabrael:Person {name:"Sabrael", short:"Sabrael"}),
  (Richard)-[:ROMANCE {nature:"MARRIED", active:FALSE}]->(Sabrael),

    (Anna:Person {name:"Anna Schuyler", formerNames:["Anna Orlandic"], short:"Anna"}),
    (Richard)-[:PARENTAL {nature:"FATHER"}]->(Anna),
    (Sabrael)-[:PARENTAL {nature:"STEP-MOTHER"}]->(Anna),
    (Morgian)-[:PARENTAL {nature:"MOTHER"}]->(Anna),

    (Jack)-[:ROMANCE {nature:"SOUL"}]->(Anna),

    (Thor:God {name:"Thor Odinson", short:"Thor"}),
    (Anna)-[:PATRON {nature:"INVOKER"}]->(Thor),

      (Mary:Person {name:"Mary Thorsdottir Schuyler", formerNames:["Mary Thorsdottir Orlandic"], short:"Mary"}),
      (Thor)-[:PARENTAL {nature:"FATHER"}]->(Mary),
      (Jack)-[:PARENTAL {nature:"STEP-FATHER"}]->(Mary),
      (Anna)-[:PARENTAL {nature:"MOTHER"}]->(Mary),

      (Zach:Person {name:"Zachary Schuyler", short:"Zach"}),
      (Jack)-[:PARENTAL {nature:"FATHER"}]->(Zach),
      (Anna)-[:PARENTAL {nature:"MOTHER"}]->(Zach),

      (Tommy:Person {name:"Tommy Schuyler", short:"Tommy"}),
      (Jack)-[:PARENTAL {nature:"FATHER"}]->(Tommy),
      (Anna)-[:PARENTAL {nature:"MOTHER"}]->(Tommy),

      (Finial:Person {name:"Finial Schuyler", short:"Finial"}),
      (Jack)-[:PARENTAL {nature:"FATHER"}]->(Finial),
      (Anna)-[:PARENTAL {nature:"MOTHER"}]->(Finial),

      (Halcyon:Person {name:"Halcyon Schuyler", short:"Hal"}),
      (Jack)-[:PARENTAL {nature:"FATHER"}]->(Halcyon),
      (Anna)-[:PARENTAL {nature:"MOTHER"}]->(Halcyon),

      (Lyric:Person {name:"Lyric Schuyler", short:"Lyric"}),
      (Jack)-[:PARENTAL {nature:"FATHER"}]->(Lyric),
      (Anna)-[:PARENTAL {nature:"MOTHER"}]->(Lyric),

      (Vespertine:Person {name:"Vespertine Schuyler", short:"Ves", alive:FALSE}),
      (Jack)-[:PARENTAL {nature:"FATHER"}]->(Vespertine),
      (Anna)-[:PARENTAL {nature:"MOTHER"}]->(Vespertine),

      (MarcusJr:Person {name:"Marcus Schuyler Jr.", short:"Marcus"}),
      (Jack)-[:PARENTAL {nature:"FATHER"}]->(MarcusJr),
      (Anna)-[:PARENTAL {nature:"MOTHER"}]->(MarcusJr),

      (Anthem:Person {name:"Anthem Schuyler", short:"Anthem"}),
      (Jack)-[:PARENTAL {nature:"FATHER"}]->(Anthem),
      (Anna)-[:PARENTAL {nature:"MOTHER"}]->(Anthem),

    (Marcus:Person {name:"Marcus Orlandic", short:"Marcus Sr."}),
    (Richard)-[:PARENTAL {nature:"FATHER"}]->(Marcus),
    (Sabrael)-[:PARENTAL {nature:"STEP-MOTHER"}]->(Marcus),
    (Morgian)-[:PARENTAL {nature:"MOTHER"}]->(Marcus),

    (Rachel:Person {name:"Rachel Leah Waterhouse", short:"Rachel"}),
    (Rachel)-[:ROMANCE {nature:"PARTNERED"}]->(Marcus),

    (Emmett:Person {name:"Emmett Ramsey", short:"Emmett", alive:FALSE}),
    (AlexR:Person {name:"Alexandra Ramsey", short:"Alex R."}),
    (Emmett)-[:ROMANCE {nature:"MARRIED"}]->(Alex),

    (Deandre:Person {name:"Deandre Ramsey", short:"Deandre", alive:FALSE}),
    (Emmett)-[:PARENTAL {nature:"FATHER"}]->(Deandre),
    (AlexR)-[:PARENTAL {nature:"MOTHER"}]->(Deandre),

    (Jules:Person {name:"Julia Schuyler", formerNames:["Julia Ramsey"], alive:FALSE, short:"Jules"}),
    (Emmett)-[:PARENTAL {nature:"FATHER"}]->(Jules),
    (AlexR)-[:PARENTAL {nature:"MOTHER"}]->(Jules),
    (Jules)-[:ROMANCE {nature:"MARRIED", active:FALSE}]->(Zach),

      (Elaina:Person {name:"Elaina Schuyler", short:"Elaina"}),
      (Zach)-[:PARENTAL {nature:"FATHER"}]->(Elaina),
      (Jules)-[:PARENTAL {nature:"MOTHER"}]->(Elaina),

      (JJ:Person {name:"John Schuyler, Jr.", short:"JJ"}),
      (Zach)-[:PARENTAL {nature:"FATHER"}]->(JJ),
      (Jules)-[:PARENTAL {nature:"MOTHER"}]->(JJ),

      (Niobe:Person {name:"Niobe Schuyler", short:"Niobe"}),
      (Zach)-[:PARENTAL {nature:"FATHER"}]->(Niobe),
      (Jules)-[:PARENTAL {nature:"MOTHER"}]->(Niobe),

      (Naomi:Person {name:"Naomi Schuyler", short:"Naomi"}),
      (Zach)-[:PARENTAL {nature:"FATHER"}]->(Naomi),
      (Jules)-[:PARENTAL {nature:"MOTHER"}]->(Naomi),

    (Kayla:Person {name:"Kayla Mayla Bayla Fee Fai Fo Fayla Kayla! Ramsey", short:"Kayla"}),
    (Emmett)-[:PARENTAL {nature:"FATHER"}]->(Kayla),
    (AlexR)-[:PARENTAL {nature:"MOTHER"}]->(Kayla),

    (Vincent:Person {name:"Vincent Ramsey", short:"Vincent"}),
    (Emmett)-[:PARENTAL {nature:"FATHER"}]->(Vincent),
    (AlexR)-[:PARENTAL {nature:"MOTHER"}]->(Vincent),

    (DaisyC:Person {name:"Daisy Cockburn", short:"Daisy Cockburn", alive:FALSE}),
    (Steren:Person {name:"Steren Arts", short:"Steren"}),

    (TGW:Person {name:"The Great Wing", alive:FALSE, short:"The Great Wing"}),
    (EdwardMaven:Person {name:"Edward Maven", alive:FALSE}),
    (Ephram:Person {name:"Ephram Maven", short:"Ephram"}),
    (EdwardMaven)-[:PARENTAL {nature:"FATHER"}]->(Ephram),
    (TGW)-[:PARENTAL {nature:"MOTHER"}]->(Ephram),
    (Ephram)-[:ROMANCE {nature:"DATED"}]->(Mary),
    (Ephram)-[:ROMANCE {nature:"PARTNERED"}]->(DaisyC),
    (Ephram)-[:ROMANCE {nature:"MARRIED"}]->(Steren),

      (Regina:Person {name:"Regina May Cockburn", formerNames:["Regina Cockburn-Maven"], short:"Regina"}),
      (Ephram)-[:PARENTAL {nature:"FATHER"}]->(Regina),
      (DaisyC)-[:PARENTAL {nature:"MOTHER"}]->(Regina),

        (Monique:Person {name:"Monique Cockburn-Schuyler", short:"Monique"}),
          (Tommy)-[:PARENTAL {nature:"FATHER"}]->(Monique),
          (Regina)-[:PARENTAL {nature:"MOTHER"}]->(Monique),

        (Clark:Person {name:"Clark Cockburn-Schuyler", short:"Clark"}),
          (Tommy)-[:PARENTAL {nature:"FATHER"}]->(Clark),
          (Regina)-[:PARENTAL {nature:"MOTHER"}]->(Clark),

      (Xavier:Person {name:"Xavier Edward Cockburn-Maven", short:"Xavier"}),
      (Ephram)-[:PARENTAL {nature:"FATHER"}]->(Xavier),
      (DaisyC)-[:PARENTAL {nature:"MOTHER"}]->(Xavier),

      (Sparrow:Person {name:"Sparrow Schuyler", short:"Sparrow", formerNames:["Sparrow Schulyer-Maven"]}),
      (Ephram)-[:PARENTAL {nature:"FATHER"}]->(Sparrow),
      (Mary)-[:PARENTAL {nature:"MOTHER"}]->(Sparrow),

      (Nicolas:Person {name:"Nicolas Maven", short:"Nicolas Maven"}),
      (Ephram)-[:PARENTAL {nature:"FATHER"}]->(Nicolas),
      (Steren)-[:PARENTAL {nature:"MOTHER"}]->(Nicolas),

      (Bonnie:Person {name: "Bonnie Maven", short:"Bonnie Maven"}),
      (Ephram)-[:PARENTAL {nature:"FATHER"}]->(Bonnie),
      (Steren)-[:PARENTAL {nature:"MOTHER"}]->(Bonnie),

    (Eyota:Person {name:"Eyota Maven", short:"Eyota"}),
    (TGW)-[:PARENTAL {nature:"MOTHER"}]->(Eyota),

    (Starling:Person {name:"Starling", short:"Starling", alive:FALSE}),
    (TGW)-[:PARENTAL {nature:"MOTHER"}]->(Starling),

    (Daria:Person {name:"Daria Lutrell", short:"Daria"}),
      (Claire:Person {name:"Claire Sajjadi", short:"Claire"}),
      (Daria)-[:PARENTAL {natuer:"MOTHER"}]->(Claire),

      (Danica:Person {name:"Danica Lutrell", short:"Danica", aliases:["Danica Johannson"], alive:FALSE}),
      (Daria)-[:PARENTAL {natuer:"MOTHER"}]->(Danica),

    (Mella:Person {name:"Mella, Courageous Daughter", short:"Mella"}),

    (Layne:Person {name:"Layne Dennison", short:"Layne", alive:FALSE}),
    (Rebecca:Person {name:"Rebecca Singleton", short:"Rebel"}),
    (Layne)-[:ROMANCE {nature:"MARRIED", active:FALSE}]->(Rebecca),

      (Cora:Person {name:"Cora Dennison-Singleton", short:"Cora"}),
      (Layne)-[:PARENTAL {nature:"FATHER"}]->(Cora),
      (Rebecca)-[:PARENTAL {nature:"MOTHER"}]->(Cora),

      (Dalton:Person {name:"Dalton Dennison-Singelton", short:"Dalton"}),
      (Layne)-[:PARENTAL {nature:"FATHER"}]->(Dalton),
      (Rebecca)-[:PARENTAL {nature:"MOTHER"}]->(Dalton),

    (YueLian:Person {name:"Yue Lian", short:"Xiang's Mom", alive:FALSE}),
    (YueDeng:Person {name:"Yue Deng", short:"Xiang's Dad", alive:FALSE}),
    (YueLian)-[:ROMANCE {nature:"MARRIED", active:FALSE}]->(YueDeng),
      (Xiang:Person {name:"Yue Xiang", short:"Xiang"}),
      (YueDeng)-[:PARENTAL {nature:"FATHER"}]->(Xiang),
      (YueLian)-[:PARENTAL {nature:"MOTHER"}]->(Xiang),
      (Claire)-[:ROMANCE {nature:"MARRIED"}]->(Xiang),

        (Nea:Person {name:"Yue Nea", short:"Nea"}),
        (Xiang)-[:PARENTAL {nature:"FATHER"}]->(Nea),
        (Mella)-[:PARENTAL {nature:"MOTHER"}]->(Nea),
        (Tommy)-[:ROMANCE {nature:"MARRIED", active:FALSE}]->(Nea),

          (Mistral:Person {name:"Mistral Yue-Schuyler", short:"Mistral"}),
          (Hera:God {name:"Hera"}),
          (Hera)-[:PATRON {nature:"INVOKER"}]->(Mistral),
          (Tommy)-[:PARENTAL {nature:"FATHER"}]->(Mistral),
          (Nea)-[:PARENTAL {nature:"MOTHER"}]->(Mistral),

          (Tynan:Person {name:"Tynan Yue-Schuyler", short:"Tynan"}),
          (Tommy)-[:PARENTAL {nature:"FATHER"}]->(Tynan),
          (Nea)-[:PARENTAL {nature:"MOTHER"}]->(Tynan),

          (Zephyr:Person {name:"Zephyr Yue-Schuyler", short:"Zephyr"}),
          (Tommy)-[:PARENTAL {nature:"FATHER"}]->(Zephyr),
          (Nea)-[:PARENTAL {nature:"MOTHER"}]->(Zephyr),

        (Allen:Person {name:"Allen Yue-Sajjadi", short:"Allen"}),
        (Xiang)-[:PARENTAL {nature:"FATHER"}]->(Allen),
        (Claire)-[:PARENTAL {nature:"MOTHER"}]->(Allen),
        (Allen)-[:ROMANCE {nature:"MARRIED"}]->(Cora),

          (Eden:Person {name:"Eden Ysds", short:"Eden"}),
          (Allen)-[:PARENTAL {nature:"FATHER"}]->(Eden),
          (Cora)-[:PARENTAL {nature:"MOTHER"}]->(Eden),
          (Eden)-[:ROMANCE {nature:"PARTNERED"}]->(Xavier),

        (Antimony:Person {name:"Antimony Yue-Sajjadi", short:"Antimony"}),
        (Xiang)-[:PARENTAL {nature:"FATHER"}]->(Antimony),
        (Claire)-[:PARENTAL {nature:"MOTHER"}]->(Antimony),

        (Ianthe:Person {name:"Ianthe Yue-Sajjadi", short:"Ianthe"}),
        (Xiang)-[:PARENTAL {nature:"FATHER"}]->(Ianthe),
        (Claire)-[:PARENTAL {nature:"MOTHER"}]->(Ianthe),

        (Meili:Person {name:"Meili Yue-Sajjadi", short:"Meili"}),
        (Xiang)-[:PARENTAL {nature:"FATHER"}]->(Meili),
        (Claire)-[:PARENTAL {nature:"MOTHER"}]->(Meili),

        (Xinyi:Person {name:"Xinyi Yue-Sajjadi", short:"Xinyi"}),
        (Xiang)-[:PARENTAL {nature:"FATHER"}]->(Xinyi),
        (Claire)-[:PARENTAL {nature:"MOTHER"}]->(Xinyi),

        (Eowyn:Person {name:"Eowyn Yue-Sajjadi", short:"Eo"}),
        (Xiang)-[:PARENTAL {nature:"FATHER"}]->(Eowyn),
        (Claire)-[:PARENTAL {nature:"MOTHER"}]->(Eowyn),

        (Eomir:Person {name:"Eomir Yue-Sajjadi", short:"Eomir"}),
        (Xiang)-[:PARENTAL {nature:"FATHER"}]->(Eomir),
        (Claire)-[:PARENTAL {nature:"MOTHER"}]->(Eomir),

      (YueChangying:Person {name:"Yue Changying", short:"Changying"}),
      (YueDeng)-[:PARENTAL {nature:"FATHER"}]->(YueChangying),
      (YueLian)-[:PARENTAL {nature:"MOTHER"}]->(YueChangying),

      (YueFu:Person {name:"Yue Fu", short:"Fu"}),
      (YueDeng)-[:PARENTAL {nature:"FATHER"}]->(YueFu),
      (YueLian)-[:PARENTAL {nature:"MOTHER"}]->(YueFu),

      (YueZhen:Person {name:"Yue Zhen", short:"Zhen"}),
      (YueDeng)-[:PARENTAL {nature:"FATHER"}]->(YueZhen),
      (YueLian)-[:PARENTAL {nature:"MOTHER"}]->(YueZhen),

      (Rini:Person {name:"Rini Hannraats", short:"Rini"}),
        (Peregrine:Person {name:"Peregrine Hannraats", short:"Peregrine"}),
        (Rini)-[:PARENTAL {nature:"FATHER"}]->(Peregrine),
        (Mary)-[:PARENTAL {nature:"MOTHER"}]->(Peregrine),

      (Kirstie:Person {name:"Kirstie McQueen", short:"Kirstie"}),
      (Thomas:Person {name:"Thomas Artisan"}),
      (Kirstie)-[:ROMANCE {nature:"MARRIED"}]->(Thomas),

        (AmberPolson:Person {name:"Amber Polson", formerNames:["Amber McQueen"]}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(AmberPolson),

        (Ruby:Person {name:"Ruby McQueen", short:"Ruby", birthYear:2051}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Ruby),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Ruby),

        (Chalcedony:Person {name:"Chalcedony McQueen", short:"Chalcedony", birthYear:2061}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Chalcedony),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Chalcedony),

        (Carnelian:Person {name:"Carnelian McQueen", short:"Carnelian", birthYear:2083}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Carnelian),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Carnelian),

        (Kyanite:Person {name:"Kyanite McQueen", short:"Kyanite", birthYear:2084}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Kyanite),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Kyanite),
        (Kyanite)-[:ROMANCE {nature:"MARRIED"}]->(Meili),

        (Beryl:Person {name:"Chrysoberyl McQueen", short:"Beryl", birthYear:2180}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Beryl),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Beryl),

        (Nephrite:Person {name:"Nephrite McQueen", birthYear:2087}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Nephrite),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Nephrite),

        (Sapphire:Person {name:"Sapphire McQueen", birthYear:2092}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Sapphire),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Sapphire),

        (Aquamarine:Person {name:"Aquamarine McQueen", birthYear:2095}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Aquamarine),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Aquamarine),

        (Jadeite:Person {name:"Jadeite McQueen", birthYear:2101}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Jadeite),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Jadeite),

        (Pearl:Person {name:"Pearl McQueen", birthYear:2103}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Pearl),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Pearl),

        (Emerald:Person {name:"Emerald McQueen", birthYear:2115}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Emerald),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Emerald),

        (Diopside:Person {name:"Diopside McQueen", birthYear:2119}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Diopside),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Diopside),

        (Opal:Person {name:"Opal McQueen", birthYear:2128}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Opal),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Opal),

        (Amethyst:Person {name:"Amethyst McQueen", birthYear:2138}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Amethyst),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Amethyst),

        (Ametrine:Person {name:"Ametrine McQueen", birthYear:2140}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Ametrine),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Ametrine),

        (Rose:Person {name:"Rose McQueen", birthYear:2143}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Rose),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Rose)

        (Citrine:Person {name:"Citrine McQueen", birthYear:2145}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Citrine),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Citrine)

        (Jasper:Person {name:"Jasper McQueen", birthYear:2147}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Jasper),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Jasper),

        (Larimar:Person {name:"Larimar McQueen", birthYear:2153}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Larimar),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Larimar),

        (Peridot:Person {name:"Peridot McQueen", birthYear:2155}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Peridot),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Peridot),

        (Alibite:Person {name:"Alibite McQueen", birthYear:2158}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Alibite),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Alibite),

        (Labradorite:Person {name:"Labradorite McQueen", birthYear:2159}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Labradorite),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Labradorite),

        (Moonstone:Person {name:"Moonstone McQueen", birthYear:2161}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Moonstone),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Moonstone),

        (Sunstone:Person {name:"Sunstone McQueen", birthYear:2164}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Sunstone),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Sunstone),

        (Amazonite:Person {name:"Amazonite McQueen", birthYear:2165}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Amazonite),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Amazonite),

        (Orthoclase:Person {name:"Orthoclase McQueen", birthYear:2167}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Orthoclase),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Orthoclase),

        (Sanidine:Person {name:"Sanidine McQueen", birthYear:2169}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Sanidine),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Sanidine),

        (Alexandrite:Person {name:"Alexandrite McQueen", birthYear:2170}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Alexandrite),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Alexandrite),

        (Topaz:Person {name:"Topaz McQueen", birthYear:2172}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Topaz),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Topaz),

        (Tourmaline:Person {name:"Tourmaline McQueen", birthYear:2175}),
        (Kirstie)-[:PARENTAL {nature:"MOTHER"}]->(Tourmaline),
        (Thomas)-[:PARENTAL {nature:"FATHER"}]->(Tourmaline),

      (Jeremy:Person {name:"Jeremy Allen", alive:FALSE, short:"Jeremy"}),
      (Tara:Person {name:"Tara Allen", short:"Tara"}),
      (Jeremy)-[:ROMANCE {nature:"MARRIED"}]->(Tara),

        (MaeYing:Person {name:"Mae-Ying Allen", formerNames:["Mae-Ying Buttercup Allen"], alive:FALSE}),
        (Jeremy)-[:PARENTAL {nature:"FATHER", adopted:TRUE}]->(MaeYing),
        (Tara)-[:PARENTAL {nature:"MOTHER", adopted:TRUE}]->(MaeYing),

        (Jin:Person {name:"Jintara Niva Allen", short:"Jin"}),
        (Tara)-[:PARENTAL {nature:"MOTHER"}]->(Jin),
        (Marcus)-[:PARENTAL {nature:"FATHER", biologicalOnly:TRUE}]->(Jin),
        (Jin)-[:ROMANCE {nature:"MARRIED"}]->(Ianthe),

          (Matika:Person {name:"Matika Marie Ysa", short:"Matika"}),
          (Jin)-[:PARENTAL {nature:"MOTHER"}]->(Matika),
          (Ianthe)-[:PARENTAL {nature:"MOTHER"}]->(Matika),
          (JJ)-[:ROMANCE {nature:"MARRIED"}]->(Matika),

            (Woodhouse:Person {name:"Woodhouse Julius Says", short:"Woodhouse"}),
            (JJ)-[:PARENTAL {nature:"FATHER"}]->(Woodhouse),
            (Matika)-[:PARENTAL {nature:"MOTHER"}]->(Woodhouse),

          (Charm:Person {name:"Charm Yihwa Ysa"}),
          (Jin)-[:PARENTAL {nature:"MOTHER"}]->(Charm),
          (Ianthe)-[:PARENTAL {nature:"MOTHER"}]->(Matika),

        (Raven:Person {name:"Darth Raven Allen", formerNames:["Raven Allen"], short:"Raven"}),
        (Tara)-[:PARENTAL {nature:"MOTHER", adopted:TRUE}]->(Raven),

        (Kadence:Person {name:"Kadence Pimpernel Allen", formerNames:["Kadence Allen"], short:"Kadence"}),
        (Tara)-[:PARENTAL {nature:"MOTHER", adopted:TRUE}]->(Kadence),

        (Surin:Person {name:"Surin Inigo Allen", short:"Surin"}),
        (Tara)-[:PARENTAL {nature:"MOTHER"}]->(Surin),
        (Chalcedony)-[:PARENTAL {nature:"FATHER", biologicalOnly:TRUE}]->(Surin),

  (SD:Person {name:"Shelby Curtis", short:"Shirley's Dad", alive:FALSE}),
  (Michael:Person {name:"Michael Delavan", short:"Michael", alive:FALSE}),
  (RM:Person {name:"Gwenyvere Ruani", short:"Ria's Mom", alive:FALSE}),
  (RD:Person {name:"Abraham Ruani", short:"Ria's Dad", alive:FALSE}),
  (Lorryn:Person {name: "Lorryn Ashton"}),
  (Eurydice:Person {name:"Eurydice Ashton"}),
  (Tyrus:Person {name:"Tyrus Brick"}),
  (Sinjon:Person {name:"Sinjon Indri"}),
  (Sophia:Person {name:"Sophia Abrego", short:"Sophia"}),
  (Damian:Person {name:"Damian Hellekar", alive:FALSE}),
  (Beatrix:Person {name:"Beatrix Quince", short:"Beatrix"}),

  (RM)-[:ROMANCE {nature:"MARRIED", active:FALSE}]->(RD),

    (Ria:Person {name:"Ria Rebecca Ruani", short:"Ria"}),
    (RM)-[:PARENTAL {nature:"MOTHER"}]->(Ria),
    (RD)-[:PARENTAL {nature:"FATHER"}]->(Ria),

    (Sarah:Person {name:"Sarah Ruani", short:"SarahR", alive:FALSE}),
    (RM)-[:PARENTAL {nature:"MOTHER"}]->(Sarah),
    (RD)-[:PARENTAL {nature:"FATHER"}]->(Sarah),

    (Emily:Person {name:"Emily Ruani", short:"EmilyR", alive:FALSE}),
    (RM)-[:PARENTAL {nature:"MOTHER"}]->(Emily),
    (RD)-[:PARENTAL {nature:"FATHER"}]->(Emily),

    (Amber:Person {name:"Amber Ruani", short:"AmberR", alive:FALSE}),
    (RM)-[:PARENTAL {nature:"MOTHER"}]->(Amber),
    (RD)-[:PARENTAL {nature:"FATHER"}]->(Amber),

    (Miriam:Person {name:"Miriam Ruani", short:"MiriamR", alive:FALSE}),
    (RM)-[:PARENTAL {nature:"MOTHER"}]->(Miriam),
    (RD)-[:PARENTAL {nature:"FATHER"}]->(Miriam),

    (Ruth:Person {name:"Ruth Ruani", short:"RuthR", alive:FALSE}),
    (RM)-[:PARENTAL {nature:"MOTHER"}]->(Ruth),
    (RD)-[:PARENTAL {nature:"FATHER"}]->(Ruth),

    (Taylor:Person {name:"Taylor Ruani", short:"TaylorR", alive:FALSE}),
    (RM)-[:PARENTAL {nature:"MOTHER"}]->(Taylor),
    (RD)-[:PARENTAL {nature:"FATHER"}]->(Taylor),

  (Loki:God {name:"Loki Lauffison", short:"Loki"}),
  (MP:Person {name:"Mireia Pearce", short:"Pearce"}),

    (Ivy:Matriarch {name:"Ivy Pearce", short: "Ivy"}),
    (MP)-[:PARENTAL {nature:"MOTHER"}]->(Ivy),

      (Molly:Person {name:"Molly Atkeson", short:"Amy's Mom", alive:FALSE}),
      (Ivy)-[:PARENTAL {nature:"SOME-GREAT-GRANDMOTHER", fpo:TRUE}]->(Molly),

      (Andrey:Person {name:"Andrey Belyakov", short:"Amy's Dad", alive:FALSE}),

      (Molly)-[:ROMANCE {nature:"MARRIED", active:FALSE}]->(Andrey),

        (Amy:Person {name:"Amelia Atkeson", short:"Amy"}),
        (Molly)-[:PARENTAL {nature:"MOTHER"}]->(Amy),
        (Andrey)-[:PARENTAL {nature:"FATHER"}]->(Amy),

          (Elise:Person {name:"Elise Atkeson", short:"Elise"}),
          (Amy)-[:PARENTAL {nature:"MOTHER"}]->(Elise),

        (Amy)-[:ROMANCE {nature:"SOUL", active:TRUE}]->(Ria),

          (Daisy:Person {name:"Daisy Atkeson-Ruani", short:"Daisy"}),
          (Ria)-[:PARENTAL {nature:"MOTHER", birth:TRUE}]->(Daisy),
          (Amy)-[:PARENTAL {nature:"MOTHER", birth:FALSE}]->(Daisy),

          (Loki)-[:PATRON]->(Daisy),

            (Sigrid:Person {name:"Sigrid Lokisdottir", short:"Loki"}),
            (Daisy)-[:PARENTAL {nature:"MOTHER"}]->(Sigrid),
            (Loki)-[:PARENTAL {nature:"FATHER"}]->(Sigrid),

              (Vael:Person {name:"Vael Sigridsdottir", short:"Vael"}),
              (Sigrid)-[:PARENTAL {nature:"MOTHER"}]->(Vael),
              (Xinyi)-[:PARENTAL {nature:"MOTHER"}]->(Vael),

            (Nameless:God {name:"Nameless", short:"Nameless"}),
            (Daisy)-[:PARENTAL {nature:"MOTHER"}]->(Nameless),
            (Loki)-[:PARENTAL {nature:"FATHER"}]->(Nameless),

            (Jarnsaxa:God {name:"Jarnsaxa Lokisdottir", short:"Jarnsaxa"}),
            (Daisy)-[:PARENTAL {nature:"MOTHER"}]->(Jarnsaxa),
            (Loki)-[:PARENTAL {nature:"FATHER"}]->(Jarnsaxa),

            (Frieda:Person {name:"Frieda Lokisdottir Atkeson-Ruani", short:"Frieda"}),
            (Daisy)-[:PARENTAL {nature:"MOTHER"}]->(Frieda),
            (Loki)-[:PARENTAL {nature:"FATHER"}]->(Frieda),

            (Edward:Person {name:"Edward Lokisson Atkeson-Ruani", short:"Eddie"}),
            (Daisy)-[:PARENTAL {nature:"MOTHER"}]->(Edward),
            (Loki)-[:PARENTAL {nature:"FATHER"}]->(Edward),

          (Harper:Person {name: "Harper Ashton", short:"Harper"}),

          (Harper)-[:ROMANCE {nature:"MARRIED", active:FALSE}]->(Daisy),

            (Ethan:Person {name:"Ethan Ashton", short:"Ethan"}),
            (Daisy)-[:PARENTAL {nature:"MOTHER"}]->(Ethan),
            (Harper)-[:PARENTAL {nature:"FATHER"}]->(Ethan),
            (Lorryn)-[:ROMANCE {nature:"MARRIED", active:TRUE}]->(Ethan),

              (Darrin:Person {name:"Darrin Asthon"}),
              (Lorryn)-[:PARENTAL {nature:"MOTHER"}]->(Darrin),
              (Ethan)-[:PARENTAL {nature:"FATHER"}]->(Darrin),

            (Bonito:Person {name:"Bonito Ashton", short:"Bonito"}),
            (Daisy)-[:PARENTAL {nature:"MOTHER"}]->(Bonito),
            (Harper)-[:PARENTAL {nature:"FATHER"}]->(Bonito),
            (Eurydice)-[:ROMANCE {nature:"MARRIED", active:TRUE}]->(Bonito),

              (Saul:Person {name:"Saul Asthon"}),
              (Bonito)-[:PARENTAL {nature:"FATHER"}]->(Saul),
              (Eurydice)-[:PARENTAL {nature:"FATHER"}]->(Saul),

              (Olinda:Person {name:"Olinda Ashton"}),
              (Bonito)-[:PARENTAL {nature:"FATHER"}]->(Olinda),
              (Eurydice)-[:PARENTAL {nature:"FATHER"}]->(Olinda),

              (Timothy:Person {name:"Timothy Ashton"}),
              (Bonito)-[:PARENTAL {nature:"FATHER"}]->(Timothy),
              (Eurydice)-[:PARENTAL {nature:"FATHER"}]->(Timothy),

              (Jude:Person {name:"Jude Asthon"}),
              (Bonito)-[:PARENTAL {nature:"FATHER"}]->(Jude),
              (Eurydice)-[:PARENTAL {nature:"FATHER"}]->(Jude),

              (Kenten:Person {name:"Kenten Ashton"}),
              (Bonito)-[:PARENTAL {nature:"FATHER"}]->(Kenten),
              (Eurydice)-[:PARENTAL {nature:"FATHER"}]->(Kenten),

            (Delilah:Person {name:"Delilah Brick", short:"Delilah", nee:["Ashton"]}),
            (Daisy)-[:PARENTAL {nature:"MOTHER"}]->(Delilah),
            (Harper)-[:PARENTAL {nature:"FATHER"}]->(Delilah),
            (Delilah)-[:ROMANCE {nature:"MARRIED", active:TRUE}]->(Tyrus),

              (Addison:Person {name:"Addison Brick"}),
              (Delilah)-[:PARENTAL {nature:"MOTHER"}]->(Addison),
              (Tyrus)-[:PARENTAL {nature:"FATHER"}]->(Addison),

              (Gertrude:Person {name:"Gertrude Brick"}),
              (Delilah)-[:PARENTAL {nature:"MOTHER"}]->(Gertrude),
              (Tyrus)-[:PARENTAL {nature:"FATHER"}]->(Gertrude),

              (Ingram:Person {name:"Ingram Brick"}),
              (Delilah)-[:PARENTAL {nature:"MOTHER"}]->(Ingram),
              (Tyrus)-[:PARENTAL {nature:"FATHER"}]->(Ingram),

              (Quincy:Person {name:"Quincy Brick"}),
              (Delilah)-[:PARENTAL {nature:"MOTHER"}]->(Quincy),
              (Tyrus)-[:PARENTAL {nature:"FATHER"}]->(Quincy),

              (Paul:Person {name:"Paul Brick"}),
              (Delilah)-[:PARENTAL {nature:"MOTHER"}]->(Paul),
              (Tyrus)-[:PARENTAL {nature:"FATHER"}]->(Paul),

              (Sebert:Person {name:"Sebert Brick"}),
              (Delilah)-[:PARENTAL {nature:"MOTHER"}]->(Sebert),
              (Tyrus)-[:PARENTAL {nature:"FATHER"}]->(Sebert),

              (Adcock:Person {name:"Adcock Brick"}),
              (Delilah)-[:PARENTAL {nature:"MOTHER"}]->(Adcock),
              (Tyrus)-[:PARENTAL {nature:"FATHER"}]->(Adcock),

              (Harpsichord:Person {name:"Harpsichord Brick"}),
              (Delilah)-[:PARENTAL {nature:"MOTHER"}]->(Harpsichord),
              (Tyrus)-[:PARENTAL {nature:"FATHER"}]->(Harpsichord),

              (Talmadge:Person {name:"Talmadge Brick"}),
              (Delilah)-[:PARENTAL {nature:"MOTHER"}]->(Talmadge),
              (Tyrus)-[:PARENTAL {nature:"FATHER"}]->(Talmadge),

              (Treasigh:Person {name:"Treasigh Brick"}),
              (Delilah)-[:PARENTAL {nature:"MOTHER"}]->(Treasigh),
              (Tyrus)-[:PARENTAL {nature:"FATHER"}]->(Treasigh),

            (James:Person {name:"James Ashton", short:"James"}),
            (Daisy)-[:PARENTAL {nature:"MOTHER"}]->(James),
            (Harper)-[:PARENTAL {nature:"FATHER"}]->(James),
            (Sinjon)-[:ROMANCE {nature:"MARRIED", active:TRUE}]->(James),

              (Barnabas:Person {name:"Barnabas Asthon", short:"Barnabas"}),
              (Sinjon)-[:PARENTAL {nature:"FATHER"}]->(Barnabas),
              (James)-[:PARENTAL {nature:"FATHER"}]->(Barnabas),

              (Valeria:Person {name:"Valeria Asthon", short:"Valeria"}),
              (Sinjon)-[:PARENTAL {nature:"FATHER"}]->(Valeria),
              (James)-[:PARENTAL {nature:"FATHER"}]->(Valeria),

          (Zoe:Person {name:"Zoe Atkeson-Ruani", short:"Zoe"}),
          (Ria)-[:PARENTAL {nature:"MOTHER", birth:FALSE}]->(Zoe),
          (Amy)-[:PARENTAL {nature:"MOTHER", birth:TRUE}]->(Zoe),

          (Zoe)-[:ROMANCE {nature:"MARRIED", active:TRUE, divorceCount:1}]->(Antimony),

            (Zelda:Person {name:"Zelda Arys", short:"Zelda"}),
            (Antimony)-[:PARENTAL {nature:"MOTHER", birth:TRUE}]->(Zelda),
            (Zoe)-[:PARENTAL {nature:"MOTHER", birth:FALSE}]->(Zelda),

            (Viola:Person {name:"Viola Arys", short:"Viola"}),
            (Antimony)-[:PARENTAL {nature:"MOTHER", birth:FALSE}]->(Viola),
            (Zoe)-[:PARENTAL {nature:"MOTHER", birth:TRUE}]->(Viola),

          (Maddie:Person {name:"Madeleine Atkeson-Ruani", short:"Maddie"}),
          (Ria)-[:PARENTAL {nature:"MOTHER", birth:FALSE}]->(Maddie),
          (Amy)-[:PARENTAL {nature:"MOTHER", birth:TRUE}]->(Maddie),

          (Imogene:Person {name:"Imogene Atkeson-Ruani", short:"Imogene"}),
          (Ria)-[:PARENTAL {nature:"MOTHER", birth:TRUE}]->(Imogene),
          (Amy)-[:PARENTAL {nature:"MOTHER", birth:FALSE}]->(Imogene),

          (Grace:Person {name:"Grace Atkeson-Ruani", short:"Grace"}),
          (Ria)-[:PARENTAL {nature:"MOTHER", birth:TRUE}]->(Grace),
          (Amy)-[:PARENTAL {nature:"MOTHER", birth:FALSE}]->(Grace),

        (Philip:Person {name:"Philip Belyakov", short:"Amy's Brother", alive:FALSE}),
        (Molly)-[:PARENTAL {nature:"MOTHER"}]->(Philip),
        (Andrey)-[:PARENTAL {nature:"FATHER"}]->(Philip),

      (Eileen:Person {name:"Eileen Norton", short:"Eileen"}),
      (Yadbir:Person {name:"Yadbir Singh", short: "Yadbir"}),
      (Eileen)-[:ROMANCE {nature:"MARRIED", active:TRUE}]->(Yadbir),

        (Silvercloud:Person {name:"Silvercloud Norton", alive:FALSE, short:"Silvercloud"}),
        (Eileen)-[:PARENTAL {nature:"MOTHER"}]->(Silvercloud),
        (Damian)-[:PARENTAL {nature:"FATHER", biologicalOnly:TRUE}]->(Silvercloud),

        (Priya:Person {name:"Beloved Priya Norton", short:"Priya"}),
        (Eileen)-[:PARENTAL {nature:"MOTHER"}]->(Priya),
        (Yadbir)-[:PARENTAL {nature:"FATHER"}]->(Priya),
        (Maddie)-[:ROMANCE {nature:"MARRIED"}]->(Priya),
        (Maddie)-[:ROMANCE {nature:"MARRIED"}]->(Sophia),
        (Priya)-[:ROMANCE {nature:"MARRIED"}]->(Sophia),

          (Aradia:Person {name:"Aradia Eleonora Abrego", short:"Aradia"}),
          (Sophia)-[:PARENTAL {nature:"MOTHER"}]->(Aradia),
          (Priya)-[:PARENTAL {nature:"MOTHER"}]->(Aradia),
          (Maddie)-[:PARENTAL {nature:"MOTHER"}]->(Aradia),

          (Naomi)-[:ROMANCE {nature:"SOUL"}]->(Aradia),

            (Lillith:Person {name:"Lillith Abreyler", short:"Lillith"}),
            (Naomi)-[:PARENTAL {nature:"MOTHER"}]->(Lillith),
            (Aradia)-[:PARENTAL {nature:"MOTHER"}]->(Lillith),

          (Minerva:Person {name:"Minerva Amelia Atkeson-Ruani", short:"Minerva"}),
          (Sophia)-[:PARENTAL {nature:"MOTHER"}]->(Minerva),
          (Priya)-[:PARENTAL {nature:"MOTHER"}]->(Minerva),
          (Maddie)-[:PARENTAL {nature:"MOTHER"}]->(Minerva),

        (Victoria:Person {name:"Victoria Akhaljeet Norton", short:"Tori"}),
        (Eileen)-[:PARENTAL {nature:"MOTHER"}]->(Victoria),
        (Yadbir)-[:PARENTAL {nature:"FATHER"}]->(Victoria),

        (Avan:Person {name:"Avan Joyous Norton", short:"Avan"}),
        (Eileen)-[:PARENTAL {nature:"MOTHER"}]->(Avan),
        (Yadbir)-[:PARENTAL {nature:"FATHER"}]->(Avan),

        (Gwen:Person {name:"Gwendolyn Karam Norton", short:"Gwen"}),
        (Eileen)-[:PARENTAL {nature:"MOTHER"}]->(Gwen),
        (Yadbir)-[:PARENTAL {nature:"FATHER"}]->(Gwen),

        (Lux:Person {name:"Lux Harjot Norton", short:"Lux"}),
        (Eileen)-[:PARENTAL {nature:"MOTHER"}]->(Lux),
        (Yadbir)-[:PARENTAL {nature:"FATHER"}]->(Lux),

        (Izzy:Person {name:"Isidora Leela Norton", short:"Izzy"}),
        (Eileen)-[:PARENTAL {nature:"MOTHER"}]->(Izzy),
        (Yadbir)-[:PARENTAL {nature:"FATHER"}]->(Izzy),

        (Dheeraj:Person {name:"Dheeraj Courageous Norton", short:"Dheeraj"}),
        (Eileen)-[:PARENTAL {nature:"MOTHER"}]->(Dheeraj),
        (Yadbir)-[:PARENTAL {nature:"FATHER"}]->(Dheeraj),

        (Ajay:Person {name:"Ajay Unconquered Norton", short:"Ajay"}),
        (Eileen)-[:PARENTAL {nature:"MOTHER"}]->(Ajay),
        (Yadbir)-[:PARENTAL {nature:"FATHER"}]->(Ajay),

        (Achraj:Person {name:"Achraj Wondrous Norton", short:"Achraj"}),
        (Eileen)-[:PARENTAL {nature:"MOTHER"}]->(Achraj),
        (Yadbir)-[:PARENTAL {nature:"FATHER"}]->(Achraj),

      (ED:Person {name:"Ellie's Dad O'Rourke", short:"Ellie's Dad"}),
      (Ivy)-[:PARENTAL {nature:"SOME-GREAT-GRANDMOTHER", fpo:TRUE}]->(ED),
      (EM:Person {name:"Ellie's Mom O'Rourke", short:"Ellie's Mom"}),
      (ED)-[:ROMANCE {nature:"MARRIED", active:FALSE}]->(EM),

        (Ellie:Person {name:"Eilonwy O'Rourke", short:"Ellie"}),
        (ED)-[:PARENTAL {nature:"FATHER"}]->(Ellie),
        (EM)-[:PARENTAL {nature:"MOTHER"}]->(Ellie),

        (Belle:Person {name:"Belle Delavan", short:"Belle", nee:["O'Rourke"], alive:FALSE}),
        (ED)-[:PARENTAL {nature:"FATHER"}]->(Belle),
        (EM)-[:PARENTAL {nature:"MOTHER"}]->(Belle),
        (Michael)-[:ROMANCE {nature:"MARRIED", active:FALSE}]->(Belle),

          (Sabrina:Person {name:"Sabrina Delavan", short:"Sabrina"}),
          (Belle)-[:PARENTAL {nature:"MOTHER"}]->(Sabrina),
          (Michael)-[:PARENTAL {nature:"FATHER"}]->(Sabrina),
          (Sabrina)-[:ROMANCE {nature:"MARRIED", active:FALSE}]->(Rini),

            (Juno:Person {name:"Juno Hanraats", short:"Juno"}),
            (Sabrina)-[:PARENTAL {nature:"MOTHER"}]->(Juno),
            (Michael)-[:PARENTAL {nature:"FATHER"}]->(Juno),

          (Bianca:Person {name:"Bianca Delavan", short:"Bianca"}),
          (Belle)-[:PARENTAL {nature:"MOTHER"}]->(Bianca),
          (Michael)-[:PARENTAL {nature:"FATHER"}]->(Bianca),
          (Deandre)-[:ROMANCE {nature:"MARRIED", active:FALSE}]->(Bianca),

            (Becca:Person {name:"Rebecca Delavan-Ramsey", short:"Becca"}),
            (Bianca)-[:PARENTAL {nature:"MOTHER"}]->(Becca),
            (Deandre)-[:PARENTAL {nature:"FATHER"}]->(Becca),

            (Elijah:Person {name:"Elijah Delavan-Ramsey", short:"Elijah"}),
            (Bianca)-[:PARENTAL {nature:"MOTHER"}]->(Elijah),
            (Deandre)-[:PARENTAL {nature:"FATHER"}]->(Elijah),

            (Sigrid)-[:ROMANCE {nature:"DATING", active:"FALSE"}]->(Elijah),

              (Hraunr:Person {name:"Hraunr Sigridsson", short:"Hraunr"}),
              (Sigrid)-[:PARENTAL {nature:"MOTHER"}]->(Hraunr),
              (Elijah)-[:PARENTAL {nature:"FATHER"}]->(Hraunr),

          (Jason:Person {name:"Jason Delavan", short:"Jason"}),
          (Belle)-[:PARENTAL {nature:"MOTHER"}]->(Jason),
          (Michael)-[:PARENTAL {nature:"FATHER"}]->(Jason),
          (Jason)-[:ROMANCE {nature:"MARRIED", active:TRUE}]->(Beatrix),

            (Corinne:Person {name:"Corinne Quince", short:"Corinne"}),
            (Beatrix)-[:PARENTAL {nature:"MOTHER"}]->(Corinne),
            (Jason)-[:PARENTAL {nature:"FATHER"}]->(Corinne),

            (Daniel:Person {name:"Daniel Quince", short:"Daniel"}),
            (Beatrix)-[:PARENTAL {nature:"MOTHER"}]->(Daniel),
            (Jason)-[:PARENTAL {nature:"FATHER"}]->(Daniel),

          (Kiley:Person {name:"Kiley Delavan", short:"Kiley"}),
          (Belle)-[:PARENTAL {nature:"MOTHER"}]->(Kiley),
          (Michael)-[:PARENTAL {nature:"FATHER"}]->(Kiley),

        (Aurora:Person {name:"Aurora Curtis", short:"Aurora"}),
        (ED)-[:PARENTAL {nature:"FATHER"}]->(Aurora),
        (EM)-[:PARENTAL {nature:"MOTHER"}]->(Aurora),

        (SD)-[:ROMANCE {nature:"MARRIED", active:FALSE}]->(Aurora),

          (Shirley:Person {name:"Shirley Curtis Delavan", short:"Shirley"}),
          (Aurora)-[:PARENTAL {nature:"MOTHER"}]->(Shirley),
          (SD)-[:PARENTAL {nature:"FATHER"}]->(Shirley),

          (Jason)-[:ROMANCE {nature:"MARRIED", active:FALSE}]->(Shirley),

        (Brett:Person {name:"Brett O'Rourke", short:"Brett"}),
        (ED)-[:PARENTAL {nature:"FATHER"}]->(Brett),
        (EM)-[:PARENTAL {nature:"MOTHER"}]->(Brett),

      (Lilah:Person {name:"Lilah Ferris", short:"Lilah"}),
      (KTY:Person {name:"Ku Tae Yung", short:"KTY"}),
      (Lilah)-[:ROMANCE {nature:"MARRIED", active:TRUE}]->(KTY),

        (Jae:Person {name:"Jae-Yoon Ferris", short:"Jae"}),
        (KTY)-[:PARENTAL {nature:"FATHER"}]->(Jae),
        (Lilah)-[:PARENTAL {nature:"MOTHER"}]->(Jae),
        (Jae)-[:ROMANCE {nature:"MARRIED", active:FALSE}]->(Juno),

          (JunWook:Person {name:"Juno-Wook Ferris-Hanraats", short:"Jun-Wook"}),
          (Juno)-[:PARENTAL {nature:"MOTHER"}]->(JunWook),
          (Jae)-[:PARENTAL {nature:"FATHER"}]->(JunWook),

          (Chance:Person {name:"Chance Ferris-Hanraats", short:"Chance"}),
          (Juno)-[:PARENTAL {nature:"MOTHER"}]->(Chance),
          (Jae)-[:PARENTAL {nature:"FATHER"}]->(Chance),

          (InHye:Person {name:"In-Hye Ferris-Hanraats", short:"In-Hye"}),
          (Juno)-[:PARENTAL {nature:"MOTHER"}]->(InHye),
          (Jae)-[:PARENTAL {nature:"FATHER"}]->(InHye),

        (Sawyer:Person {name:"Sawyer Ferris", short:"Sawyer"}),
        (KTY)-[:PARENTAL {nature:"FATHER"}]->(Sawyer),
        (Lilah)-[:PARENTAL {nature:"MOTHER"}]->(Sawyer),

        (ChulSoo:Person {name:"Chul-soo Ferris", short:"Chul"}),
        (KTY)-[:PARENTAL {nature:"FATHER"}]->(ChulSoo),
        (Lilah)-[:PARENTAL {nature:"MOTHER"}]->(ChulSoo),

        (Susan:Person {name:"Susan Ferris", short:"Susan"}),
        (KTY)-[:PARENTAL {nature:"FATHER"}]->(Susan),
        (Lilah)-[:PARENTAL {nature:"MOTHER"}]->(Susan),

      (Vivianne:Person {name:"Vivianne MacAwley", short:"Vivianne"}),

      (Bart:Person {name:"Bart Pearson", short:"Bart"}),
      (Vivianne)-[:PARENTAL {nature:"MOTHER"}]->(Bart),

      (Hunter:Person {name:"Hunter MacAwley", short:"Hunter"}),
      (Vivianne)-[:PARENTAL {nature:"MOTHER"}]->(Hunter),

      (UnionM:Person {name:"Union MacAwley", short:"Union"}),
      (Vivianne)-[:PARENTAL {nature:"MOTHER"}]->(UnionM),

      (Chastity:Person {name:"Chastity MacAwley", short:"Chastity"}),
      (Vivianne)-[:PARENTAL {nature:"MOTHER"}]->(Chastity),

      (Sawyer)-[:ROMANCE {nature:"PARTNERED", active:TRUE}]->(Chastity),

        (Lily:Person {name:"Lilybelle MacAwley-Ferris", short:"Lily"}),
        (Sawyer)-[:PARENTAL {nature:"FATHER"}]->(Lily),
        (Chastity)-[:PARENTAL {nature:"MOTHER"}]->(Lily),

      (Chisako:Person {name:"Tsutaya Chisako", short:"Chisako"}),
      (Akahito:Person {name:"Miyako Akahito", short:"Akahito"}),

        (Shuji:Person {name:"Tsutaya Shuji", short:"Shuji"}),
        (Shuji)-[:ROMANCE {nature:"MARRIED"}]->(Ellie),

          (Hinata:Person {name:"Tsutaya Hinata", short:"Hinata"}),
          (Ellie)-[:PARENTAL {nature:"MOTHER"}]->(Hinata),
          (Shuji)-[:PARENTAL {nature:"FATHER"}]->(Hinata),
          (Fujio:Person {name:"Jinno Fujio", short:"Fujio"}),
          (Hinata)-[:ROMANCE {nature:"MARRIED", active:TRUE}]->(Fujio),

            (Hirokatsu:Person {name:"Tsutaya Hirokatsu", short:"Hiro"}),
            (Hinata)-[:PARENTAL {nature:"MOTHER"}]->(Hirokatsu),
            (Fujio)-[:PARENTAL {nature:"FATHER"}]->(Hirokatsu),

          (Seiji:Person {name:"Tsutaya Seiji", short:"Seiji"}),
          (Ellie)-[:PARENTAL {nature:"MOTHER"}]->(Seiji),
          (Shuji)-[:PARENTAL {nature:"FATHER"}]->(Seiji),

    (Kipkemei:Person {name:"Katleho Paul Kipkemei", short:"Kipkemei"}),
    (Zenobia:Person {name:"Zenobia Kipkemei", short:"Zen"}),
    (Zenobia)-[:ROMANCE {nature:"MARRIED", active:TRUE}]->(Kipkemei),

      (Lindiwe:Person {name:"Lindiwe Kipkemei", short:"Lindi"}),
      (Kipkemei)-[:PARENTAL {nature:"FATHER"}]->(Lindiwe),
      (Zenobia)-[:PARENTAL {nature:"MOTHER"}]->(Lindiwe),

      (Kabelo:Person {name:"Kabelo Kipkemei", short:"Kab"}),
      (Kipkemei)-[:PARENTAL {nature:"FATHER"}]->(Kabelo),
      (Zenobia)-[:PARENTAL {nature:"MOTHER"}]->(Kabelo),

      (Gigi:Person {name:"Ngeka 'Gigi' Kipkemei", short:"Gigi"}),
      (Kipkemei)-[:PARENTAL {nature:"FATHER"}]->(Gigi),
      (Zenobia)-[:PARENTAL {nature:"MOTHER"}]->(Gigi),

      (Gwana:Person {name:"Gwana Kipkemei", short:"Gwana"}),
      (Kipkemei)-[:PARENTAL {nature:"FATHER"}]->(Gwana),
      (Zenobia)-[:PARENTAL {nature:"MOTHER"}]->(Gwana),

      (Simbi:Person {name:"Zensimbi Kipkemei", short:"Simbi"}),
      (Kipkemei)-[:PARENTAL {nature:"FATHER"}]->(Simbi),
      (Zenobia)-[:PARENTAL {nature:"MOTHER"}]->(Simbi),

      (Rose:Person {name:"Wasukuma Kipkemei", short:"Rose"}),
      (Kipkemei)-[:PARENTAL {nature:"FATHER"}]->(Rose),
      (Zenobia)-[:PARENTAL {nature:"MOTHER"}]->(Rose)
RETURN Ellie;

MATCH (Dalton:Person {short:"Dalton"}), (Ruby:Person {short:"Ruby"})
CREATE
  (Dalton)-[:ROMANCE {nature:"MARRIED"}]->(Ruby)
RETURN Dalton, Ruby;
