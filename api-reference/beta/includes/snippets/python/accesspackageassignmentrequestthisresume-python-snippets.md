---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ResumePostRequestBody()
request_body.source = 'Contoso.SodCheckProcess'

request_body.type = 'microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated'

data = AccessPackageAssignmentRequestCallbackData()
data.@odata_type = 'microsoft.graph.accessPackageAssignmentRequestCallbackData'

data.stage(AccessPackageCustomExtensionStage.AssignmentRequestCreated('accesspackagecustomextensionstage.assignmentrequestcreated'))

data.custom_extension_stage_instance_id = '957d0c50-466b-4840-bb5b-c92cea7141ff'

data.custom_extension_stage_instance_detail = 'This user is all verified'


request_body.data = data



await client.identity_governance.entitlement_management.acce_package_assignment_requests.by_acce_package_assignment_request_id('accessPackageAssignmentRequest-id').resume.post(request_body = request_body)


```