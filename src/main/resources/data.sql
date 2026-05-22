INSERT INTO theaters (name, rows, seats_per_row, cowboy_row_count, sofa_row_count)
SELECT 'Sal 1 (Lille)', 20, 12, 2, 0
    WHERE NOT EXISTS (SELECT 1 FROM theaters WHERE name = 'Sal 1 (Lille)');

INSERT INTO theaters (name, rows, seats_per_row, cowboy_row_count, sofa_row_count)
SELECT 'Sal 2 (Stor)', 25, 16, 2, 2
    WHERE NOT EXISTS (SELECT 1 FROM theaters WHERE name = 'Sal 2 (Stor)');