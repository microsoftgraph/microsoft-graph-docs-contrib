---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_management.windows_information_protection_app_learning_summaries.by_windows_information_protection_app_learning_summary_id('windowsInformationProtectionAppLearningSummary-id').get()


```