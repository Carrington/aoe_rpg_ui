MATCH
  (Anti:Person {short:"Anti"}),
  (Deandre:Person {name:"Deandre Ramsey"}),
  (Rini:Person {name:"Rini Hanraats"}),
  (Xinyi:Person {name:"Xinyi Yue-Sajjadi"})
CREATE
  (SD:Person {name:"Shelby Curtis", short:"Shirley's Dad"}),
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

    (Sarah:Person {name:"Sarah Ruani", short:"SarahR"}),
    (RM)-[:PARENTAL {nature:"MOTHER"}]->(Sarah),
    (RD)-[:PARENTAL {nature:"FATHER"}]->(Sarah),

    (Emily:Person {name:"Emily Ruani", short:"EmilyR"}),
    (RM)-[:PARENTAL {nature:"MOTHER"}]->(Emily),
    (RD)-[:PARENTAL {nature:"FATHER"}]->(Emily),

    (Amber:Person {name:"Amber Ruani", short:"AmberR"}),
    (RM)-[:PARENTAL {nature:"MOTHER"}]->(Amber),
    (RD)-[:PARENTAL {nature:"FATHER"}]->(Amber),

    (Miriam:Person {name:"Miriam Ruani", short:"MiriamR"}),
    (RM)-[:PARENTAL {nature:"MOTHER"}]->(Miriam),
    (RD)-[:PARENTAL {nature:"FATHER"}]->(Miriam),

    (Ruth:Person {name:"Ruth Ruani", short:"RuthR"}),
    (RM)-[:PARENTAL {nature:"MOTHER"}]->(Ruth),
    (RD)-[:PARENTAL {nature:"FATHER"}]->(Ruth),

    (Taylor:Person {name:"Taylor Ruani", short:"TaylorR"}),
    (RM)-[:PARENTAL {nature:"MOTHER"}]->(Taylor),
    (RD)-[:PARENTAL {nature:"FATHER"}]->(Taylor),

  (Loki:God {name:"Loki Lauffison", short:"Loki"}),
  (MP:Person {name:"Mireia Pearce", short:"Pearce"}),

    (Ivy:Matriarch {name:"Ivy Pearce", short: "Ivy"}),
    (MP)-[:PARENTAL {nature:"MOTHER"}]->(Ivy),

      (Molly:Person {name:"Molly Atkeson", short:"Amy's Mom"}),
      (Ivy)-[:PARENTAL {nature:"SOME-GREAT-GRANDMOTHER", fpo:TRUE}]->(Molly),

      (Andrey:Person {name:"Andrey Belyakov", short:"Amy's Dad"}),

      (Molly)-[:ROMANCE {nature:"MARRIED", active:FALSE}]->(Andrey),

        (Amy:Person {name:"Amelia Atkeson", short:"Amy"}),
        (Molly)-[:PARENTAL {nature:"MOTHER"}]->(Amy),
        (Andrey)-[:PARENTAL {nature:"FATHER"}]->(Amy),

          (Elise:Person {name:"Elise Atkeson", short:"Elise"}),
          (Amy)-[:PARENTAL {nature:"MOTHER"}]->(Elise),

        (Amy)-[:ROMANCE {nature:"MARRIED", active:TRUE}]->(Ria),

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

          (Zoe)-[:ROMANCE {nature:"MARRIED", active:TRUE, divorceCount:1}]->(Anti),

            (Zelda:Person {name:"Zelda Arys", short:"Zelda"}),
            (Anti)-[:PARENTAL {nature:"MOTHER", birth:TRUE}]->(Zelda),
            (Zoe)-[:PARENTAL {nature:"MOTHER", birth:FALSE}]->(Zelda),

            (Viola:Person {name:"Viola Arys", short:"Viola"}),
            (Anti)-[:PARENTAL {nature:"MOTHER", birth:FALSE}]->(Viola),
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

        (Philip:Person {name:"Philip Belyakov", short:"Amy's Brother"}),
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
RETURN Ellie
