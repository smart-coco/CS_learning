.read data.sql


CREATE TABLE average_prices AS
  SELECT category,avg(MSRP) as average_price
  from products
  group by category;


CREATE TABLE lowest_prices AS
  SELECT store,item,min(price)
  from inventory
  group by item;


CREATE TABLE temp_list AS
  SELECT a.name as name
  from products as a,inventory as b
  where a.name=b.item
  group by a.category
  having min(a.MSRP/a.rating);


CREATE TABLE shopping_list AS
  select a.name as name,b.store as store
  from temp_list as a,lowest_prices as b
  where a.name=b.item;
  
CREATE TABLE total_bandwidth AS
  select sum(a.Mbs)
  from stores as a,shopping_list as b
  where a.store=b.store;

