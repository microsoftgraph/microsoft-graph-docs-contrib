---
title: "baselineParameter resource type"
description: "Parameters in configurationBaseline can help admins create one baseline object that can then be used for monitoring multiple tenants."
author: "swatya"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# baselineParameter resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**Parameterization is the concept of abstracting out values that are specific to a given tenant into parameters that will be provided at the time of tenant monitoring. Parameters in configurationBaseline can help admins create one baseline object that can then be used for monitoring multiple tenants. Users will be responsible for the parameterization of their configurationBaselines if they wish to use the baseline on multiple tenants. Users are also responsible for defining parameters on their own. Users can define multiple parameters in a configurationBaseline. If baselineParameters are not used in the configurationbaseline, those parameters won't be considered valid and users should avoid defining configurationBaseline with parameters that are not being used.**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**User friendly description of the parameter**|
|displayName|String|**Parameter names like FQDN, Tenant ID etc.**|
|parameterType|baselineParameterType|**The type of baselineParameters**.The possible values are: `string`, `integer`, `boolean` etc.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.baselineParameter"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.baselineParameter",
  "displayName": "String",
  "description": "String",
  "parameterType": "String"
}
```
