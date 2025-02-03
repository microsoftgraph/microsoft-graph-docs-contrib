---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.solutions.backup_restore.exchange_protection_policies.item.exchange_protection_policy_item_request_builder import ExchangeProtectionPolicyItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.models.exchange_protection_policy import ExchangeProtectionPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExchangeProtectionPolicy(
	display_name = "Exchange Policy - Inadvertent data loss",
	additional_data = {
			"mailbox_protection_units@delta" : [
				{
						"directory_object_id" : "1b014d8c-71fe-4d00-a01a-31850bc5b32c",
				},
				{
						"directory_object_id" : "2b014d8c-71fe-4d00-a01a-31850bc5b32c",
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
			],
	}
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Authorization", "Bearer <Access-Token>")


result = await graph_client.solutions.backup_restore.exchange_protection_policies.by_exchange_protection_policy_id('exchangeProtectionPolicy-id').patch(request_body, request_configuration = request_configuration)


```