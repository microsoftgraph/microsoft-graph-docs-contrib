---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.one_drive_for_business_protection_policy import OneDriveForBusinessProtectionPolicy

graph_client = GraphServiceClient(credentials, scopes)

request_body = OneDriveForBusinessProtectionPolicy(
	display_name = "One Drive  Policy - Inadvertent data loss",
	additional_data = {
			"drive_protection_units@delta" : [
				{
						"user_id" : "1b014d8c-71fe-4d00-a01a-31850bc5b32c",
				},
				{
						"user_id" : "2b014d8c-71fe-4d00-a01a-31850bc5b32c",
				},
				{
						"@removed" : {
								"reason" : "changed",
						},
						"id" : "4267e382-71a9-4c07-bef7-bda97e09c0d2",
				},
				{
						"@removed" : {
								"reason" : "changed",
						},
						"id" : "3667e382-71a9-4c07-bef7-bda97e09c0d2",
				},
			],
	}
)

result = await graph_client.solutions.backup_restore.one_drive_for_business_protection_policies.by_one_drive_for_business_protection_policy_id('oneDriveForBusinessProtectionPolicy-id').patch(request_body)


```