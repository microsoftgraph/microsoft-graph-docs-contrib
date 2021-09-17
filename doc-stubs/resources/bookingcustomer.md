---
title: "bookingCustomer resource type"
description: "Represents a customer of the business."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# bookingCustomer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a customer of the business.


Inherits from [bookingPerson](../resources/bookingperson.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List bookingCustomers](../api/bookingcustomer-list.md)|[bookingCustomer](../resources/bookingcustomer.md) collection|Get a list of the [bookingCustomer](../resources/bookingcustomer.md) objects and their properties.|
|[Create bookingCustomer](../api/bookingcustomer-create.md)|[bookingCustomer](../resources/bookingcustomer.md)|Create a new [bookingCustomer](../resources/bookingcustomer.md) object.|
|[Get bookingCustomer](../api/bookingcustomer-get.md)|[bookingCustomer](../resources/bookingcustomer.md)|Read the properties and relationships of a [bookingCustomer](../resources/bookingcustomer.md) object.|
|[Update bookingCustomer](../api/bookingcustomer-update.md)|[bookingCustomer](../resources/bookingcustomer.md)|Update the properties of a [bookingCustomer](../resources/bookingcustomer.md) object.|
|[Delete bookingCustomer](../api/bookingcustomer-delete.md)|None|Deletes a [bookingCustomer](../resources/bookingcustomer.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|addresses|[physicalAddress](../resources/physicaladdress.md) collection|**TODO: Add Description**|
|displayName|String|Display name of this entity.
The display name is suitable for human-readable interfaces. Inherited from [bookingNamedEntity](../resources/bookingnamedentity.md).|
|emailAddress|String|The e-mail address of this person. Inherited from [bookingPerson](../resources/bookingperson.md).|
|id|String|**TODO: Add Description** Inherited from [bookingNamedEntity](../resources/bookingnamedentity.md).|
|phones|[phone](../resources/phone.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.bookingCustomer",
  "baseType": "microsoft.bookings.api.bookingPerson",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bookingCustomer",
  "id": "String (identifier)",
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

