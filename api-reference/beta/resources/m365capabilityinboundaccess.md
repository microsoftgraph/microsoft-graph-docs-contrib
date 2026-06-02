---
title: "m365CapabilityInboundAccess resource type"
description: "Represents the inbound access settings for a cross-tenant Microsoft 365 capability."
author: "lasharma"
ms.date: 04/23/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: "Microsoft 365 capability inbound access"
---

# m365CapabilityInboundAccess resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the inbound access settings for a cross-tenant Microsoft 365 capability. This type defines whether the capability should be allowed or blocked and specifies the resource scopes for the capability.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isAllowed|Boolean|Indicates whether this capability should be allowed or blocked for inbound access.|
|resourceScopes|[m365CapabilityResourceScopes](../resources/m365capabilityresourcescopes.md)|Specifies the included and excluded resource scopes for the capability.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.m365CapabilityInboundAccess"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.m365CapabilityInboundAccess",
  "isAllowed": "Boolean",
  "resourceScopes": {
    "@odata.type": "microsoft.graph.m365CapabilityResourceScopes"
  }
}
```
