---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.allowed_value import AllowedValue

graph_client = GraphServiceClient(credentials, scopes)

request_body = AllowedValue(
	is_active = False,
)

result = await graph_client.directory.custom_security_attribute_definitions.by_custom_security_attribute_definition_id('customSecurityAttributeDefinition-id').allowed_values.by_allowed_value_id('allowedValue-id').patch(request_body)


```