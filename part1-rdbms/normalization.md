## Anomaly Analysis

### Insert Anomaly
In the dataset, product details are tied to orders. A new product cannot be added unless an order is created, which limits data insertion flexibility.

### Update Anomaly
Customer information such as city is repeated across multiple rows. If a customer changes city, it must be updated in multiple records, leading to inconsistency risk.

### Delete Anomaly
If an order is deleted, all associated product and customer information in that row is also removed, potentially causing loss of important data.