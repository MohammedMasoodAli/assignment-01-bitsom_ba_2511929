## Storage Systems

The system uses multiple storage solutions to handle different types of data efficiently.

PostgreSQL is used as the OLTP database to store real-time patient records and transactional data. It ensures strong consistency and reliability, which is critical in healthcare systems.

A Data Lake is used to store raw and unstructured data such as ICU device logs, sensor data, and medical reports. This allows flexible storage of large volumes of data in different formats.

A Data Warehouse is used for analytical processing and reporting. It enables fast queries for generating insights such as patient trends, hospital performance, and monthly reports.

A Vector Database is used to store embeddings of medical documents and notes, enabling semantic search and natural language queries.

---

## OLTP vs OLAP Boundary

OLTP systems are used for real-time operations such as storing patient data, updating records, and handling transactions. These systems require high consistency and low latency.

OLAP systems are used for analytical workloads such as reporting, trend analysis, and decision-making. They process large volumes of historical data.

In this architecture, PostgreSQL handles OLTP operations, while the Data Warehouse handles OLAP workloads. This separation ensures that real-time operations are not affected by heavy analytical queries.

---

## Trade-offs

One key trade-off in this system is between consistency and performance. OLTP systems prioritize consistency, which may limit scalability under heavy load. Data warehouses prioritize performance and scalability but may not always reflect real-time data.

Another trade-off is system complexity. Using multiple storage systems increases architectural complexity but provides better scalability and flexibility.

These trade-offs are managed by separating workloads and using each system for its specific purpose.

---

## Why This Architecture

This architecture is designed to handle both real-time and analytical requirements efficiently. It supports scalable data storage, enables advanced analytics, and integrates AI capabilities for predictive insights.

The use of a vector database enhances the system by enabling semantic search, which is useful for querying medical records in natural language.

Overall, this architecture is robust, scalable, and well-suited for modern healthcare systems.