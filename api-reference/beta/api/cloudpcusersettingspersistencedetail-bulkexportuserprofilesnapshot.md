---
title: "cloudPCUserSettingsPersistenceDetail: bulkExportUserProfileSnapshot"
description: "Export selected snapshots to a customer-managed Azure storage account as a long-running operation."
author: "weicc"
ms.date: 09/07/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPCUserSettingsPersistenceDetail: bulkExportUserProfileSnapshot

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Export selected snapshots to a customer-managed Azure storage account as a long-running operation. This action is bound to the [cloudPCUserSettingsPersistenceDetail](../resources/cloudpcusersettingspersistencedetail.md) entity. Use [Get subscriptions](../api/cloudpcsnapshot-getsubscriptions.md) and [Get storage accounts](../api/cloudpcsnapshot-getstorageaccounts.md) to discover available storage accounts before you export the snapshots.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcusersettingspersistencedetail_bulkexportuserprofilesnapshot_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcusersettingspersistencedetail-bulkexportuserprofilesnapshot-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
POST /deviceManagement/virtualEndpoint/provisioningPolicies/{cloudPcProvisioningPolicy-id}/assignments/{cloudPcProvisioningPolicyAssignment-id}/userSettingsPersistenceDetail/bulkExportUserProfileSnapshot
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

|Parameter|Type|Description|
|:---|:---|:---|
|snapshotIds|String collection|Required. Indicates the list of unique identifiers for the snapshots to export. The collection must contain at least one and at most 50 items. Not nullable.|
|storageDetail|[cloudPcUserProfileSnapshotStorageDetail](../resources/cloudpcuserprofilesnapshotstoragedetail.md)|Indicates the target storage details for the snapshot export, including the storage account ID, container name, and access tier. Not nullable.|

## Response

If successful, this action returns a `202 Accepted` response code and a [cloudPcUserProfileSnapshotExportBulkActionResult](../resources/cloudpcuserprofilesnapshotexportbulkactionresult.md) object in the response body, derived from [cloudPcUserProfileBulkActionResult](../resources/cloudpcuserprofilebulkactionresult.md).

Failed items are snapshot IDs from the **snapshotIds** request parameter. The inherited **totalCount** and **failedCount** properties count snapshot IDs.

## Examples

### Request

The following example exports a snapshot to a blob container in the selected storage account.

<!-- { "blockType": "request", "name": "bulkexport_cloudpcuserprofilesnapshot" } -->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/b0c2d35f-3385-46c8-a6f5-6c3dfad7708b/assignments/64ff06de-9c00-4a5a-98b5-7f5abe26bfd9/userSettingsPersistenceDetail/bulkExportUserProfileSnapshot
Content-Type: application/json

{
  "snapshotIds": ["a1b2c3d4-e5f6-7890-abcd-ef1234567890"],
  "storageDetail": {
    "storageAccountId": "/subscriptions/cb6ad4c4-8a17-4245-a644-e4436b1ee204/resourceGroups/profile-recovery/providers/Microsoft.Storage/storageAccounts/contosoprofiles",
    "containerName": "profile-snapshots",
    "accessTier": "cool"
  }
}
```

### Response

The following response indicates that no snapshot IDs were rejected during validation. It doesn't indicate that export has completed.

<!-- { "blockType": "response", "name": "bulkexport_cloudpcuserprofilesnapshot", "@odata.type": "microsoft.graph.cloudPcUserProfileSnapshotExportBulkActionResult" } -->
``` http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcUserProfileSnapshotExportBulkActionResult",
  "totalCount": 1,
  "failedCount": 0,
  "failedSnapshotIds": []
}
```
