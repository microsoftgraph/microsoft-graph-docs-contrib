---
title: "featureTarget resource type"
description: "Defines a single group, Microsoft Entra role, or administrative unit that is included or excluded in the settings specified in the authenticationMethodFeatureConfiguration object."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# featureTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines a single group, Microsoft Entra role, or administrative unit that is included or excluded in the settings specified in the [authenticationMethodFeatureConfiguration](authenticationmethodfeatureconfiguration.md) object.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of the entity that's targeted in the include or exclude rule or `all_users` to target all users.|
|targetType|featureTargetType|The kind of entity that's targeted. The possible values are: `group`, `administrativeUnit`, `role`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.featureTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.featureTarget",
  "targetType": "String",
  "id": "String (identifier)"
}
```
