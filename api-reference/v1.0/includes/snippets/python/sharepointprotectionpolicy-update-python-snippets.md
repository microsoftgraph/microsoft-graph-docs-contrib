---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.share_point_protection_policy import SharePointProtectionPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SharePointProtectionPolicy(
	display_name = "SharePoint Policy - Inadvertent data loss",
	additional_data = {
			"site_protection_units@delta" : [
				{
						"site_id" : "contoso.sharepoint.com,bf6fb551-d508-4946-a439-b2a6154fc1d9,65a04b8b-1f44-442b-a1fc-9e5852fb946c",
				},
				{
						"site_id" : "contoso.sharepoint.com,d9ecf079-9b13-4376-ac5d-f242dda55626,746dbcc1-fa2b-4120-b657-2670bae5bb6f",
				},
				{
						"site_id" : "contoso.sharepoint.com,fd1a778f-263e-4c43-acdf-d5c2519d80eb,c06016db-dfec-4f79-83a1-09c6dbfd7022",
				},
				{
						"site_id" : "contoso.sharepoint.com,bf6fb551-d508-4946-a439-b2a6154fc1d9,65a04b8b-1f44-442b-a1fc-9e5852fb946c",
				},
				{
						"@removed" : {
								"reason" : "changed",
						},
						"id" : "99954f18-c8ec-4b62-85bf-cdf3b70b140e",
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

result = await graph_client.solutions.backup_restore.share_point_protection_policies.by_share_point_protection_policy_id('sharePointProtectionPolicy-id').patch(request_body)


```