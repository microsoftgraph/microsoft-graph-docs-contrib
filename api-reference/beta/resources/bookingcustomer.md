---
title: "bookingCustomer resource type"
description: "Represents a customer of a bookingBusiness."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
ms.date: 07/08/2024
---

# bookingCustomer resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
 
Represents a customer of a [bookingBusiness](bookingbusiness.md).


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/bookingbusiness-list-customers.md) | [bookingCustomer](bookingcustomer.md) collection | Get a list of **bookingCustomer** objects. |
|[Create](../api/bookingbusiness-post-customers.md) | [bookingCustomer](bookingcustomer.md) | Create a new **bookingCustomer** object. |
|[Get](../api/bookingcustomer-get.md) | [bookingCustomer](bookingcustomer.md) |Read the properties and relationships of a **bookingCustomer** object.|
|[Update](../api/bookingcustomer-update.md) | [bookingCustomer](bookingcustomer.md)	|Update a **bookingCustomer** object. |
|[Delete](../api/bookingcustomer-delete.md) | None |Delete a **bookingCustomer** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|addresses|[physicalAddress](../resources/physicaladdress.md) collection|Addresses associated with the customer, including home, business and other addresses.|
|createdDateTime|DateTimeOffset|The date, time, and timezone when the customer was created.|
|displayName|String|The name of the customer.|
|emailAddress|String|The SMTP address of the customer.|
|id|String| The ID of the customer. Read-only.|
|lastUpdatedDateTime|DateTimeOffset|The date, time, and timezone when the customer was last updated.|
|phones|[phone](../resources/phone.md) collection|Phone numbers associated with the customer, including home, business and mobile numbers.|

## Relationships
None


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingCustomer"
}-->

```json
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
  ],
  "createdDateTime": "String (timestamp)",
  "lastUpdatedDateTime": "String (timestamp)"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "bookingCustomer resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


