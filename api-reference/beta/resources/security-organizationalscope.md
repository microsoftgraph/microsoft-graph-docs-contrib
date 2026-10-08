---
title: "organizationalScope resource type"
description: "Represents a scope that specifies which devices are covered by a custom detection rule's detection action."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 06/03/2026
---

# organizationalScope resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a scope that specifies which devices are covered by a [custom detection rule's](../resources/security-detectionrule.md) [detection action](../resources/security-detectionaction.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|deviceGroups|String collection|List of device groups to which the custom detection rule applies.|
|scopeNames (deprecated)|String collection|List of groups to which the custom detection rule applies. **Deprecated.** Use **deviceGroups** instead. This property will be removed from this resource on October 1, 2026.|
|scopeType (deprecated)|[microsoft.graph.security.scopeType](../resources/enums-security.md#scopetype-values)|The type of the organizational scope. The possible values are: `deviceGroup`, `unknownFutureValue`. **Deprecated.** Use **deviceGroups** instead. This property will be removed from this resource on October 1, 2026.|

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
  ],
  "scopeType": "String",
  "scopeNames": [
    "String"
  ]
}
```


