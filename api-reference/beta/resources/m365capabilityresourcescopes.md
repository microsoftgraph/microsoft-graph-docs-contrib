---
title: "m365CapabilityResourceScopes resource type"
description: "Specifies the included and excluded resource scopes for a cross-tenant capability."
author: "lasharma"
ms.date: 04/23/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: "Microsoft 365 resource scopes"
---

# m365CapabilityResourceScopes resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the included and excluded resource scopes for a cross-tenant capability. This type defines which resources are in scope for the capability and which resources are explicitly excluded.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|excluded|[m365CapabilityResourceScope](../resources/m365capabilityresourcescope.md) collection|Resources to exclude from the scope. If a resource appears in both **included** and **excluded**, the **excluded** property takes precedence.|
|included|[m365CapabilityResourceScope](../resources/m365capabilityresourcescope.md) collection|Resources to include in the scope.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.m365CapabilityResourceScopes"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.m365CapabilityResourceScopes",
  "included": [
    {
      "@odata.type": "microsoft.graph.m365CapabilityResourceScope"
    }
  ],
  "excluded": [
    {
      "@odata.type": "microsoft.graph.m365CapabilityResourceScope"
    }
  ]
}
```
