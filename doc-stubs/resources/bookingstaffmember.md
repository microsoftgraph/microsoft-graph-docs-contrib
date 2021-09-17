---
title: "bookingStaffMember resource type"
description: "Represents a staff member who provides services in a business."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# bookingStaffMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a staff member who provides services in a business.


Inherits from [bookingPerson](../resources/bookingperson.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List bookingStaffMembers](../api/bookingstaffmember-list.md)|[bookingStaffMember](../resources/bookingstaffmember.md) collection|Get a list of the [bookingStaffMember](../resources/bookingstaffmember.md) objects and their properties.|
|[Create bookingStaffMember](../api/bookingstaffmember-create.md)|[bookingStaffMember](../resources/bookingstaffmember.md)|Create a new [bookingStaffMember](../resources/bookingstaffmember.md) object.|
|[Get bookingStaffMember](../api/bookingstaffmember-get.md)|[bookingStaffMember](../resources/bookingstaffmember.md)|Read the properties and relationships of a [bookingStaffMember](../resources/bookingstaffmember.md) object.|
|[Update bookingStaffMember](../api/bookingstaffmember-update.md)|[bookingStaffMember](../resources/bookingstaffmember.md)|Update the properties of a [bookingStaffMember](../resources/bookingstaffmember.md) object.|
|[Delete bookingStaffMember](../api/bookingstaffmember-delete.md)|None|Deletes a [bookingStaffMember](../resources/bookingstaffmember.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|availabilityIsAffectedByPersonalCalendar|Boolean|**TODO: Add Description**|
|colorIndex|Int32|**TODO: Add Description**|
|displayName|String|Display name of this entity.
The display name is suitable for human-readable interfaces. Inherited from [bookingNamedEntity](../resources/bookingnamedentity.md).|
|emailAddress|String|The e-mail address of this person. Inherited from [bookingPerson](../resources/bookingperson.md).|
|id|String|**TODO: Add Description** Inherited from [bookingNamedEntity](../resources/bookingnamedentity.md).|
|role|bookingStaffRole|**TODO: Add Description**. The possible values are: `guest`, `administrator`, `viewer`, `externalGuest`.|
|timeZone|String|**TODO: Add Description**|
|useBusinessHours|Boolean|**TODO: Add Description**|
|workingHours|[bookingWorkHours](../resources/bookingworkhours.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.bookingStaffMember",
  "baseType": "microsoft.bookings.api.bookingPerson",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bookingStaffMember",
  "id": "String (identifier)",
  "displayName": "String",
  "emailAddress": "String",
  "availabilityIsAffectedByPersonalCalendar": "Boolean",
  "colorIndex": "Integer",
  "role": "String",
  "useBusinessHours": "Boolean",
  "workingHours": [
    {
      "@odata.type": "microsoft.graph.bookingWorkHours"
    }
  ],
  "timeZone": "String"
}
```

