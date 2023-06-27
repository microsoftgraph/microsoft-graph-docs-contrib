---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = FilterByCurrentUserWithOnRequestBuilder.FilterByCurrentUserWithOnRequestBuilderGetQueryParameters(
		filter = " (status eq 'Completed')",
)

request_configuration = FilterByCurrentUserWithOnRequestBuilder.FilterByCurrentUserWithOnRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.app_consent.app_consent_requests.by_app_consent_request_id('appConsentRequest-id').user_consent_requests.filter_by_current_user(on='{on}'.get(request_configuration = request_configuration)


```