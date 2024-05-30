---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.custom_security_attribute_definition import CustomSecurityAttributeDefinition

graph_client = GraphServiceClient(credentials, scopes)

request_body = CustomSecurityAttributeDefinition(
	description = "Target completion date (YYYY/MM/DD)",
)

result = await graph_client.directory.custom_security_attribute_definitions.by_custom_security_attribute_definition_id('customSecurityAttributeDefinition-id').patch(request_body)


```