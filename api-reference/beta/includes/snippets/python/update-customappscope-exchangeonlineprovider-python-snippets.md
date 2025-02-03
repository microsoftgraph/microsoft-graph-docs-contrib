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
	custom_attributes = CustomAppScopeAttributesDictionary(
		additional_data = {
				"recipient_filter" : "City -eq 'Seattle'",
		}
	),
)

result = await graph_client.role_management.exchange.custom_app_scopes.by_custom_app_scope_id('customAppScope-id').patch(request_body)


```