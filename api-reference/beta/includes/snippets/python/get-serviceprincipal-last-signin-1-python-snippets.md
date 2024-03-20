---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.reports.service_principal_sign_in_activities.by_service_principal_sign_in_activity_id('servicePrincipalSignInActivity-id').get()


```