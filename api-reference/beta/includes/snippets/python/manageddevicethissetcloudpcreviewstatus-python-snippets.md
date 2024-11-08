---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.manageddevices.item.set_cloud_pc_review_status.set_cloud_pc_review_status_post_request_body import SetCloudPcReviewStatusPostRequestBody
from msgraph_beta.generated.models.cloud_pc_review_status import CloudPcReviewStatus
from msgraph_beta.generated.models.cloud_pc_user_access_level import CloudPcUserAccessLevel
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SetCloudPcReviewStatusPostRequestBody(
	review_status = CloudPcReviewStatus(
		in_review = True,
		user_access_level = CloudPcUserAccessLevel.Restricted,
		azure_storage_account_id = "/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview",
	),
)

await graph_client.device_management.managed_devices.by_managed_device_id('managedDevice-id').set_cloud_pc_review_status.post(request_body)


```