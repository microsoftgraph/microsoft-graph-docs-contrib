---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.sites.item.contenttypes.item.copy_to_default_content_location.copy_to_default_content_location_post_request_body import CopyToDefaultContentLocationPostRequestBody
from msgraph_beta.generated.models.item_reference import ItemReference
from msgraph_beta.generated.models.sharepoint_ids import SharepointIds
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CopyToDefaultContentLocationPostRequestBody(
	source_file = ItemReference(
		sharepoint_ids = SharepointIds(
			list_id = "e2ecf63b-b0fd-48f7-a54a-d8c15479e3b0",
			list_item_id = "2",
		),
	),
	destination_file_name = "newname.txt",
)

await graph_client.sites.by_site_id('site-id').content_types.by_content_type_id('contentType-id').copy_to_default_content_location.post(request_body)


```