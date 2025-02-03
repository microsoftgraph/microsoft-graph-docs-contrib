---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.service_principals.item.synchronization.jobs.item.restart.restart_request_builder import RestartRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph.generated.serviceprincipals.item.synchronization.jobs.item.restart.restart_post_request_body import RestartPostRequestBody
from msgraph.generated.models.synchronization_job_restart_criteria import SynchronizationJobRestartCriteria
from msgraph.generated.models.synchronization_job_restart_scope import SynchronizationJobRestartScope
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RestartPostRequestBody(
	criteria = SynchronizationJobRestartCriteria(
		reset_scope = SynchronizationJobRestartScope.Watermark | SynchronizationJobRestartScope.Escrows | SynchronizationJobRestartScope.QuarantineState,
	),
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Authorization", "Bearer <token>")


await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').synchronization.jobs.by_synchronization_job_id('synchronizationJob-id').restart.post(request_body, request_configuration = request_configuration)


```