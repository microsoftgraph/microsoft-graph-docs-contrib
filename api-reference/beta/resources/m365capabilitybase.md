---
title: "m365CapabilityBase resource type"
description: "Represents an abstract base type for cross-tenant Microsoft 365 capabilities."
author: "lasharma"
ms.date: 04/23/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: "Microsoft 365 capabilities"
---

# m365CapabilityBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract base type for cross-tenant Microsoft 365 capabilities. This type can't be instantiated directly. Instances are created using specific derived types. All capability instances in a collection are differentiated by the **@odata.type** property.

The following types derive from **m365CapabilityBase**:

- [crossTenantCalendarAvailabilityBasic](../resources/crosstenantcalendaravailabilitybasic.md)
- [crossTenantCalendarAvailabilityLimitedDetails](../resources/crosstenantcalendaravailabilitylimiteddetails.md)
- [crossTenantCalendarSharingFreeBusyDetail](../resources/crosstenantcalendarsharingfreebusydetail.md)
- [crossTenantCalendarSharingFreeBusyReviewer](../resources/crosstenantcalendarsharingfreebusyreviewer.md)
- [crossTenantCalendarSharingFreeBusySimple](../resources/crosstenantcalendarsharingfreebusysimple.md)
- [crossTenantMailTipsAll](../resources/crosstenantmailtipsall.md)
- [crossTenantMailTipsLimited](../resources/crosstenantmailtipslimited.md)
- [crossTenantMigration](../resources/crosstenantmigration.md)
- [crossTenantOpenProfileCard](../resources/crosstenantopenprofilecard.md)
- [crossTenantPlacesDeskBooking](../resources/crosstenantplacesdeskbooking.md)
- [crossTenantPlacesRoomBooking](../resources/crosstenantplacesroombooking.md)

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|inboundAccess|[m365CapabilityInboundAccess](../resources/m365capabilityinboundaccess.md)|The inbound access settings for the capability.|
|lastModifiedDateTime|DateTimeOffset|The automatically updated last modified timestamp for the capability. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`.|
|name|String|The name or identifier of the capability. Key.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "name",
  "@odata.type": "microsoft.graph.m365CapabilityBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.m365CapabilityBase",
  "name": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "inboundAccess": {
    "@odata.type": "microsoft.graph.m365CapabilityInboundAccess"
  }
}
```
