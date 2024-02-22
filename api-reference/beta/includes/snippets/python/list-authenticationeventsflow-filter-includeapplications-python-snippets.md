---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity.authenticationEventsFlows.authentication_events_flows_request_builder import AuthenticationEventsFlowsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AuthenticationEventsFlowsRequestBuilder.AuthenticationEventsFlowsRequestBuilderGetQueryParameters(
		filter = "microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/conditions/applications/includeApplications/any(appId:appId/appId eq '63856651-13d9-4784-9abf-20758d509e19')",
)

request_configuration = AuthenticationEventsFlowsRequestBuilder.AuthenticationEventsFlowsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.authentication_events_flows.get(request_configuration = request_configuration)


```