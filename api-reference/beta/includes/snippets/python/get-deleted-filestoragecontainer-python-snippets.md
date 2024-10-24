---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.storage.file_storage.deleted_containers.item.file_storage_container_item_request_builder import FileStorageContainerItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = FileStorageContainerItemRequestBuilder.FileStorageContainerItemRequestBuilderGetQueryParameters(
		select = ["*","members"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.storage.file_storage.deleted_containers.by_file_storage_container_id('fileStorageContainer-id').get(request_configuration = request_configuration)


```