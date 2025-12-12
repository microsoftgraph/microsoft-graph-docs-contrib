---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.snapshots.import_snapshot.import_snapshot_post_request_body import ImportSnapshotPostRequestBody
from msgraph_beta.generated.models.cloud_pc_snapshot_import_action_detail import CloudPcSnapshotImportActionDetail
from msgraph_beta.generated.models.cloud_pc_snapshot_import_source_type import CloudPcSnapshotImportSourceType
from msgraph_beta.generated.models.cloud_pc_snapshot_import_file_type import CloudPcSnapshotImportFileType
from msgraph_beta.generated.models.cloud_pc_storage_blob_detail import CloudPcStorageBlobDetail
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ImportSnapshotPostRequestBody(
	source_files = [
		CloudPcSnapshotImportActionDetail(
			source_type = CloudPcSnapshotImportSourceType.AzureStorageAccount,
			file_type = CloudPcSnapshotImportFileType.DataFile,
			storage_blob_info = CloudPcStorageBlobDetail(
				storage_account_id = "/subscriptions/subscription-id/resourceGroups/resource-group-name/providers/Microsoft.Storage/storageAccounts/account-name",
				container_name = "myContainer",
				additional_data = {
						"blob_name" : "snapshotForCloudPc.vhd",
				}
			),
		),
		CloudPcSnapshotImportActionDetail(
			source_type = CloudPcSnapshotImportSourceType.AzureStorageAccount,
			file_type = CloudPcSnapshotImportFileType.VirtualMachineGuestState,
			storage_blob_info = CloudPcStorageBlobDetail(
				storage_account_id = "/subscriptions/subscription-idresourceGroups/resource-group-name/providers/Microsoft.Storage/storageAccounts/account-name",
				container_name = "myContainer",
				additional_data = {
						"blob_name" : "virtualMachineGuestState.vhd",
				}
			),
		),
	],
	assigned_user_id = "93aff428-61f2-467f-a879-1102af6fd4a8",
)

result = await graph_client.device_management.virtual_endpoint.snapshots.import_snapshot.post(request_body)


```