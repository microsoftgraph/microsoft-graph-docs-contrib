---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.sites.item.contentmodels.item.remove_from_drive.remove_from_drive_post_request_body import RemoveFromDrivePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = RemoveFromDrivePostRequestBody(
	drive_id = "b!HEq8Q8ZfAkuMECqSaQFnJVwNMbAGLHhHnXMz1C32pozpolsoEg-MT47fBTiYcbnd",
)

await graph_client.sites.by_site_id('site-id').content_models.by_content_model_id('contentModel-id').remove_from_drive.post(request_body)


```