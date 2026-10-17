---
title: "accessDriftDetail resource type"
description: "Represents an individual access drift record for a specific identity and resource."
author: "suhanigupta"
ms.date: 08/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessDriftDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an individual access drift record for one or more identities and a resource. This concrete polymorphic base type can appear alongside derived types such as [entraAccessDriftDetail](../resources/entraaccessdriftdetail.md), which provide source-specific properties. The **@odata.type** property identifies the type of each instance.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List details](../api/accessdriftsummary-list-details.md)|[accessDriftDetail](../resources/accessdriftdetail.md) collection|Get a list of the access drift detail objects for a summary.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the drift record was created.|
|driftSource|[accessDriftSource](../resources/enums.md#accessdriftsource-values)|The comparison system that detected the drift. The possible values are: `entra`, `externalApplication`, `unknownFutureValue`.|
|driftType|[accessDriftType](../resources/enums.md#accessdrifttype-values)|The classification of the drift. The possible values are: `unauthorized`, `missing`, `inSync`, `unknownFutureValue`.|
|id|String|The unique identifier for the drift detail. Inherited from [entity](../resources/entity.md).|
|resource|[driftResourceInfo](../resources/driftresourceinfo.md)|The governed resource associated with this drift record.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|identities|[driftIdentityInfo](../resources/driftidentityinfo.md) collection|The identities affected by this drift record.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessDriftDetail",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessDriftDetail",
  "id": "String (identifier)",
  "resource": {"@odata.type": "microsoft.graph.driftResourceInfo"},
  "driftSource": "String",
  "driftType": "String",
  "createdDateTime": "String (timestamp)"
}
```
