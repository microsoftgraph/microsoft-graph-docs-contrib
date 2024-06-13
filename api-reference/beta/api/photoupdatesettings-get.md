---
title: "Get photoUpdateSettings"
description: "Read the properties and relationships of a photoUpdateSettings object."
author: "**Fred Ondieki: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get photoUpdateSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [photoUpdateSettings](../resources/photoupdatesettings.md) object.

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

If successful, this method returns a `200 OK` response code and a [photoUpdateSettings](../resources/photoupdatesettings.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_photoupdatesettings"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/people/photoUpdateSettings
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.photoUpdateSettings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.photoUpdateSettings",
    "id": "20a03e03-52a3-3c97-6c4f-db600fca32ba",
    "source": "String",
    "allowedRoles": [
      "String"
    ]
  }
}
```

