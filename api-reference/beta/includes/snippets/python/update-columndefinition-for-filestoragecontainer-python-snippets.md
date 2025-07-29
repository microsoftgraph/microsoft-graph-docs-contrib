---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.column_definition import ColumnDefinition
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ColumnDefinition(
	required = True,
	hidden = False,
)

result = await graph_client.storage.file_storage.containers.by_file_storage_container_id('fileStorageContainer-id').columns.by_column_definition_id('columnDefinition-id').patch(request_body)


```