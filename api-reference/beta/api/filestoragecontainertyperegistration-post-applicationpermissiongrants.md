---
title: "Create fileStorageContainerTypeAppPermissionGrant"
description: "Create a new fileStorageContainerTypeAppPermissionGrant object in a fileStorageContainerTypeRegistration."
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Create fileStorageContainerTypeAppPermissionGrant

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) object in a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainertyperegistration-post-applicationpermissiongrants-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainertyperegistration-post-applicationpermissiongrants-permissions.md)]

>**Note:**
> * When delegated tokens are used, either the SharePoint Embedded admin role or the Global admin role is required.
> * If the `FileStorageContainerTypeReg.Selected` permission is used, changes are limited to [registrations](../resources/filestoragecontainertyperegistration.md) owned by the application that makes the call.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PUT /storage/fileStorage/containerTypeRegistrations/{fileStorageContainerTypeRegistrationId}/applicationPermissionGrants/{appId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) object. Don't include the **appId** in the body.

You can specify the following properties when you create a **fileStorageContainerTypeAppPermissionGrant**.

|Property|Type|Description|
|:---|:---|:---|
|applicationPermissions|fileStorageContainerTypeAppPermission collection|Allowed [permissions](/sharepoint/dev/embedded/development/auth#container-type-application-permissions) when you use application tokens. The possible values are: `none`, `readContent`, `writeContent`, `manageContent`, `create`, `delete`, `read`, `write`, `enumeratePermissions`, `addPermissions`, `updatePermissions`, `deletePermissions`, `deleteOwnPermission`, `managePermissions`, `full`, `unknownFutureValue`. Optional.|
|delegatedPermissions|fileStorageContainerTypeAppPermission collection|Allowed [permissions](/sharepoint/dev/embedded/development/auth#container-type-application-permissions) when you use delegated tokens. The possible values are: `none`, `readContent`, `writeContent`, `manageContent`, `create`, `delete`, `read`, `write`, `enumeratePermissions`, `addPermissions`, `updatePermissions`, `deletePermissions`, `deleteOwnPermission`, `managePermissions`, `full`, `unknownFutureValue`. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) object in the response body.

## Examples

### Request
The following example shows how to add a new permission grant to a registration.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_filestoragecontainertypeapppermissiongrant_from_"
}
-->
```http
PUT https://graph.microsoft.com/beta/storage/fileStorage/containerTypeRegistrations/33225700-9a00-4c00-84dd-0c210f203f01/applicationPermissionGrants/11335700-9a00-4c00-84dd-0c210f203f00
Content-Type: application/json

{
  "delegatedPermissions": ["readContent", "writeContent"],
  "applicationPermissions": ["full"]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-filestoragecontainertypeapppermissiongrant-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fileStorageContainerTypeAppPermissionGrant"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fileStorageContainerTypeAppPermissionGrant",
  "appId": "11335700-9a00-4c00-84dd-0c210f203f00",
  "delegatedPermissions": ["readContent", "writeContent"],
  "applicationPermissions": ["full"]
}
```

