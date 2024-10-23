---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.sites.item.contentmodels.item.add_to_drive.add_to_drive_post_request_body import AddToDrivePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AddToDrivePostRequestBody(
	drive_id = "b!HEq8Q8ZfAkuMECqSaQFnJVwNMbAGLHhHnXMz1C32pozpolsoEg-MT47fBTiYcbnd",
)

result = await graph_client.sites.by_site_id('site-id').content_models.by_content_model_id('contentModel-id').add_to_drive.post(request_body)


```