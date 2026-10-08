---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.cloud_licensing.allotments.allotments_request_builder import AllotmentsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = AllotmentsRequestBuilder.AllotmentsRequestBuilderGetQueryParameters(
		select = ["id","allottedUnits","consumedUnits","assignableTo"],
		expand = ["waitingMembers($select=id,waitingSinceDateTime)"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.admin.cloud_licensing.allotments.get(request_configuration = request_configuration)


```