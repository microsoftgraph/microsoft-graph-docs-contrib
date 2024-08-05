---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.workforce_integration import WorkforceIntegration
from msgraph_beta.generated.models.workforce_integration_encryption import WorkforceIntegrationEncryption
from msgraph_beta.generated.models.workforce_integration_encryption_protocol import WorkforceIntegrationEncryptionProtocol
from msgraph_beta.generated.models.workforce_integration_supported_entities import WorkforceIntegrationSupportedEntities

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
	supports = WorkforceIntegrationSupportedEntities.None,
)

result = await graph_client.teamwork.workforce_integrations.post(request_body)


```