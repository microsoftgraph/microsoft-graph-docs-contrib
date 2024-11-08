---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.workforce_integration import WorkforceIntegration
from msgraph.generated.models.workforce_integration_encryption import WorkforceIntegrationEncryption
from msgraph.generated.models.workforce_integration_encryption_protocol import WorkforceIntegrationEncryptionProtocol
from msgraph.generated.models.workforce_integration_supported_entities import WorkforceIntegrationSupportedEntities
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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

result = await graph_client.teamwork.workforce_integrations.post(request_body)


```