---
title: "cloudPcAuditProperty resource type"
description: "Represents the audit property. This shows the edited property name, the old value, and the new value."
author: "ecmadao"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# cloudPcAuditProperty resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the audit property. This shows the edited property name, the old value, and the new value.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name.|
|oldValue|String|Old value.|
|newValue|String|New value.|

## Relationships

None.

## JSON Representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcAuditProperty"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAuditProperty",
  "displayName": "String",
  "oldValue": "String",
  "newValue": "String"
}
```
