---
title: "Update fileStorageContainerTypeRegistration"
description: "Update the properties of a fileStorageContainerTypeRegistration object."
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Update fileStorageContainerTypeRegistration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a fileStorageContainerTypeRegistration object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

When delegated tokens are used, SharePoint Embedded admin or Global admin permissions are required.
If FileStorageContainerTypeReg.Selected is used, changes are limited to [registrations](../resources/fileStorageContainerTypeRegistration.md) owned by the application 
making the call.
<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainertyperegistration-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainertyperegistration-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /storage/fileStorage/containerTypeRegistrations/{fileStorageContainerTypeRegistrationId}
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
|settings|[fileStorageContainerTypeRegistrationSettings](../resources/filestoragecontainertyperegistrationsettings.md)|fileStorageContainerTypeRegistration settings. Optional.|
|applicationPermissionGrants|[applicationPermissionGrants](../resources/fileStorageContainerTypeAppPermissionGrant.md)|define the access 
privileges of applications on containers of a specific fileStorageContainerType. Optional.|
|etag|String|Used for optimistic concurrency control. Must be exactly the value returned from create or get. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) object in the response body.

## Examples

Update a fileStorageContainerTypeRegistration

### Request

<!-- {
  "blockType": "request",
  "name": "update_filestoragecontainertyperegistration"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/storage/fileStorage/containerTypeRegistrations/de988700-d700-020e-0a00-0831f3042f00
Content-Type: application/json

{
  "settings": {
    "sharingCapability": "externalUserAndGuestSharing",
  },
  "applicationPermissionGrants": [
    {
      "appId": "33225700-9a00-4c00-84dd-0c210f203f01",
      "delegatedPermissions": ["full"],
      "applicationPermissions": ["none"]
    }
  ],
  "etag": "RVRhZw=="
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fileStorageContainerTypeRegistration",
  "id": "de988700-d700-020e-0a00-0831f3042f00",
  "name": "Container Type Name",
  "owningAppId": "11335700-9a00-4c00-84dd-0c210f203f00",
  "billingClassification": "trial",
  "billingStatus": "valid",
  "registredDateTime": "01/20/2025",
  "expirationDateTime": "02/20/2025",
  "etag": "RVRhZyArIDE=",
  "settings": {
    "@odata.type": "microsoft.graph.fileStorageContainerTypeRegistrationSettings"
    "sharingCapability": "externalUserAndGuestSharing",
    "urlTemplate": "https://app.contoso.com/redirect?tenant={tenant-id}&drive={drive-id}&folder={folder-id}&item={item-id}",
    "isDiscoverabilityEnabled": "true",
    "isSearchEnabled": "true",
    "isItemVersioningEnabled": "true",
    "itemMajorVersionLimit": "50",
    "maxStoragePerContainerInBytes": "104857600",
    "isSharingRestricted": "false"
  },
  "applicationPermissionGrants": [
    {
      "appId": "33225700-9a00-4c00-84dd-0c210f203f01",
      "delegatedPermissions": ["full"],
      "applicationPermissions": ["none"]
    }
  ]
}
```

