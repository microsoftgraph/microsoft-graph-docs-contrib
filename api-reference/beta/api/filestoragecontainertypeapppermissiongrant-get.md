---
title: "Get fileStorageContainerTypeAppPermissionGrant"
description: "Read the properties and relationships of a fileStorageContainerTypeAppPermissionGrant object."
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Get fileStorageContainerTypeAppPermissionGrant

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read a specific app permission grant in a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md)


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

When delegated tokens are used, SharePoint Embedded admin or Global admin role is required.
If FileStorageContainerTypeReg.Selected is used, results are limited to [registrations](../resources/filestoragecontainertyperegistration.md) owned by the application 
making the call.
<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainertypeapppermissiongrant-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainertypeapppermissiongrant-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /storage/fileStorage/containerTypeRegistrations/{fileStorageContainerTypeRegistrationId}/applicationPermissionGrants/{appId}
```

## Optional query parameters

This method supports $select OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) object in the response body.

## Examples

### Example 1: Get a specific app permission grant.

### Request

<!-- {
  "blockType": "request",
  "name": "get_filestoragecontainertypeapppermissiongrant"
}
-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containerTypeRegistrations/33225700-9a00-4c00-84dd-0c210f203f01/applicationPermissionGrants/11335700-9a00-4c00-84dd-0c210f203f00
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fileStorageContainerTypeAppPermissionGrant",
  "appId": "11335700-9a00-4c00-84dd-0c210f203f00",
  "delegatedPermissions": ["readContent", "writeContent"],
  "applicationPermissions": ["full"]
}
```

