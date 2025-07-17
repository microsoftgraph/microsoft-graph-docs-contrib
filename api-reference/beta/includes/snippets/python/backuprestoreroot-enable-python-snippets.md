---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.solutions.backuprestore.enable.enable_post_request_body import EnablePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EnablePostRequestBody(
	app_owner_tenant_id = "23014d8c-71fe-4d00-a01a-31850bc5b42a",
)

result = await graph_client.solutions.backup_restore.enable.post(request_body)


```