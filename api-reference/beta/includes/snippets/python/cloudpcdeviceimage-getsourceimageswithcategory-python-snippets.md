---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.device_management.virtual_endpoint.device_images.get_source_images.get_source_images_request_builder import GetSourceImagesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = GetSourceImagesRequestBuilder.GetSourceImagesRequestBuilderGetQueryParameters(
		filter = "category eq 'managedImage'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.device_management.virtual_endpoint.device_images.get_source_images.get(request_configuration = request_configuration)


```