---
title: "conditionalAccessClientApplications resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# conditionalAccessClientApplications resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|excludeServicePrincipals|String collection|**TODO: Add Description**|
|includeServicePrincipals|String collection|**TODO: Add Description**|
|servicePrincipalFilter|[conditionalAccessFilter](../resources/conditionalaccessfilter.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.conditionalAccessClientApplications"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.conditionalAccessClientApplications",
  "excludeServicePrincipals": [
    "String"
  ],
  "includeServicePrincipals": [
    "String"
  ],
  "servicePrincipalFilter": {
    "@odata.type": "microsoft.graph.conditionalAccessFilter"
  }
}
```

