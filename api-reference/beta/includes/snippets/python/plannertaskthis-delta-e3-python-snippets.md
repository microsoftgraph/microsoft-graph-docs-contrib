---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.planner.tasks.delta.delta_request_builder import DeltaRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = DeltaRequestBuilder.DeltaRequestBuilderGetQueryParameters(
		filter = "planId eq '-W4K7hIak0WlAwgJCn1sEWQABgjH'",
		select = ["percentComplete","assignments","creationSource"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.planner.tasks.delta.get(request_configuration = request_configuration)


```