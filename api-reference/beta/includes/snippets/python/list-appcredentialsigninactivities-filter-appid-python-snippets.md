---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = AppCredentialSignInActivitiesRequestBuilder.AppCredentialSignInActivitiesRequestBuilderGetQueryParameters(
		filter = "appId eq 'f4d9654f-0305-4072-878c-8bf266dfe146'",
)

request_configuration = AppCredentialSignInActivitiesRequestBuilder.AppCredentialSignInActivitiesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.reports.app_credential_sign_in_activities.get(request_configuration = request_configuration)


```