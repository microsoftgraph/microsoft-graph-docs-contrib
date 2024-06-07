---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity_governance.lifecycle_workflows.workflows.item.versions.versions_request_builder import VersionsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = VersionsRequestBuilder.VersionsRequestBuilderGetQueryParameters(
		select = ["category","displayName","versionNumber"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').versions.get(request_configuration = request_configuration)


```