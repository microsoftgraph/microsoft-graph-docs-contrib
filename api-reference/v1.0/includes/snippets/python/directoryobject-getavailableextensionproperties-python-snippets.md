---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.get_available_extension_properties_post_request_body import GetAvailableExtensionPropertiesPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetAvailableExtensionPropertiesPostRequestBody(
)

result = await graph_client.directory_objects.get_available_extension_properties.post(request_body)


```