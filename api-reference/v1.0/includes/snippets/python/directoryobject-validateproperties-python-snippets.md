---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.validate_properties_post_request_body import ValidatePropertiesPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ValidatePropertiesPostRequestBody(
	entity_type = "Group",
	display_name = "Myprefix_test_mysuffix",
	mail_nickname = "Myprefix_test_mysuffix",
	on_behalf_of_user_id = UUID("onBehalfOfUserId-value"),
)

await graph_client.directory_objects.validate_properties.post(request_body)


```