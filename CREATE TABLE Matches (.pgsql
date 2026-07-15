CREATE TABLE Matches (
    match_id INT,
    fixture VARCHAR(150) NOT NULL,
    tournament_category VARCHAR(100) NOT NULL,
    base_ticket_price DECIMAL(10, 2) NOT NULL,
    match_status VARCHAR(30) NOT NULL,
    CONSTRAINT pk_matches PRIMARY KEY (match_id),
    CONSTRAINT chk_matches_price CHECK (base_ticket_price >= 0),
    CONSTRAINT chk_matches_status CHECK (
        match_status IN (
            'Available',
            'Selling Fast',
            'Sold Out',
            'Postponed'
        )
    )
);