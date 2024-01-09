---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

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