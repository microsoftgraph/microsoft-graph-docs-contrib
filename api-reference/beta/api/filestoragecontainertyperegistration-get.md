---
title: "Get fileStorageContainerTypeRegistration"
description: "Read the properties and relationships of a fileStorageContainerTypeRegistration object."
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Get fileStorageContainerTypeRegistration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a fileStorageContainerTypeRegistration object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainertyperegistration-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainertyperegistration-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /storage/fileStorage/containerTypeRegistrations/{fileStorageContainerTypeRegistrationId}
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

If successful, this method returns a `200 OK` response code and a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_filestoragecontainertyperegistration"
}
-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containerTypeRegistrations/{fileStorageContainerTypeRegistrationId}
```


### Response

The following example shows the response.
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
  "value": {
    "@odata.type": "#microsoft.graph.fileStorageContainerTypeRegistration",
    "id": "c22d3fd3-c5af-694e-453a-e17057f29dc1",
    "name": "String",
    "owningAppId": "Guid",
    "billingClassification": "String",
    "billingStatus": "String",
    "registeredDateTime": "String (timestamp)",
    "expirationDateTime": "String (timestamp)",
    "settings": {
      "@odata.type": "microsoft.graph.fileStorageContainerTypeRegistrationSettings"
    },
    "etag": "String"
  }
}
```

