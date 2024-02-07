---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = RestartPostRequestBody(
	criteria = SynchronizationJobRestartCriteria(
		reset_scope = SynchronizationJobRestartScope.Watermark | SynchronizationJobRestartScope.Escrows | SynchronizationJobRestartScope.QuarantineState,
	),
)

request_configuration = RestartRequestBuilder.RestartRequestBuilderPostRequestConfiguration()
request_configuration.headers.add("Authorization", "Bearer <token>")


await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').synchronization.jobs.by_synchronization_job_id('synchronizationJob-id').restart.post(request_body, request_configuration = request_configuration)


```