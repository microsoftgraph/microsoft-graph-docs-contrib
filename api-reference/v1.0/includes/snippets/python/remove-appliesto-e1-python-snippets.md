---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.applications.by_application_id('application-id').app_management_policies.by_app_management_policy_id('appManagementPolicy-id').ref.delete()


```