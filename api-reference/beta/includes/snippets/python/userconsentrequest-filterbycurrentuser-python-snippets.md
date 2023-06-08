---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = UserConsentRequestRequestBuilder.UserConsentRequestRequestBuilderGetQueryParameters(
		filter = " (status eq 'Completed')",
)

request_configuration = UserConsentRequestRequestBuilder.UserConsentRequestRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.app_consent.app_consent_requests.by_app_consent_request_id('appConsentRequest-id').user_consent_requests.by_user_consent_request_id('userConsentRequest-id').get(request_configuration = request_configuration)


```