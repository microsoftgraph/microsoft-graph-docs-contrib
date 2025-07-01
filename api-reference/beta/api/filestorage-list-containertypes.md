---
title: "List fileStorageContainerType objects"
description: "Get a list of the fileStorageContainerType objects and their properties."
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# List fileStorageContainerType objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the fileStorageContainerType objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestorage-list-containertypes-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestorage-list-containertypes-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /storage/fileStorage/containerTypes
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

If successful, this method returns a `200 OK` response code and a collection of [fileStorageContainerType](../resources/filestoragecontainertype.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_filestoragecontainertype"
}
-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containerTypes
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fileStorageContainerType"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
  ]
}
```

