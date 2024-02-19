-- Table to store contact information
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY, -- Contact ID (unique)
    first_name VARCHAR(50) NOT NULL, -- First name of the contact
    last_name VARCHAR(50) NOT NULL, -- Last name of the contact
    email VARCHAR(100) NOT NULL -- Email of the contact
);

-- Table to store campaign categories
CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY, -- Category ID (unique)
    subcategory_name VARCHAR(50) NOT NULL -- Name of the subcategory
);

-- Table to store campaign subcategories
CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY, -- Subcategory ID (unique)
    category_name VARCHAR(50) NOT NULL -- Name of the category
);

-- Table to store campaign information
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY, -- Campaign ID (unique)
    contact_id INT NOT NULL, -- Contact ID
    company_name VARCHAR(100) NOT NULL, -- Name of the company
    description TEXT NOT NULL, -- Campaign description
    goal FLOAT NOT NULL, -- Fundraising goal
    pledged FLOAT NOT NULL, -- Amount pledged
    outcome VARCHAR(50) NOT NULL, -- Outcome of the campaign
    backers_count INT NOT NULL, -- Number of backers
    country VARCHAR(5) NOT NULL, -- Country of the campaign
    currency VARCHAR(5) NOT NULL, -- Currency used
    launch_date DATE NOT NULL, -- Launch date of the campaign
    end_date DATE NOT NULL, -- End date of the campaign
    category_id VARCHAR(10) NOT NULL, -- Category ID
    subcategory_id VARCHAR(10) NOT NULL, -- Subcategory ID
	FOREIGN KEY (category_id) REFERENCES category (category_id), -- Foreign key referencing category table
    FOREIGN KEY (contact_id) REFERENCES contacts (contact_id), -- Foreign key referencing contacts table
    FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id) -- Foreign key referencing subcategory table
);

-- The data from each table is displayed using a SELECT * statement (5 points)


SELECT * 
FROM contacts;

SELECT * 
FROM category;

SELECT * 
FROM subcategory;

SELECT * 
FROM campaign;