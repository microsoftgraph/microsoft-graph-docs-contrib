---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_app_management.windows_information_protection_policies.by_windows_information_protection_policy_id('windowsInformationProtectionPolicy-id').exempt_app_locker_files.get()


```