---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.outlook_task_folder import OutlookTaskFolder
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OutlookTaskFolder(
	name = "Cooking",
)

result = await graph_client.me.outlook.task_groups.by_outlook_task_group_id('outlookTaskGroup-id').task_folders.post(request_body)


```