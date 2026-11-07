---
title: "organizationalScope resource type"
description: "Represents a scope that specifies which devices are covered by a custom detection rule's detection action."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 08/25/2026
---

# organizationalScope resource type

Namespace: microsoft.graph.security

Represents a scope that specifies which devices are covered by a [custom detection rule's](../resources/security-detectionrule.md) [detection action](../resources/security-detectionaction.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|deviceGroups|String collection|List of device groups to which the custom detection rule applies.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.organizationalScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.organizationalScope",
  "deviceGroups": [
    "String"
  ]
}
```
