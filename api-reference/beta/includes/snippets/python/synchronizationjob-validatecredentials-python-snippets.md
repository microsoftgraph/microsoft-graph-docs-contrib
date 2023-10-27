---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ValidateCredentialsPostRequestBody(
	credentials = [
		SynchronizationSecretKeyStringValuePair(
			key = SynchronizationSecret.UserName,
			value = "user@domain.com",
		),
		SynchronizationSecretKeyStringValuePair(
			key = SynchronizationSecret.Password,
			value = "password-value",
		),
	],
)

await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').synchronization.jobs.by_synchronization_job_id('synchronizationJob-id').validate_credentials.post(request_body)


```