---
title: "Update fileStorageContainerType"
description: "Update the properties of a fileStorageContainerType object."
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Update fileStorageContainerType

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a fileStorageContainerType object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainertype-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainertype-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /storage/fileStorage/containerTypes/{fileStorageContainerTypeId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|name|String|**TODO: Add Description** Required.|
|owningAppId|Guid|**TODO: Add Description** Required.|
|billingClassification|fileStorageContainerBillingClassification|**TODO: Add Description**. The possible values are: `standard`, `trial`, `directToCustomer`, `unknownFutureValue`. Required.|
|billingStatus|fileStorageContainerBillingStatus|**TODO: Add Description**. The possible values are: `invalid`, `valid`, `unknownFutureValue`. Required.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|expirationDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|settings|[fileStorageContainerTypeSettings](../resources/filestoragecontainertypesettings.md)|**TODO: Add Description** Required.|
|etag|String|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [fileStorageContainerType](../resources/filestoragecontainertype.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_filestoragecontainertype"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/storage/fileStorage/containerTypes/{fileStorageContainerTypeId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fileStorageContainerType",
  "name": "String",
  "owningAppId": "Guid",
  "billingClassification": "String",
  "billingStatus": "String",
  "expirationDateTime": "String (timestamp)",
  "settings": {
    "@odata.type": "microsoft.graph.fileStorageContainerTypeSettings"
  },
  "etag": "String"
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
  "@odata.type": "#microsoft.graph.fileStorageContainerType",
  "id": "73753c5e-0a5f-8add-fe59-88cd9740926e",
  "name": "String",
  "owningAppId": "Guid",
  "billingClassification": "String",
  "billingStatus": "String",
  "createdDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "settings": {
    "@odata.type": "microsoft.graph.fileStorageContainerTypeSettings"
  },
  "etag": "String"
}
```

