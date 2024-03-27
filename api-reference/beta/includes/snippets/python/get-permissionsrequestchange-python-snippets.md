---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity_governance.permissions_management.permissions_request_changes.by_permissions_request_change_id('permissionsRequestChange-id').get()


```