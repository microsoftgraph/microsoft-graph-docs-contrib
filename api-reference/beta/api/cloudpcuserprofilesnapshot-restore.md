---
title: "cloudPcUserProfileSnapshot: restore"
description: "Restore a user settings persistence profile from the bound snapshot as a long-running operation."
author: "weicc"
ms.date: 09/07/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPcUserProfileSnapshot: restore

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore a user settings persistence profile from the bound snapshot as a long-running operation. This action is bound to a single [cloudPcUserProfileSnapshot](../resources/cloudpcuserprofilesnapshot.md) entity, identified by its **id** in the URL. This API overwrites the current profile data with the snapshot's data. Restore can happen within the same policy or across different policies.

> [!CAUTION]
> This overwrites the current profile data with the snapshot's data.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcuserprofilesnapshot_restore_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcuserprofilesnapshot-restore-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
POST /deviceManagement/virtualEndpoint/provisioningPolicies/{cloudPcProvisioningPolicy-id}/assignments/{cloudPcProvisioningPolicyAssignment-id}/userSettingsPersistenceDetail/userProfileSnapshots/{cloudPcUserProfileSnapshot-id}/restore
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
|targetAssignmentId|String|Required. Indicates the unique identifier of the target assignment to restore the profile into. The restore can target a different assignment than the original. Not nullable.|

## Response

If successful, this action returns a `202 Accepted` response code. It doesn't return anything in the response body.

## Examples

### Request

The following example restores the selected snapshot to a different assignment.

<!-- { "blockType": "request", "name": "restore_cloudpcuserprofilesnapshot" } -->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/b0c2d35f-3385-46c8-a6f5-6c3dfad7708b/assignments/64ff06de-9c00-4a5a-98b5-7f5abe26bfd9/userSettingsPersistenceDetail/userProfileSnapshots/a1b2c3d4-e5f6-7890-abcd-ef1234567890/restore
Content-Type: application/json

{
  "targetAssignmentId": "e9d4eb36-7056-4161-93a4-2d6f8d20d6c0"
}
```

### Response

The following example shows the response.

<!-- { "blockType": "response", "name": "restore_cloudpcuserprofilesnapshot" } -->
``` http
HTTP/1.1 202 Accepted
```
