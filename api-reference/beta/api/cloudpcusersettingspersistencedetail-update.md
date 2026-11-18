---
title: "Update cloudPCUserSettingsPersistenceDetail"
description: "Update the specific cloudPCUserSettingsPersistenceDetail object for the selected policy assignment."
author: "weicc"
ms.date: 09/07/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# Update cloudPCUserSettingsPersistenceDetail

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the specific [cloudPCUserSettingsPersistenceDetail](../resources/cloudpcusersettingspersistencedetail.md) object for the selected policy assignment.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcusersettingspersistencedetail_update_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcusersettingspersistencedetail-update-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
PATCH /deviceManagement/virtualEndpoint/provisioningPolicies/{cloudPcProvisioningPolicy-id}/assignments/{cloudPcProvisioningPolicyAssignment-id}/userSettingsPersistenceDetail
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|autoCleanupDetail|[cloudPCUserSettingsPersistenceAutoCleanupDetail](../resources/cloudpcusersettingspersistenceautocleanupdetail.md)|The specific settings which enables auto cleanup inactive detached profiles for user settings persistence. The default value is `null`.|
|snapshotConfiguration|[cloudPcUserSettingsPersistenceSnapshotConfiguration](../resources/cloudpcusersettingspersistencesnapshotconfiguration.md)|The specific settings for automatic snapshots of user settings persistence profiles. The default value is `null`.|
|storageConfiguration|[cloudPcStorageConfiguration](../resources/cloudpcstorageconfiguration.md)|Configures the storage behavior for persisted user settings. When **storageSizingType** is `fixed`, **allocatedStorageSizeCategory** determines the hard storage cap. When `dynamic`, **allocatedStorageSizeCategory** represents the maximum the profile can grow to based on usage. Only applicable for `sharedByEntraGroup` provisioning policies.|

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Examples

### Request

The following example configures fixed storage, disables automatic cleanup, and sets the automatic snapshot interval to 14 days.

<!-- { "blockType": "request", "name": "update_cloudpcusersettingspersistencedetail" } -->
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/b0c2d35f-3385-46c8-a6f5-6c3dfad7708b/assignments/64ff06de-9c00-4a5a-98b5-7f5abe26bfd9/userSettingsPersistenceDetail
Content-Type: application/json

{
  "storageConfiguration": {
    "storageSizingType": "fixed",
    "allocatedStorageSizeCategory": "sixteenGB"
  },
  "autoCleanupDetail": {
    "autoCleanupMode": "none",
    "inactiveProfileRetentionDays": null
  },
  "snapshotConfiguration": {
    "autoSnapshotFrequencyInDays": 14
  }
}
```

### Response

The following example shows the response.

<!-- { "blockType": "response", "name": "update_cloudpcusersettingspersistencedetail" } -->
``` http
HTTP/1.1 204 No Content
```
