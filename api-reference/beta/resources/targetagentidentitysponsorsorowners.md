---
title: "targetAgentIdentitySponsorsOrOwners resource type"
description: "Defines the sponsors and owners of a targeted agent identity. Also defines if the sponsors and owners are the primary, or backup sponsor or owner for an agent identity."
author: "vikama-microsoft"
ms.date: 12/03/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# targetAgentIdentitySponsorsOrOwners resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the sponsors, or owners, of a specific [agentIdentity](../resources/agentidentity.md).

Inherits from [userSet](../resources/userset.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isBackup|Boolean| Defines whether or not the listed sponsors and owners of the agent identity is not the primary sponsor or owner for an [agentIdentity](../resources/agentidentity.md). Inherited from [userSet](../resources/userset.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.targetAgentIdentitySponsorsOrOwners"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.targetAgentIdentitySponsorsOrOwners",
  "isBackup": "Boolean"
}
```
