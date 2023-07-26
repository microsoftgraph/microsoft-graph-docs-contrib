---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BulkSetCloudPcReviewStatusPostRequestBody()
request_body.ManagedDeviceIds(['30d0e128-de93-41dc-89ec-33d84bb662a0', '7c82a3e3-9459-44e4-94d9-b92f93bf78dd', ])

review_status = CloudPcReviewStatus()
review_status.in_review = True

review_status.useraccesslevel(CloudPcUserAccessLevel.Restricted('cloudpcuseraccesslevel.restricted'))

review_status.azure_storage_account_id = '/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview'


request_body.review_status = review_status



result = await client.device_management.managed_devices.bulk_set_cloud_pc_review_status.post(request_body = request_body)


```