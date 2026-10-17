---
title: "driftResourceInfo resource type"
description: "Represents abstract base information about a governed resource in an access drift context."
author: "suhanigupta"
ms.date: 08/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# driftResourceInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents abstract base information about a governed resource in an access drift context. Derived types include [applicationDriftResourceInfo](../resources/applicationdriftresourceinfo.md) and [groupDriftResourceInfo](../resources/groupdriftresourceinfo.md).

This object is configured in the **resource** property of [accessDriftSummary](../resources/accessdriftsummary.md) and [accessDriftDetail](../resources/accessdriftdetail.md).

This is an abstract type.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|catalogIdentifier|String|The identifier of the entitlement management catalog that contains the resource.|
|catalogName|String|The display name of the entitlement management catalog.|
|displayName|String|The display name of the governed resource.|
|identifier|String|The unique identifier of the governed resource.|
|type|[accessDriftResourceType](../resources/enums.md#accessdriftresourcetype-values)|The type of governed resource. The possible values are: `application`, `group`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.driftResourceInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.driftResourceInfo",
  "catalogName": "String",
  "identifier": "String",
  "displayName": "String",
  "type": "String",
  "catalogIdentifier": "String"
}
```
