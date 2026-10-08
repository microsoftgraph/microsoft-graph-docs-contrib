---
title: "policyIdentifierDetail resource type"
description: "Represents the identifier details of a Teams policy, including the policy name and its unique ID."
author: "praspatil05"
ms.date: 08/14/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# policyIdentifierDetail resource type

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identifier details of a Teams policy, including the policy name and its unique ID.

Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|The display name of the policy instance.|
|policyId|String|The unique ID associated with the policy instance.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAdministration.policyIdentifierDetail",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAdministration.policyIdentifierDetail",
  "name": "String",
  "policyId": "String"
}
```

