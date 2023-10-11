---
title: "writebackConfiguration resource type"
description: "Represents a writeback state on Azure AD cloud groups (Microsoft 365 and security groups)."
author: "Jordanndahl"
ms.localizationpriority: medium
ms.prod: "groups"
doc_type: resourcePageType
---

# writebackConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a writeback state on Azure AD cloud groups (Microsoft 365 and security groups).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Indicates whether writeback of cloud groups to on-premise Active Directory is enabled. Default value is `true` for Microsoft 365 groups and `false` for security groups.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.writebackConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.writebackConfiguration",
  "isEnabled": "Boolean"
}
```

