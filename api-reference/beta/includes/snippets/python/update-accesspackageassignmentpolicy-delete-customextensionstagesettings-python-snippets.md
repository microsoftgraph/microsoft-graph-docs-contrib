---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentPolicy()
request_body.id = '5540a08f-8ab5-43f6-a923-015275799197'

request_body.display_name = 'policy with access package custom workflow extension'

request_body.description = 'Run specified access package custom workflow extension at different stages.'

request_body.access_package_id = 'ba5807c7-2aa9-4c8a-907e-4a17ee587500'

request_body.requestApprovalSettings=null

requestor_settings = RequestorSettings()
requestor_settings.accept_requests = True

requestor_settings.scope_type = 'AllExistingDirectorySubjects'

requestor_settings.AllowedRequestors([])


request_body.requestor_settings = requestor_settings
request_body.accessReviewSettings=null

request_body.CustomExtensionHandlers([])

additional_data = [
'expiration' => request_body = Expiration()
request_body.type = 'afterDuration'

request_body.duration = 'P365D'


request_body.expiration = expiration

];
request_body.additional_data(additional_data)





result = await client.identity_governance.entitlement_management.acce_package_assignment_policies.by_acces_package_assignment_policie_id('accessPackageAssignmentPolicy-id').put(request_body = request_body)


```