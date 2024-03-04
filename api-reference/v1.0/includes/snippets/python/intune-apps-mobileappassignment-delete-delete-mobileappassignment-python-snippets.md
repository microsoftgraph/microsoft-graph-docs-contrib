---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.device_app_management.mobile_apps.by_mobile_app_id('mobileApp-id').assignments.by_mobile_app_assignment_id('mobileAppAssignment-id').delete()


```