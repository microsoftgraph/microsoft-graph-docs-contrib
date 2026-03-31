---
title: "mergeResponse resource type"
description: "Represents the response from merge or move operations on alerts and incidents."
author: "HarelDamti"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 02/24/2026
---

# mergeResponse resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the response from [move alerts](../api/security-alert-movealerts.md) or [merge incidents](../api/security-incident-mergeincidents.md) operations.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|targetIncidentId|String|The ID of the target [incident](../resources/security-incident.md) after the operation completes.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mergeResponse"
}
-->
``` json
{
  "targetIncidentId": "String"
}
```
