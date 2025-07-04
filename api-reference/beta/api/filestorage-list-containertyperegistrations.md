---
title: "List fileStorageContainerTypeRegistration objects"
description: "Get a list of the fileStorageContainerTypeRegistration objects and their properties."
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# List fileStorageContainerTypeRegistration objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the fileStorageContainerTypeRegistration objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

When delegated tokens are used, SharePoint Embedded admin or Global admin role is required.
If FileStorageContainerTypeReg.Selected is used, results are limited to [registrations](../resources/fileStorageContainerTypeRegistration.md) owned by the application 
making the call.
<!-- {
  "blockType": "permissions",
  "name": "filestorage-list-containertyperegistrations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestorage-list-containertyperegistrations-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /storage/fileStorage/containerTypeRegistrations
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) objects in the response body.

## Examples

List fileStorageContainerTypeRegistrations using SharePoint Embedded admin delegated tokens
### Request

<!-- {
  "blockType": "request",
  "name": "list_filestoragecontainertyperegistration"
}
-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containerTypeRegistrations
```


### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fileStorageContainerTypeRegistration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": 
  [
    {
      "@odata.type": "#microsoft.graph.fileStorageContainerTypeRegistration",
      "id": "de988700-d700-020e-0a00-0831f3042f00",
      "name": "Container Type 1",
      "owningAppId": "11335700-9a00-4c00-84dd-0c210f203f00",
      "billingClassification": "trial",
      "billingStatus": "valid",
      "registeredDateTime": "01/20/2025",
      "expirationDateTime": "02/20/2025",
      "etag": "RVRhZw==",
      "settings": {
        "@odata.type": "microsoft.graph.fileStorageContainerTypeRegistrationSettings",
        "sharingCapability": "disabled",
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
          "appId": "11335700-9a00-4c00-84dd-0c210f203f00",
          "delegatedPermissions": ["none"],
          "applicationPermissions": ["full"]
        },
        {
          "appId": "d893fd02-3578-4c7f-bd85-12fc3358af48",
          "delegatedPermissions": ["full"],
          "applicationPermissions": ["none"]
        }
      ]
    },
    {
      "@odata.type": "#microsoft.graph.fileStorageContainerTypeRegistration",
      "id": "88aeae-d700-020e-0a00-0831f3042f01",
      "name": "Container Type 2",
      "owningAppId": "33225700-9a00-4c00-84dd-0c210f203f01",
      "billingClassification": "Standard",
      "billingStatus": "valid",
      "registeredDateTime": "01/20/2025",
      "expirationDateTime": null,
      "etag": "RVRhZw==",
      "settings": {
        "@odata.type": "microsoft.graph.fileStorageContainerTypeRegistrationSettings",
        "sharingCapability": "externalUserSharingOnly",
        "urlTemplate": "",
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
          "applicationPermissions": ["full"]
        },
        {
          "appId": "cf9d52b8-1e33-4a35-a724-c3ae3c937892",
          "delegatedPermissions": ["full"],
          "applicationPermissions": ["none"]
        }
      ]
    }
  ]
}
```

