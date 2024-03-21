---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.device_app_management.windows_information_protection_policies.by_windows_information_protection_policy_id('windowsInformationProtectionPolicy-id').exempt_app_locker_files.by_windows_information_protection_app_locker_file_id('windowsInformationProtectionAppLockerFile-id').delete()


```