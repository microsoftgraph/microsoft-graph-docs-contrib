---
title: "driftAccessPackageInfo resource type"
description: "Represents information about an access package associated with an access drift record."
author: "suhanigupta"
ms.date: 08/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# driftAccessPackageInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about an access package associated with an access drift record.

This object is configured in the **accessPackage** property of [entraAccessDriftDetail](../resources/entraaccessdriftdetail.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the access package.|
|identifier|String|The unique identifier of the access package.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.driftAccessPackageInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.driftAccessPackageInfo",
  "identifier": "String",
  "displayName": "String"
}
```
