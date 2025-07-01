---
title: "Create fileStorageContainerTypeAppPermissionGrant"
description: "Create a new fileStorageContainerTypeAppPermissionGrant object."
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Create fileStorageContainerTypeAppPermissionGrant

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new fileStorageContainerTypeAppPermissionGrant object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainertyperegistration-post-applicationpermissiongrants-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainertyperegistration-post-applicationpermissiongrants-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /storage/fileStorage/containerTypeRegistrations/{fileStorageContainerTypeRegistrationId}/applicationPermissionGrants
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) object.

You can specify the following properties when creating a **fileStorageContainerTypeAppPermissionGrant**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|appId|String|**TODO: Add Description** Required.|
|delegatedPermissions|fileStorageContainerTypeAppPermission collection|**TODO: Add Description**. The possible values are: `none`, `readContent`, `writeContent`, `manageContent`, `create`, `delete`, `read`, `write`, `enumeratePermissions`, `addPermissions`, `updatePermissions`, `deletePermissions`, `deleteOwnPermission`, `managePermissions`, `full`, `unknownFutureValue`. Optional.|
|applicationPermissions|fileStorageContainerTypeAppPermission collection|**TODO: Add Description**. The possible values are: `none`, `readContent`, `writeContent`, `manageContent`, `create`, `delete`, `read`, `write`, `enumeratePermissions`, `addPermissions`, `updatePermissions`, `deletePermissions`, `deleteOwnPermission`, `managePermissions`, `full`, `unknownFutureValue`. Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_filestoragecontainertypeapppermissiongrant_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/storage/fileStorage/containerTypeRegistrations/{fileStorageContainerTypeRegistrationId}/applicationPermissionGrants
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fileStorageContainerTypeAppPermissionGrant",
  "appId": "469f9a3c-809e-a18c-5dfc-c20e628f65c4",
  "delegatedPermissions": [
    "String"
  ],
  "applicationPermissions": [
    "String"
  ]
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fileStorageContainerTypeAppPermissionGrant"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fileStorageContainerTypeAppPermissionGrant",
  "appId": "469f9a3c-809e-a18c-5dfc-c20e628f65c4",
  "delegatedPermissions": [
    "String"
  ],
  "applicationPermissions": [
    "String"
  ]
}
```

