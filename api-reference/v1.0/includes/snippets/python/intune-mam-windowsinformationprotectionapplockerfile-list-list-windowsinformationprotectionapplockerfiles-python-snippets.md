---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

result = await graph_client.device_app_management.windows_information_protection_policies.by_windows_information_protection_policy_id('windowsInformationProtectionPolicy-id').exempt_app_locker_files.get()


```