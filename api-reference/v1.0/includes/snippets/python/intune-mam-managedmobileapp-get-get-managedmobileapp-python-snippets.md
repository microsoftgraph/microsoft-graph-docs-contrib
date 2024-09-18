---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_app_management.ios_managed_app_protections.by_ios_managed_app_protection_id('iosManagedAppProtection-id').apps.by_managed_mobile_app_id('managedMobileApp-id').get()


```