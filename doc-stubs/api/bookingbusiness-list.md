---
title: "List bookingBusinesses"
description: "Get a list of the bookingBusiness objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List bookingBusinesses
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [bookingBusiness](../resources/bookingbusiness.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /bookingBusinesses
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [bookingBusiness](../resources/bookingbusiness.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_bookingbusiness"
}
-->
``` http
GET https://graph.microsoft.com/beta/bookingBusinesses
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.bookings.api.bookingBusiness)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.bookings.api.bookingBusiness",
      "id": "63961421-1421-6396-2114-966321149663",
      "displayName": "String",
      "businessType": "String",
      "address": {
        "@odata.type": "microsoft.graph.physicalAddress"
      },
      "phone": "String",
      "email": "String",
      "webSiteUrl": "String",
      "defaultCurrencyIso": "String",
      "businessHours": [
        {
          "@odata.type": "microsoft.graph.bookingWorkHours"
        }
      ],
      "schedulingPolicy": {
        "@odata.type": "microsoft.graph.bookingSchedulingPolicy"
      },
      "isPublished": "Boolean",
      "publicUrl": "String"
    }
  ]
}
```

