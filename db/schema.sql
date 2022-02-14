DROP TABLE IF EXISTS candidates;
DROP TABLE IF EXISTS parties;

CREATE TABLE parties (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  description TEXT
);

CREATE TABLE candidates (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  party_id INTEGER,
  industry_connected BOOLEAN NOT NULL,
  CONSTRAINT fk_party FOREIGN KEY (party_id) REFERENCES parties(id) ON DELETE SET NULL
);

CREATE TABLE voters (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  email VARCHAR(50) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO voters (first_name, last_name, email)
VALUES
  ('James', 'Fraser', 'jf@goldenbough.edu'),
  ('Jack', 'London', 'jlondon@ualaska.edu'),
  ('Robert', 'Bruce', 'rbruce@scotland.net'),
  ('Peter', 'Greenaway', 'pgreenaway@postmodern.com'),
  ('Derek', 'Jarman', 'djarman@prospectcottage.net'),
  ('Paolo', 'Pasolini', 'ppasolini@salo.com'),
  ('Heathcote', 'Williams', 'hwilliams@bafta.com'),
  ('Sandy', 'Powell', 'spowell@oscars.com'),
  ('Emil', 'Zola', 'ezola@requin.com'),
  ('Sissy', 'Coalpits', 'scoalpits@greenaway.com'),
  ('Antoinette', 'Capet', 'acapet@dontloseyourhead.com'),
  ('Samuel', 'Delany', 'sdelany@dhalgren.com'),
  ('Tony', 'Duvert', 'tduvert@frenchletters.edu'),
  ('Dennis', 'Cooper', 'dcooper@georgemiles.com'),
  ('Monica', 'Bellucci', 'mbell@irreverisble.net'),
  ('Samuel', 'Johnson', 'sjohnson@boswell.com'),
  ('John', 'Dryden', 'jdryden@restoration.net'),
  ('Alexander', 'Pope', 'apope@cambridge.uk.edu'),
  ('Lionel', 'Johnson', 'ljohnson@darkangel.com'),
  ('Aubrey', 'Beardsley', 'abeardsely@wilde.net'),
  ('Tulse', 'Luper', 'tluper@films.net'),
  ('William', 'Morris', 'wmorris@victoriana.com'),
  ('George', 'Shaw', 'gshaw@labor.uk'),
  ('Arnold', 'Bennett', 'abennett@poemsgalore.com'),
  ('Algernon', 'Blackwood', 'ablack@creepy.net'),
  ('Rhoda', 'Broughton', 'rb@feminist.com'),
  ('Hart', 'Crane', 'hcrane@schwesters.de'),
  ('Vitorio', 'DeSica', 'vdesica@italiano.net'),
  ('Wilkie', 'Collins', 'wcollins@madmonkton.com'),
  ('Elizabeth', 'Gaskell', 'egaskell@pages.net'),
  ('George', 'Sand', 'gsand@pride.com'),
  ('Vernon', 'Lee', 'vlee@spooks.net'),
  ('Arthur', 'Machen', 'amach@spirits.com'),
  ('Frederick', 'Marryat', 'fmarry@boats.net'),
  ('Harriet', 'Martineau', 'hmartineau@journalism.com'),
  ('George', 'Meredith', 'gm@egoist.uk'),
  ('Margaret', 'Oliphant', 'moli@victoriana.com'),
  ('Anthony', 'Trollope', 'atrollope@barchester.com'),
  ('Charlotte', 'Yonge', 'cyonge@newday.com'),
  ('Horace', 'Walpole', 'hwal@otranto.net'),
  ('Matthew', 'Lewis', 'mlewis@monk.com'),
  ('William', 'Bedford', 'wbed@grandtour.net'),
  ('Anne', 'Radcliffe', 'arad@udolpho.uk'),
  ('Charles', 'Brown', 'cbrown@wieland.us'),
  ('Eliza', 'Parsons', 'lizzie@fierce.net'),
  ('Susan', 'Hill', 'shill@womaninblack.net'),
  ('Sydney', 'Owenson', 'Sowen@think.net'),
  ('Hubert', 'Crackanthorpe', 'hcrackan@goodletters.com'),
  ('William', 'Carleton', 'wcarleton@literature.com'),
  ('Gerald', 'Griffin', 'ggriff@lit.net');