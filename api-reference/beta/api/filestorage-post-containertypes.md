---
title: "Create fileStorageContainerType"
description: "Create a new fileStorageContainerType object."
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Create fileStorageContainerType

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [fileStorageContainerType](../resources/filestoragecontainertype.md) in the owning tenant. The number of container types in a tenant is [limited](https://learn.microsoft.com/sharepoint/dev/embedded/development/limits-calling).

> [!IMPORTANT]
> Registering a container type in a newly created tenant can fail due to readiness of tenant. You may need to wait at least an hour before registering a container type in a new tenant.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

SharePoint Embedded admin or Global admin role is required.
<!-- {
  "blockType": "permissions",
  "name": "filestorage-post-containertypes-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestorage-post-containertypes-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /storage/fileStorage/containerTypes
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [fileStorageContainerType](../resources/filestoragecontainertype.md) object.

You can specify the following properties when creating a **fileStorageContainerType**.

|Property|Type|Description|
|:---|:---|:---|
|name|String|fileStorageContainerType name. Required.|
|owningAppId|Guid|ID of the application that owns the fileStorageContainerType. Required.|
|billingClassification|fileStorageContainerBillingClassification|Billing type. Defaults to **standard**. The possible values are: `standard`, `trial`, `directToCustomer`. Optional.|
|settings|[fileStorageContainerTypeSettings](../resources/filestoragecontainertypesettings.md)|fileStorageContainerType settings. Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [fileStorageContainerType](../resources/filestoragecontainertype.md) object in the response body.

## Examples

Create a Trial fileStorageContainerType with some defaults

### Request

<!-- {
  "blockType": "request",
  "name": "create_filestoragecontainertype_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/storage/fileStorage/containerTypes
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fileStorageContainerType",
  "name": "Test Trial Container",
  "owningAppId": "11335700-9a00-4c00-84dd-0c210f203f00",
  "billingClassification": "trial",
  "settings": {
    "@odata.type": "microsoft.graph.fileStorageContainerTypeSettings",
    "isItemVersioningEnabled": "true",
    "isSharingRestricted": "false",
    "consumingTenantOverridables": "isSearchEnabled,itemMajorVersionLimit"
  }
}
```


### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fileStorageContainerType"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fileStorageContainerType",
  "id": "de988700-d700-020e-0a00-0831f3042f00",
  "name": "Test Trial Container",
  "owningAppId": "11335700-9a00-4c00-84dd-0c210f203f00",
  "billingClassification": "trial",
  "billingStatus": "valid",
  "createdDateTime": "01/20/2025",
  "expirationDateTime": "02/20/2025",
  "etag": "RVRhZw==",

  "settings": {
    "@odata.type": "microsoft.graph.fileStorageContainerTypeSettings",
    "urlTemplate": "",
    "isDiscoverabilityEnabled": "true",
    "isSearchEnabled": "true",
    "isItemVersioningEnabled": "true",
    "itemMajorVersionLimit": "50",
    "maxStoragePerContainerInBytes": "104857600",
    "isSharingRestricted": "false",
    "consumingTenantOverridables": "isSearchEnabled,itemMajorVersionLimit"
  }
}
```

