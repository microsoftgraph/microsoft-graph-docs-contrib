---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EBookInstallSummary()
request_body.@odata_type = '#microsoft.graph.eBookInstallSummary'

request_body.InstalledDeviceCount = 4

request_body.FailedDeviceCount = 1

request_body.NotInstalledDeviceCount = 7

request_body.InstalledUserCount = 2

request_body.FailedUserCount = 15

request_body.NotInstalledUserCount = 5




result = await client.device_app_management.managed_e_books.by_managed_e_book_id('managedEBook-id').install_summary.patch(request_body = request_body)


```