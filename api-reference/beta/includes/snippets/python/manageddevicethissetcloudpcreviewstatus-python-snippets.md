---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SetCloudPcReviewStatusPostRequestBody()
review_status = CloudPcReviewStatus()
review_status.in_review = True

review_status.useraccesslevel(CloudPcUserAccessLevel.Restricted('cloudpcuseraccesslevel.restricted'))

review_status.azure_storage_account_id = '/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview'


request_body.review_status = review_status



await client.device_management.managed_devices.by_managed_device_id('managedDevice-id').set_cloud_pc_review_status.post(request_body = request_body)


```