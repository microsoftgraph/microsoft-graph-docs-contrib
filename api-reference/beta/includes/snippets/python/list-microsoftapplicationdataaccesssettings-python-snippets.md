---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.organization.by_organization_id('organization-id').settings.microsoft_application_data_access.get()


```