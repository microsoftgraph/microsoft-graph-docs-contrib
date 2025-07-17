---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.sites.item.contentmodels.item.remove_from_drive.remove_from_drive_post_request_body import RemoveFromDrivePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RemoveFromDrivePostRequestBody(
	drive_id = "b!HEq8Q8ZfAkuMECqSaQFnJVwNMbAGLHhHnXMz1C32pozpolsoEg-MT47fBTiYcbnd",
)

await graph_client.sites.by_site_id('site-id').content_models.by_content_model_id('contentModel-id').remove_from_drive.post(request_body)


```