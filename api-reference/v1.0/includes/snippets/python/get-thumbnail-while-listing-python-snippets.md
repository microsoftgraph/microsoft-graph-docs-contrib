---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = ChildrenRequestBuilder.ChildrenRequestBuilderGetQueryParameters(
		expand = ["thumbnails"],
)

request_configuration = ChildrenRequestBuilder.ChildrenRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').children.get(request_configuration = request_configuration)


```