---
title: "crossTenantPlacesDeskBooking resource type"
description: "Represents a cross-tenant capability for desk booking in Places."
author: "lasharma"
ms.date: 04/23/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# crossTenantPlacesDeskBooking resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a cross-tenant capability for desk booking in Places. This capability allows tenant administrators to control whether users can book desks across organizations.

Inherits from [m365CapabilityBase](../resources/m365capabilitybase.md).

## Methods
This resource is part of a polymorphic collection managed by the [m365CapabilityBase](../resources/m365capabilitybase.md) base type. Operations are performed through the base type endpoints on the [crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md) or [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) resources.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|inboundAccess|[m365CapabilityInboundAccess](../resources/m365capabilityinboundaccess.md)|The inbound access settings for the capability. Inherited from [m365CapabilityBase](../resources/m365capabilitybase.md).|
|lastModifiedDateTime|DateTimeOffset|The automatically updated last modified timestamp for the capability. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. Inherited from [m365CapabilityBase](../resources/m365capabilitybase.md).|
|name|String|The name or identifier of the capability. Inherited from [m365CapabilityBase](../resources/m365capabilitybase.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "name",
  "@odata.type": "microsoft.graph.crossTenantPlacesDeskBooking",
  "baseType": "microsoft.graph.m365CapabilityBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.crossTenantPlacesDeskBooking",
  "name": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "inboundAccess": {
    "@odata.type": "microsoft.graph.m365CapabilityInboundAccess"
  }
}
```
