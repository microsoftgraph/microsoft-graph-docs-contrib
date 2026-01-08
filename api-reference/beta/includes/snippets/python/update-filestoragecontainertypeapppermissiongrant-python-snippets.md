---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.file_storage_container_type_app_permission_grant import FileStorageContainerTypeAppPermissionGrant
from msgraph_beta.generated.models.file_storage_container_type_app_permission import FileStorageContainerTypeAppPermission
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = FileStorageContainerTypeAppPermissionGrant(
	application_permissions = [
		FileStorageContainerTypeAppPermission.Full,
	],
)

result = await graph_client.storage.file_storage.container_type_registrations.by_file_storage_container_type_registration_id('fileStorageContainerTypeRegistration-id').application_permission_grants.by_file_storage_container_type_app_permission_grant_app_id('fileStorageContainerTypeAppPermissionGrant-appId').patch(request_body)


```