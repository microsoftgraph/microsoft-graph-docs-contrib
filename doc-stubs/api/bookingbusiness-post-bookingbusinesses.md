---
title: "Create bookingBusiness"
description: "Create a new bookingBusiness object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create bookingBusiness
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [bookingBusiness](../resources/bookingbusiness.md) object.

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
POST /bookingBusinesses
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [bookingBusiness](../resources/bookingbusiness.md) object.

The following table shows the properties that are required when you create the [bookingBusiness](../resources/bookingbusiness.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [bookingNamedEntity](../resources/bookingnamedentity.md)|
|displayName|String|Display name of this entity.
The display name is suitable for human-readable interfaces. Inherited from [bookingNamedEntity](../resources/bookingnamedentity.md)|
|businessType|String|**TODO: Add Description**|
|address|[microsoft.bookings.api.physicalAddress](../resources/physicaladdress.md)|**TODO: Add Description**|
|phone|String|**TODO: Add Description**|
|email|String|**TODO: Add Description**|
|webSiteUrl|String|The URL of the business web site.
Example: https://www.contoso.com|
|defaultCurrencyIso|String|**TODO: Add Description**|
|businessHours|[microsoft.bookings.api.bookingWorkHours](../resources/bookingworkhours.md) collection|**TODO: Add Description**|
|schedulingPolicy|[microsoft.bookings.api.bookingSchedulingPolicy](../resources/bookingschedulingpolicy.md)|**TODO: Add Description**|
|isPublished|Boolean|**TODO: Add Description**|
|publicUrl|String|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [bookingBusiness](../resources/bookingbusiness.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_bookingbusiness_from_bookingbusinesses"
}
-->
``` http
POST https://graph.microsoft.com/beta/bookingBusinesses
Content-Type: application/json
Content-length: 550

{
  "@odata.type": "#microsoft.bookings.api.bookingBusiness",
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
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.bookings.api.bookingBusiness"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

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
```

