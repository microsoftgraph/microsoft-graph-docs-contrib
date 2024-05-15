---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity_governance.app_consent.app_consent_requests.app_consent_requests_request_builder import AppConsentRequestsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AppConsentRequestsRequestBuilder.AppConsentRequestsRequestBuilderGetQueryParameters(
		filter = "userConsentRequests/any (u:u/status eq 'InProgress')",
)

request_configuration = AppConsentRequestsRequestBuilder.AppConsentRequestsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.app_consent.app_consent_requests.get(request_configuration = request_configuration)


```