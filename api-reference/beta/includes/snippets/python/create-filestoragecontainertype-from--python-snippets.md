---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.file_storage_container_type import FileStorageContainerType
from msgraph_beta.generated.models.file_storage_container_billing_classification import FileStorageContainerBillingClassification
from msgraph_beta.generated.models.file_storage_container_type_settings import FileStorageContainerTypeSettings
from msgraph_beta.generated.models.file_storage_container_type_settings_override import FileStorageContainerTypeSettingsOverride
from msgraph_beta.generated.models.file_storage_container_type_agent_settings import FileStorageContainerTypeAgentSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = FileStorageContainerType(
	name = "Test Trial Container",
	owning_app_id = UUID("11335700-9a00-4c00-84dd-0c210f203f00"),
	billing_classification = FileStorageContainerBillingClassification.Trial,
	settings = FileStorageContainerTypeSettings(
		is_item_versioning_enabled = True,
		is_sharing_restricted = False,
		consuming_tenant_overridables = FileStorageContainerTypeSettingsOverride.IsSearchEnabled | FileStorageContainerTypeSettingsOverride.ItemMajorVersionLimit,
		agent = FileStorageContainerTypeAgentSettings(
			chat_embed_allowed_hosts = [
				"https://localhost:3000",
			],
		),
	),
)

result = await graph_client.storage.file_storage.container_types.post(request_body)


```