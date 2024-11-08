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
			rule_id = "6c409270-f78a-4bc6-af23-7cf3ab6482fe",
			subjects = [
				SynchronizationJobSubject(
					object_id = "CN=AdeleV,CN=Users,DC=corp,DC=chicago,DC=com",
					object_type_name = "user",
				),
			],
		),
	],
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').synchronization.jobs.by_synchronization_job_id('synchronizationJob-id').provision_on_demand.post(request_body)


```