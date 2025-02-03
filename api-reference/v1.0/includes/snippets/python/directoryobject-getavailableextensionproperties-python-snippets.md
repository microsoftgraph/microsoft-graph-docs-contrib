---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.directoryobjects.get_available_extension_properties.get_available_extension_properties_post_request_body import GetAvailableExtensionPropertiesPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GetAvailableExtensionPropertiesPostRequestBody(
)

result = await graph_client.directory_objects.get_available_extension_properties.post(request_body)


```