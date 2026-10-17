---
title: "entraAccessDriftDetail resource type"
description: "Represents an access drift detail specific to Microsoft Entra reconciliation."
author: "suhanigupta"
ms.date: 08/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# entraAccessDriftDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an access drift detail specific to Microsoft Entra reconciliation. Extends [accessDriftDetail](../resources/accessdriftdetail.md) with role and access package information.

Inherits from [accessDriftDetail](../resources/accessdriftdetail.md).

## Methods

This resource is part of a polymorphic collection managed by the [accessDriftDetail](../resources/accessdriftdetail.md) base type. Operations are performed through the base type endpoints.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|accessPackage|[driftAccessPackageInfo](../resources/driftaccesspackageinfo.md)|The access package associated with this drift record.|
|assignedRole|String|The role currently assigned to the identity on the resource.|
|createdDateTime|DateTimeOffset|The date and time when the drift record was created. Inherited from [accessDriftDetail](../resources/accessdriftdetail.md).|
|driftSource|[accessDriftSource](../resources/enums.md#accessdriftsource-values)|The comparison system that detected the drift. Inherited from [accessDriftDetail](../resources/accessdriftdetail.md). The possible values are: `entra`, `externalApplication`, `unknownFutureValue`.|
|driftType|[accessDriftType](../resources/enums.md#accessdrifttype-values)|The classification of the drift. Inherited from [accessDriftDetail](../resources/accessdriftdetail.md). The possible values are: `unauthorized`, `missing`, `inSync`, `unknownFutureValue`.|
|expectedRole|String|The role expected based on the access package assignment.|
|id|String|The unique identifier for the drift detail. Inherited from [entity](../resources/entity.md).|
|resource|[driftResourceInfo](../resources/driftresourceinfo.md)|The governed resource associated with this drift record. Inherited from [accessDriftDetail](../resources/accessdriftdetail.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|identities|[driftIdentityInfo](../resources/driftidentityinfo.md) collection|The identities affected by this drift record. Inherited from [accessDriftDetail](../resources/accessdriftdetail.md).|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.entraAccessDriftDetail",
  "baseType": "microsoft.graph.accessDriftDetail",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entraAccessDriftDetail",
  "id": "String (identifier)",
  "resource": {"@odata.type": "microsoft.graph.driftResourceInfo"},
  "driftSource": "String",
  "driftType": "String",
  "createdDateTime": "String (timestamp)",
  "assignedRole": "String",
  "expectedRole": "String",
  "accessPackage": {"@odata.type": "microsoft.graph.driftAccessPackageInfo"}
}
```
