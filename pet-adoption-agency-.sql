CREATE TABLE `Animals` (
	`AnimalID` INT NOT NULL AUTO_INCREMENT,
	`Name` INT NOT NULL,
	`Age` INT NOT NULL,
	`SpeciesID` INT NOT NULL,
	`Breed` INT NOT NULL,
	`Color` INT NOT NULL,
	`Gender` INT NOT NULL,
	`Weight` INT NOT NULL,
	`ArrivalDate` INT NOT NULL,
	`AdoptionStatus` INT NOT NULL,
	PRIMARY KEY (`AnimalID`)
);

CREATE TABLE `Species` (
	`SpeciesID` INT NOT NULL,
	`Species` INT NOT NULL,
	PRIMARY KEY (`SpeciesID`)
);

CREATE TABLE `Adopters` (
	`AdopterID` INT NOT NULL,
	`FirstName` INT NOT NULL,
	`LastName` INT NOT NULL,
	`Email` INT NOT NULL,
	`Phone` INT NOT NULL,
	PRIMARY KEY (`AdopterID`)
);

CREATE TABLE `Adoptions` (
	`AdoptionID` INT NOT NULL,
	`AnimalID` INT NOT NULL,
	`AdopterID` INT NOT NULL,
	`AdoptionDate` INT NOT NULL,
	PRIMARY KEY (`AdoptionID`)
);

ALTER TABLE `Animals` ADD CONSTRAINT `Animals_fk0` FOREIGN KEY (`SpeciesID`) REFERENCES `Species`(`undefined`);

ALTER TABLE `Adoptions` ADD CONSTRAINT `Adoptions_fk0` FOREIGN KEY (`AnimalID`) REFERENCES `Animals`(`id`);

ALTER TABLE `Adoptions` ADD CONSTRAINT `Adoptions_fk1` FOREIGN KEY (`AdopterID`) REFERENCES `Adopters`(`id`);





