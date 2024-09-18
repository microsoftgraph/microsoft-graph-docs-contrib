---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.sites.item.contentmodels.item.add_to_drive.add_to_drive_post_request_body import AddToDrivePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = AddToDrivePostRequestBody(
	drive_id = "b!HEq8Q8ZfAkuMECqSaQFnJVwNMbAGLHhHnXMz1C32pozpolsoEg-MT47fBTiYcbnd",
)

result = await graph_client.sites.by_site_id('site-id').content_models.by_content_model_id('contentModel-id').add_to_drive.post(request_body)


```