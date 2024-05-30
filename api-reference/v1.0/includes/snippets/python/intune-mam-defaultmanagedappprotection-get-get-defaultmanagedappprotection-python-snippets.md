---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_app_management.default_managed_app_protections.by_default_managed_app_protection_id('defaultManagedAppProtection-id').get()


```