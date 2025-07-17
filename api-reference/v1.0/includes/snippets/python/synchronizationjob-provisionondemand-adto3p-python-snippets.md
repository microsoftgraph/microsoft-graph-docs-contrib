---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.serviceprincipals.item.synchronization.jobs.item.provision_on_demand.provision_on_demand_post_request_body import ProvisionOnDemandPostRequestBody
from msgraph.generated.models.synchronization_job_application_parameters import SynchronizationJobApplicationParameters
from msgraph.generated.models.synchronization_job_subject import SynchronizationJobSubject
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ProvisionOnDemandPostRequestBody(
	parameters = [
		SynchronizationJobApplicationParameters(
			subjects = [
				SynchronizationJobSubject(
					object_id = "9bb0f679-a883-4a6f-8260-35b491b8b8c8",
					object_type_name = "User",
				),
			],
			rule_id = "ea807875-5618-4f0a-9125-0b46a05298ca",
		),
	],
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').synchronization.jobs.by_synchronization_job_id('synchronizationJob-id').provision_on_demand.post(request_body)


```