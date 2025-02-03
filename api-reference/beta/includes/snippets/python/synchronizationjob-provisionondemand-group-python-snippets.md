---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.serviceprincipals.item.synchronization.jobs.item.provision_on_demand.provision_on_demand_post_request_body import ProvisionOnDemandPostRequestBody
from msgraph_beta.generated.models.synchronization_job_application_parameters import SynchronizationJobApplicationParameters
from msgraph_beta.generated.models.synchronization_job_subject import SynchronizationJobSubject
from msgraph_beta.generated.models.synchronization_linked_objects import SynchronizationLinkedObjects
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ProvisionOnDemandPostRequestBody(
	parameters = [
		SynchronizationJobApplicationParameters(
			rule_id = "33f7c90d-bf71-41b1-bda6-aaf0ddbee5d8#V2",
			subjects = [
				SynchronizationJobSubject(
					object_id = "8213fd99-d6b6-417b-8e13-af6334856215",
					object_type_name = "Group",
					links = SynchronizationLinkedObjects(
						members = [
							SynchronizationJobSubject(
								object_id = "cbc86211-6ada-4803-b73f-8039cf56d8a2",
								object_type_name = "User",
							),
							SynchronizationJobSubject(
								object_id = "2bc86211-6ada-4803-b73f-8039cf56d8a2",
								object_type_name = "User",
							),
						],
					),
				),
			],
		),
	],
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').synchronization.jobs.by_synchronization_job_id('synchronizationJob-id').provision_on_demand.post(request_body)


```