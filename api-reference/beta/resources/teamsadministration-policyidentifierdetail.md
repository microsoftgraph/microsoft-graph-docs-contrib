---
title: "policyIdentifierDetail resource type"
description: "Represents policy identifier details such as name and ID of the Teams Policy"
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

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
<!-- |[List](../api/teamsadministration-policyidentifierdetail-list.md)|[microsoft.graph.teamsAdministration.policyIdentifierDetail](../resources/teamsadministration-policyidentifierdetail.md) collection|Get a list of the policyIdentifierDetail objects and their properties.| -->
|[Get](../api/teamsadministration-policyidentifierdetail-get.md)|[microsoft.graph.teamsAdministration.policyIdentifierDetail](../resources/teamsadministration-policyidentifierdetail.md)|Read the properties and relationships of [microsoft.graph.teamsAdministration.policyIdentifierDetail](../resources/teamsadministration-policyidentifierdetail.md) object.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|name|String|The display name of the policy instance|
|policyId|String|The unique ID associated with the policy instance|

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
  "id": "String (identifier)",
  "name": "String",
  "policyId": "String"
}
```

