---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.security_copilot.workspaces.item.plugins.plugins_request_builder import PluginsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = PluginsRequestBuilder.PluginsRequestBuilderGetQueryParameters(
		filter = "name eq 'Entra'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.security_copilot.workspaces.by_workspace_id('workspace-id').plugins.get(request_configuration = request_configuration)


```