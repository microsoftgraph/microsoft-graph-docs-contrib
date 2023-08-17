---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = IosVppEBookAssignment()
request_body.@odata_type = '#microsoft.graph.iosVppEBookAssignment'

target = DeviceAndAppManagementAssignmentTarget()
target.@odata_type = 'microsoft.graph.deviceAndAppManagementAssignmentTarget'


request_body.target = target
request_body.installintent(InstallIntent.Required('installintent.required'))




result = await client.device_app_management.managed_e_books.by_managed_e_book_id('managedEBook-id').assignments.by_assignment_id('managedEBookAssignment-id').patch(request_body = request_body)


```