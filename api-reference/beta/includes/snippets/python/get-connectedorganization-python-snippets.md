---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity_governance.entitlement_management.connected_organizations.by_connected_organization_id('connectedOrganization-id').get()


```