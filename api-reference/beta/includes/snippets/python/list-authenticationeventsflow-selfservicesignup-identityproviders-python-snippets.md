---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity.authentication_events_flows.authentication_events_flows_request_builder import AuthenticationEventsFlowsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AuthenticationEventsFlowsRequestBuilder.AuthenticationEventsFlowsRequestBuilderGetQueryParameters(
		filter = "microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAuthenticationMethodLoadStart/microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp/identityProviders/any(idp:idp/id eq 'Google-OAUTH')",
)

request_configuration = AuthenticationEventsFlowsRequestBuilder.AuthenticationEventsFlowsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.authentication_events_flows.get(request_configuration = request_configuration)


```