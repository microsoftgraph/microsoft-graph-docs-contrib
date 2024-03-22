---
title: "cloudPcAuditProperty resource type"
description: "Represents the audit property. This shows the edited property name, the old value, and the new value."
author: "RuiHou105"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcAuditProperty resource type

Namespace: microsoft.graph

Represents the audit property. This shows the edited property name, the old value, and the new value.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name for this property.|
|oldValue|String|The old value for this property.|
|newValue|String|The new value for this property.|

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
