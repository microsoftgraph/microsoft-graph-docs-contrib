---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.device_app_management.managed_app_registrations.by_managed_app_registration_id('managedAppRegistration-id').operations.by_managed_app_operation_id('managedAppOperation-id').delete()


```