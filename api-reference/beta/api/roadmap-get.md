---
title: "Get roadmap"
description: "Read the properties and relationships of a roadmap object."
author: "garretraziel"
ms.localizationpriority: medium
ms.subservice: "service-communications"
doc_type: apiPageType
---

# Get roadmap

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [roadmap](../resources/roadmap.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "roadmap-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/roadmap-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/productChanges/microsoft.changeManagement.roadmap/{id}
```

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [roadmap](../resources/roadmap.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_roadmap"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/productChanges/microsoft.changeManagement.roadmap/8370d119-d695-4dd9-bce2-00e893fadf7d
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.roadmap"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.roadmap",
    "id": "8370d119-d695-4dd9-bce2-00e893fadf7d",
    "changeItemState": "available",
    "changeItemService": "enterpriseApps",
    "tags": null,
    "systemTags": [
      "entra_roadmap_highlight_new_feature"
    ],
    "documentationUrls": [
      "https://learn.microsoft.com/en-us/entra/identity-platform/claims-customization-custom-claims-policy"
    ],
    "shortDescription": "Custom Claims API allows admins to manage and update additional claims for their Enterprise Applications seamlessly through MS Graph.",
    "title": "Custom Claims API for Claims Configuration of Enterprise Apps",
    "description": "*Ommited for brevity.*",
    "deliveryStage": "publicPreview",
    "category": "sso",
    "publishedDateTime": "2024-10-01T07:00:00Z",
    "gotoLink": "null"
  }
}
```
