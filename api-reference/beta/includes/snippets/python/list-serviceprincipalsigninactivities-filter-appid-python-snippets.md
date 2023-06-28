---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ServicePrincipalSignInActivitiesRequestBuilder.ServicePrincipalSignInActivitiesRequestBuilderGetQueryParameters(
		filter = "appId eq 'f4d9654f-0305-4072-878c-8bf266dfe146'",
)

request_configuration = ServicePrincipalSignInActivitiesRequestBuilder.ServicePrincipalSignInActivitiesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.reports.service_principal_sign_in_activities.get(request_configuration = request_configuration)


```