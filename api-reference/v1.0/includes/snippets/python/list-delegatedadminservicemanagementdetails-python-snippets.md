---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.tenant_relationships.delegated_admin_customers.by_delegated_admin_customer_id('delegatedAdminCustomer-id').service_management_details.get()


```