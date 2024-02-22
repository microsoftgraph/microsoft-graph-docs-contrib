---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identityGovernance.appConsent.appConsentRequests.filterByCurrentUser(on='{on}').filter_by_current_user_with_on_request_builder import FilterByCurrentUserWithOnRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = FilterByCurrentUserWithOnRequestBuilder.FilterByCurrentUserWithOnRequestBuilderGetQueryParameters(
		filter = "userConsentRequests/any(u:u/status eq 'InProgress')",
)

request_configuration = FilterByCurrentUserWithOnRequestBuilder.FilterByCurrentUserWithOnRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.app_consent.app_consent_requests.filter_by_current_user_with_on("reviewer").get(request_configuration = request_configuration)


```