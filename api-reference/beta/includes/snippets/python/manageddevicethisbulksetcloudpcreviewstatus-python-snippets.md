---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.bulk_set_cloud_pc_review_status_post_request_body import BulkSetCloudPcReviewStatusPostRequestBody
from msgraph.generated.models.cloud_pc_review_status import CloudPcReviewStatus

graph_client = GraphServiceClient(credentials, scopes)

request_body = BulkSetCloudPcReviewStatusPostRequestBody(
	managed_device_ids = [
		"30d0e128-de93-41dc-89ec-33d84bb662a0",
		"7c82a3e3-9459-44e4-94d9-b92f93bf78dd",
	],
	review_status = CloudPcReviewStatus(
		in_review = True,
		user_access_level = CloudPcUserAccessLevel.Restricted,
		azure_storage_account_id = "/subscriptions/f68bd846-16ad-4b51-a7c6-c84944a3367c/resourceGroups/Review/providers/Microsoft.Storage/storageAccounts/snapshotsUnderReview",
	),
)

result = await graph_client.device_management.managed_devices.bulk_set_cloud_pc_review_status.post(request_body)


```