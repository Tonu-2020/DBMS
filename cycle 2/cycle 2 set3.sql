CREATE TABLE customer
      (
        cust_id   INT PRIMARY KEY,
        cust_name VARCHAR(20) NOT NULL
   );
   CREATE TABLE item
      (item_id INT PRIMARY KEY, item_name VARCHAR(25), price INT
      );
      CREATE TABLE sale
      (
        bill_no   INT PRIMARY KEY,
        bill_date DATE NOT NULL,
        cust_id   INT NOT NULL,
        item_id   INT NOT NULL,
        qty_sold  decimal(6,3) NOT NULL,
        FOREIGN KEY(item_id) 
           REFERENCES item(item_id),
       FOREIGN KEY (cust_id) 
          REFERENCES customer(cust_id)
   );

        


