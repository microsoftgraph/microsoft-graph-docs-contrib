---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = AuthenticationEventsFlowsRequestBuilder.AuthenticationEventsFlowsRequestBuilderGetQueryParameters(
		filter = "microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/conditions/applications/includeApplications/any",
)

request_configuration = AuthenticationEventsFlowsRequestBuilder.AuthenticationEventsFlowsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity.authentication_event_flows.get(request_configuration = request_configuration)


```