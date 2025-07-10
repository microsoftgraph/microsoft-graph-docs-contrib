---
title: "Get workspace"
description: "Read the properties and relationships of a workspace object."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: apiPageType
---

# Get workspace

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [workspace](../resources/workspace.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "workspace-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/workspace-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /workspace
GET /roomList/workspaces/{workspaceId}
```

## Optional query parameters

This method supports $select query parameter to help get specific properties. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [workspace](../resources/workspace.md) object in the response body.

## Examples

### Request

The following example specifies the **id** of a **workspace** to get its properties.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["3162F1E1-C4C0-604B-51D8-91DA78989EB1"],
  "name": "get_workspace"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/places/3162F1E1-C4C0-604B-51D8-91DA78989EB1
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-workspace-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "get_workspace",
  "truncated": true,
  "@odata.type": "microsoft.graph.workspace"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#places/$entity",
    "@odata.type": "#microsoft.graph.workspace",
    "id": "3162F1E1-C4C0-604B-51D8-91DA78989EB1",
    "emailAddress": "ws100@contoso.com",
    "displayName": "Workspace 100",
    "address": {
      "street": "4567 Main Street",
      "city": "Buffalo",
      "state": "NY",
      "postalCode": "98052",
      "countryOrRegion": "USA"
    },
    "geoCoordinates": {
      "latitude": 47.640568390488626,
      "longitude": -122.1293731033803
    },
    "phone": "000-000-0000",
    "nickname": "Workspace",
    "label": "100",
    "capacity": 50,
    "building": "1",
    "floorNumber": 1,
    "isWheelChairAccessible": false,
    "tags": [
      "bean bags"
    ],
    "placeId": "357e8ddc-8af5-4c7c-bc38-ddb3bcfec0d9"
}
```
