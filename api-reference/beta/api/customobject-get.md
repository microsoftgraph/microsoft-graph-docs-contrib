---
title: "Get customObject"
description: "Read the properties and relationships of customObject object."
author: "biodero"
ms.date: 09-22-2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Get customObject

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [customObject](../resources/customobject.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "customobject-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/customobject-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/customData/objects/{objectId}
GET /identityGovernance/customData/objects('{objectId}')
```

## Optional query parameters

This method doesn't support OData query parameters. The object ID identifies the resource; don't include a `definitionId` filter.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [customObject](../resources/customobject.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_customobject"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/customData/objects/b20fd2d9-79e3-4d26-8a03-3ca2e57e6a33
client-request-id: 8f2f5b78-4e33-45c7-9d57-8a7df6bb6f31
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customObject"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
ETag: W/"abc123"

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/customData/objects/$entity",
  "@odata.type": "#microsoft.graph.customObject",
  "@odata.etag": "W/\"abc123\"",
  "id": "b20fd2d9-79e3-4d26-8a03-3ca2e57e6a33",
  "definitionId": "1f9e2d04-bc62-49f8-ae15-4b5de0d1bca1",
  "displayName": "Engineering",
  "customProperties": {
    "code": "ENG",
    "name": "Engineering",
    "costCenter": "CC-1001"
  },
  "createdDateTime": "2026-07-10T00:00:00Z",
  "lastModifiedDateTime": "2026-07-10T00:00:00Z"
}
```
