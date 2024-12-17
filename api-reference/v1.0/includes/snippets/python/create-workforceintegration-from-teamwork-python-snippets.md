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
from msgraph.generated.models.eligibility_filtering_enabled_entities import EligibilityFilteringEnabledEntities
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WorkforceIntegration(
	display_name = "ABCWorkforceIntegration",
	api_version = 1,
	is_active = True,
	encryption = WorkforceIntegrationEncryption(
		protocol = WorkforceIntegrationEncryptionProtocol.SharedSecret,
		secret = "My Secret",
	),
	url = "https://ABCWorkforceIntegration.com/Contoso/",
	supported_entities = WorkforceIntegrationSupportedEntities.Shift | WorkforceIntegrationSupportedEntities.SwapRequest,
	eligibility_filtering_enabled_entities = EligibilityFilteringEnabledEntities.SwapRequest,
)

result = await graph_client.teamwork.workforce_integrations.post(request_body)


```