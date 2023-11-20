---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

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