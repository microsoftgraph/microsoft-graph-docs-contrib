---
title: "dataSecurityAndGovernance resource type"
description: "Abstract base type representing the entry point for Microsoft Purview data security and governance features."
author: "kylemar"
ms.date: 06/19/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# dataSecurityAndGovernance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract base type representing the entry point for Microsoft Purview data security and governance features. The following resources inherit from this type:

- [userDataSecurityAndGovernance](../resources/userdatasecurityandgovernance.md)
- [tenantDataSecurityAndGovernance](../resources/tenantdatasecurityandgovernance.md)

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique ID of the data security and governance stream. Inherited from [entity](../resources/entity.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.dataSecurityAndGovernance",
  "baseType": "microsoft.graph.entity",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.dataSecurityAndGovernance",
  "id": "String (identifier)"
}
```
