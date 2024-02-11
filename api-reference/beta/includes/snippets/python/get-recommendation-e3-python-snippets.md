---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.directory.recommendations.recommendations_request_builder import RecommendationsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = RecommendationsRequestBuilder.RecommendationsRequestBuilderGetQueryParameters(
		filter = "id eq '0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA'",
		expand = ["impactedResources"],
)

request_configuration = RecommendationsRequestBuilder.RecommendationsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.directory.recommendations.get(request_configuration = request_configuration)


```