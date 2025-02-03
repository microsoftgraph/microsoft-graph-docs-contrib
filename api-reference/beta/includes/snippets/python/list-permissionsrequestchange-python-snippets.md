---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity_governance.permissions_management.permissions_request_changes.permissions_request_changes_request_builder import PermissionsRequestChangesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = PermissionsRequestChangesRequestBuilder.PermissionsRequestChangesRequestBuilderGetQueryParameters(
		filter = "modificationDateTime gt {t}",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.permissions_management.permissions_request_changes.get(request_configuration = request_configuration)


```