---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ResumePostRequestBody(
	source = "Contoso.SodCheckProcess",
	type = "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated",
	data = AccessPackageAssignmentRequestCallbackData(
		odata_type = "microsoft.graph.accessPackageAssignmentRequestCallbackData",
		stage = AccessPackageCustomExtensionStage.AssignmentRequestCreated,
		custom_extension_stage_instance_id = "957d0c50-466b-4840-bb5b-c92cea7141ff",
		custom_extension_stage_instance_detail = "This user is all verified",
	),
)

await graph_client.identity_governance.entitlement_management.access_package_assignment_requests.by_access_package_assignment_request_id('accessPackageAssignmentRequest-id').resume.post(request_body)


```