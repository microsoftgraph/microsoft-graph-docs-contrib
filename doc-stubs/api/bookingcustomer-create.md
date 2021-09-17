---
title: "Create bookingCustomer"
description: "Create a new bookingCustomer object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create bookingCustomer
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [bookingCustomer](../resources/bookingcustomer.md) object.

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
POST /bookingBusinesses/{bookingBusinessesId}/customers
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [bookingCustomer](../resources/bookingcustomer.md) object.

The following table shows the properties that are required when you create the [bookingCustomer](../resources/bookingcustomer.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [bookingNamedEntity](../resources/bookingnamedentity.md)|
|displayName|String|Display name of this entity.
The display name is suitable for human-readable interfaces. Inherited from [bookingNamedEntity](../resources/bookingnamedentity.md)|
|emailAddress|String|The e-mail address of this person. Inherited from [bookingPerson](../resources/bookingperson.md)|
|addresses|[microsoft.bookings.api.physicalAddress](../resources/physicaladdress.md) collection|**TODO: Add Description**|
|phones|[microsoft.bookings.api.phone](../resources/phone.md) collection|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [bookingCustomer](../resources/bookingcustomer.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_bookingcustomer_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/bookingBusinesses/{bookingBusinessesId}/customers
Content-Type: application/json
Content-length: 296

{
  "@odata.type": "#microsoft.bookings.api.bookingCustomer",
  "displayName": "String",
  "emailAddress": "String",
  "addresses": [
    {
      "@odata.type": "microsoft.graph.physicalAddress"
    }
  ],
  "phones": [
    {
      "@odata.type": "microsoft.graph.phone"
    }
  ]
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.bookings.api.bookingCustomer"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.bookings.api.bookingCustomer",
  "id": "8d0bbf63-bf63-8d0b-63bf-0b8d63bf0b8d",
  "displayName": "String",
  "emailAddress": "String",
  "addresses": [
    {
      "@odata.type": "microsoft.graph.physicalAddress"
    }
  ],
  "phones": [
    {
      "@odata.type": "microsoft.graph.phone"
    }
  ]
}
```

