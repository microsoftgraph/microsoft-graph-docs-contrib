---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_app_management.managed_e_books.by_managed_e_book_id('managedEBook-id').user_state_summary.get()


```