---
title: "networkAccessSecurityControl resource type"
description: "Session control to link to Global Secure Access security profiles or filtering profiles."
ms.localizationpriority: medium
author: "fgomulka"
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
ms.date: 02/11/2025
---

# networkAccessSecurityControl resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Session control to link to Global Secure Access filtering profiles. Duplicate of globalSecureAccessFilteringProfileSecurityControl. Inherits from [conditionalAccessSessionControl](conditionalaccesssessioncontrol.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|isEnabled     |Boolean      | Specifies whether the session control is enabled. Inherited from [conditionalAccessSessionControl](conditionalaccesssessioncontrol.md). |
|policyId      |String       | Specifies the distinct identifier that is assigned to the security profile or filtering profile. Inherited from microsoft.graph.entity.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkAccessSecurityControl"
}
-->
``` json
