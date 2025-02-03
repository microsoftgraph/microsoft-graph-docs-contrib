---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.directory_role import DirectoryRole
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DirectoryRole(
	role_template_id = "fe930be7-5e62-47db-91af-98c3a49a38b1",
)

result = await graph_client.directory_roles.post(request_body)


```