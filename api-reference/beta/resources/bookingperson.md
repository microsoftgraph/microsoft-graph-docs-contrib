---
title: "bookingPerson resource type"
description: "This is a base type for a person in a Microsoft Bookings business, which can be a bookingCustomer or bookingStaffMember."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.prod: "bookings"
doc_type: resourcePageType
---

# bookingPerson resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
 
This is a base type for a person in a Microsoft Bookings business, which can be a [bookingCustomer](bookingcustomer.md) or [bookingStaffMember](bookingstaffmember.md).

Inherits from [bookingNamedEntity](bookingnamedentity.md)

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|String|A name for the derived entity, which interfaces with customers. Inherited from **bookingNamedEntity**.|
|emailAddress|String|The email address of the person.|
|id|String| The ID for the derived entity. Read-only.|

## Relationships
None


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingPerson"
}-->

```json
{
  "displayName": "String",
  "emailAddress": "String",
  "id": "String (identifier)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "bookingPerson resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


