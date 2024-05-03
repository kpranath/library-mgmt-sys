-- Create the trigger function
CREATE OR REPLACE FUNCTION update_fines_trigger_function()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.Returned_Date > NEW.Return_Due_Date THEN
        INSERT INTO Fines (User_ID, Fine_Paid, Total_Fine, Amount_Due)
        VALUES (NEW.User_ID, 0,(NEW.Returned_Date - NEW.Return_Due_Date) * 10, 0);
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_fines_trigger14
AFTER UPDATE ON Transaction
FOR EACH ROW
EXECUTE FUNCTION update_fines_trigger_function();


INSERT INTO Transaction (Transaction_ID, User_ID, Book_ID, Borrow_Date, Return_Due_Date, Returned_Date) VALUES
(29, 3, 26, '2023-01-01', '2023-01-15', '2023-03-21')

select * from fines