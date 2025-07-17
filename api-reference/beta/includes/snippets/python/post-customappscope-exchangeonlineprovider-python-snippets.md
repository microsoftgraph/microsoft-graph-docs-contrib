---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.custom_app_scope import CustomAppScope
from msgraph_beta.generated.models.custom_app_scope_attributes_dictionary import CustomAppScopeAttributesDictionary
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CustomAppScope(
	type = "RecipientScope",
	display_name = "Protected Exec Users",
	custom_attributes = CustomAppScopeAttributesDictionary(
		additional_data = {
				"exclusive" : False,
				"recipient_filter" : "Title -like 'VP*'",
		}
	),
)

result = await graph_client.role_management.exchange.custom_app_scopes.post(request_body)


```