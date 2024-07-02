---
title: "List photoUpdateSettings objects"
description: "Get a list of the photoUpdateSettings objects and their properties."
author: "fondieki"
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: apiPageType
---

# List photoUpdateSettings objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [photoUpdateSettings](../resources/photoupdatesettings.md) objects and their properties.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/people/photoUpdateSettings
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

If successful, this method returns a `200 OK` response code and a collection of [photoUpdateSettings](../resources/photoupdatesettings.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_photoupdatesettings"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.photoUpdateSettings not found
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.photoUpdateSettings)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.photoUpdateSettings",
      "id": "20a03e03-52a3-3c97-6c4f-db600fca32ba",
      "source": "String",
      "allowedRoles": [
        "String"
      ]
    }
  ]
}
```

