---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identitygovernance.entitlementmanagement.accesspackageassignmentrequests.item.resume.resume_post_request_body import ResumePostRequestBody
from msgraph_beta.generated.models.access_package_request_approval_stage_callback_configuration import AccessPackageRequestApprovalStageCallbackConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ResumePostRequestBody(
	source = "Contoso.AADProcess",
	type = "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated",
	data = AccessPackageRequestApprovalStageCallbackConfiguration(
		odata_type = "microsoft.graph.accessPackageRequestApprovalStageCallbackConfiguration",
		additional_data = {
				"stage" : "assignmentRequestCreated",
				"custom_extension_stage_instance_id" : "7bf58d34-b3f9-4bae-8deb-abcd25cddea1",
				"custom_extension_stage_instance_detail" : "Completed.",
		}
	),
)

await graph_client.identity_governance.entitlement_management.access_package_assignment_requests.by_access_package_assignment_request_id('accessPackageAssignmentRequest-id').resume.post(request_body)


```