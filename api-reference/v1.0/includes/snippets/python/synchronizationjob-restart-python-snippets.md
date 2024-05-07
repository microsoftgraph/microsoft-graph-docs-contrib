---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.service_principals.item.synchronization.jobs.item.restart.restart_request_builder import RestartRequestBuilder
from msgraph.generated.serviceprincipals.item.synchronization.jobs.item.restart.restart_post_request_body import RestartPostRequestBody
from msgraph.generated.models.synchronization_job_restart_criteria import SynchronizationJobRestartCriteria

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