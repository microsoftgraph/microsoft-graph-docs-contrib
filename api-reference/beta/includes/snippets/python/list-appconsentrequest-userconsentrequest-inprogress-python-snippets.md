---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity_governance.app_consent.app_consent_requests.app_consent_requests_request_builder import AppConsentRequestsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = AppConsentRequestsRequestBuilder.AppConsentRequestsRequestBuilderGetQueryParameters(
		filter = "userConsentRequests/any (u:u/status eq 'InProgress')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.app_consent.app_consent_requests.get(request_configuration = request_configuration)


```