---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.custom_app_scope import CustomAppScope
from msgraph.generated.models.custom_app_scope_attributes_dictionary import CustomAppScopeAttributesDictionary

graph_client = GraphServiceClient(credentials, scopes)

request_body = CustomAppScope(
	custom_attributes = CustomAppScopeAttributesDictionary(
		additional_data = {
				"recipient_filter" : "City -eq 'Seattle'",
		}
	),
)

result = await graph_client.role_management.exchange.custom_app_scopes.by_custom_app_scope_id('customAppScope-id').patch(request_body)


```