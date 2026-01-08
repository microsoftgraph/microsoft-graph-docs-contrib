---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.share_point_group import SharePointGroup
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SharePointGroup(
	odata_type = "#microsoft.graph.sharePointGroup",
	title = "This is the new group title",
	description = "Updated group description",
)

result = await graph_client.storage.file_storage.containers.by_file_storage_container_id('fileStorageContainer-id').share_point_groups.by_share_point_group_id('sharePointGroup-id').patch(request_body)


```