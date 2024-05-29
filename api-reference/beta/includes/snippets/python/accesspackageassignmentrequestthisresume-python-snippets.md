---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identitygovernance.entitlementmanagement.accesspackageassignmentrequests.item.resume.resume_post_request_body import ResumePostRequestBody
from msgraph_beta.generated.models.access_package_assignment_request_callback_data import AccessPackageAssignmentRequestCallbackData
from msgraph_beta.generated.models.access_package_custom_extension_stage import AccessPackageCustomExtensionStage

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