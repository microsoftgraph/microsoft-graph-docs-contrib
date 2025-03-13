---
title: "bookingCustomer resource type"
description: "Represents a customer of a bookingBusiness."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
ms.date: 07/30/2024
---

# bookingCustomer resource type

Namespace: microsoft.graph

Represents a customer of a [bookingBusiness](bookingbusiness.md).

Inherits from [bookingCustomerBase](bookingcustomerbase.md).

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
|addresses|[physicalAddress](../resources/physicaladdress.md) collection|Addresses associated with the customer. The attribute **type** of **physicalAddress** isn't supported in v1.0. Internally we map the addresses to the type `others`.|
|createdDateTime|DateTimeOffset|The date, time, and time zone when the customer was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|displayName|String|The name of the customer.|
|emailAddress|String|The SMTP address of the customer.|
|id|String| The ID of the customer. Read-only. Inherited from [bookingCustomerBase](bookingcustomerbase.md).|
|lastUpdatedDateTime|DateTimeOffset|The date, time, and time zone when the customer was last updated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|phones|[phone](../resources/phone.md) collection|Phone numbers associated with the customer, including home, business, and mobile numbers.|

## Relationships
None


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingCustomer",
  "baseType": "microsoft.graph.bookingCustomerBase"
}-->

```json
{
  "@odata.type": "#microsoft.graph.bookingCustomer",
  "addresses": [{"@odata.type": "microsoft.graph.physicalAddress"}],
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "emailAddress": "String",
  "id": "String (identifier)",
  "lastUpdatedDateTime": "String (timestamp)",
  "phones": [{"@odata.type": "microsoft.graph.phone"}]
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


