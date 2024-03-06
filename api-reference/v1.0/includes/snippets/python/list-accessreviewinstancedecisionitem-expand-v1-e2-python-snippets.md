---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identityGovernance.accessReviews.decisions.filterByCurrentUser(on='{on}').filter_by_current_user_with_on_request_builder import FilterByCurrentUserWithOnRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = FilterByCurrentUserWithOnRequestBuilder.FilterByCurrentUserWithOnRequestBuilderGetQueryParameters(
		expand = ["instance($expand=definition)"],
)

request_configuration = FilterByCurrentUserWithOnRequestBuilder.FilterByCurrentUserWithOnRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.access_reviews.decisions.filter_by_current_user_with_on("reviewer").get(request_configuration = request_configuration)


```