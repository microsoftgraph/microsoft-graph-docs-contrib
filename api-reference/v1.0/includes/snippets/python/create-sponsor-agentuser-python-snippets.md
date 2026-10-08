---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.directory_object import DirectoryObject
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DirectoryObject(
	odata_type = "#microsoft.graph.directoryObject",
)

await graph_client.users.by_user_id('user-id').sponsors.ref.post(request_body)


```