---
title: "globalSecureAccessFilteringProfileSessionControl resource type"
description: "Session control to link to a Global Secure Access security profile or filtering profile."
ms.localizationpriority: medium
author: "fgomulka"
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
ms.date: 04/01/2025
---

# globalSecureAccessFilteringProfileSessionControl resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Session control to link to a Global Secure Access security profile or filtering profile. Inherits from [conditionalAccessSessionControl](conditionalaccesssessioncontrol.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|isEnabled     |Boolean      | Specifies whether the session control is enabled. Inherited from [conditionalAccessSessionControl](conditionalaccesssessioncontrol.md). |
|profileId     |String       | Specifies the distinct identifier that is assigned to the security profile or filtering profile.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.globalSecureAccessFilteringProfileSessionControl"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.globalSecureAccessFilteringProfileSessionControl",
  "isEnabled": "Boolean"
}
```