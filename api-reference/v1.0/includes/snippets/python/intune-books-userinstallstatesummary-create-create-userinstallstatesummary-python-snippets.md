---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UserInstallStateSummary()
request_body.@odata_type = '#microsoft.graph.userInstallStateSummary'

request_body.user_name = 'User Name value'

request_body.InstalledDeviceCount = 4

request_body.FailedDeviceCount = 1

request_body.NotInstalledDeviceCount = 7




result = await client.device_app_management.managed_e_books.by_managed_e_book_id('managedEBook-id').user_state_summary.post(request_body = request_body)


```