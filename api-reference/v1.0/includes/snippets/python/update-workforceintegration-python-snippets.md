---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.workforce_integration import WorkforceIntegration
from msgraph.generated.models.workforce_integration_encryption import WorkforceIntegrationEncryption

graph_client = GraphServiceClient(credentials, scopes)

request_body = WorkforceIntegration(
	display_name = "displayName-value",
	api_version = 99,
	encryption = WorkforceIntegrationEncryption(
		protocol = WorkforceIntegrationEncryptionProtocol.SharedSecret,
		secret = "secret-value",
	),
	is_active = True,
	url = "url-value",
	supported_entities = WorkforceIntegrationSupportedEntities.None,
)

result = await graph_client.teamwork.workforce_integrations.by_workforce_integration_id('workforceIntegration-id').patch(request_body)


```