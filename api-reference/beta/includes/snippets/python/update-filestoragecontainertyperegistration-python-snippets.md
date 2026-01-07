---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.file_storage_container_type_registration import FileStorageContainerTypeRegistration
from msgraph_beta.generated.models.file_storage_container_type_registration_settings import FileStorageContainerTypeRegistrationSettings
from msgraph_beta.generated.models.sharing_capabilities import SharingCapabilities
from msgraph_beta.generated.models.file_storage_container_type_app_permission_grant import FileStorageContainerTypeAppPermissionGrant
from msgraph_beta.generated.models.file_storage_container_type_app_permission import FileStorageContainerTypeAppPermission
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = FileStorageContainerTypeRegistration(
	settings = FileStorageContainerTypeRegistrationSettings(
		sharing_capability = SharingCapabilities.ExternalUserAndGuestSharing,
		is_search_enabled = False,
	),
	application_permission_grants = [
		FileStorageContainerTypeAppPermissionGrant(
			app_id = "33225700-9a00-4c00-84dd-0c210f203f01",
			delegated_permissions = [
				FileStorageContainerTypeAppPermission.Full,
			],
			application_permissions = [
				FileStorageContainerTypeAppPermission.None,
			],
		),
	],
	etag = "RVRhZw==",
)

result = await graph_client.storage.file_storage.container_type_registrations.by_file_storage_container_type_registration_id('fileStorageContainerTypeRegistration-id').patch(request_body)


```