-- Script that creates a trigger
-- decreasing quantity of item after adding new order
CREATE TRIGGER decrement
AFTER INSERT ON orders
FOR EACH ROW
UPDATE items SET quantity = quantity - NEW.number WHERE name = NEW.item_name;