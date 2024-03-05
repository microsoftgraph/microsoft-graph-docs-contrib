---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.identity_governance.entitlement_management.connected_organizations.by_connected_organization_id('connectedOrganization-id').external_sponsors.by_directory_object_id('directoryObject-id').ref.delete()


```