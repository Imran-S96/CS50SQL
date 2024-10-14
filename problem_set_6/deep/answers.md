# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

Data distributed across the boats would takes up space that can be used else where and running queries would have to read all 3 boats data thus being slower. It is good for data persistance as the data is stored on multiple boats, preventing data loss if one is destroyed or corrupted.

## Partitioning by Hour

Queries would be faster as a query only needs to read on boat rather than 3 and the data will not take up more space than needed. However, there is a risk of data lose if one of the boats are destroyed or corrupted.

## Partitioning by Hash Value

The search time would significantly shorten as it would search for small hash values rather than the whole data in searches. However, when iterating it would search through every boat increasing the search time for a query.

