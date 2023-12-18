---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

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