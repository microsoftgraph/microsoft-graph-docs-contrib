---
title: "governancePolicyTemplate resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# governancePolicyTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List governancePolicyTemplates](../api/governancepolicytemplate-list.md)|[governancePolicyTemplate](../resources/governancepolicytemplate.md) collection|Get a list of the [governancePolicyTemplate](../resources/governancepolicytemplate.md) objects and their properties.|
|[Create governancePolicyTemplate](../api/governancepolicytemplate-create.md)|[governancePolicyTemplate](../resources/governancepolicytemplate.md)|Create a new [governancePolicyTemplate](../resources/governancepolicytemplate.md) object.|
|[Get governancePolicyTemplate](../api/governancepolicytemplate-get.md)|[governancePolicyTemplate](../resources/governancepolicytemplate.md)|Read the properties and relationships of a [governancePolicyTemplate](../resources/governancepolicytemplate.md) object.|
|[Update governancePolicyTemplate](../api/governancepolicytemplate-update.md)|[governancePolicyTemplate](../resources/governancepolicytemplate.md)|Update the properties of a [governancePolicyTemplate](../resources/governancepolicytemplate.md) object.|
|[Delete governancePolicyTemplate](../api/governancepolicytemplate-delete.md)|None|Deletes a [governancePolicyTemplate](../resources/governancepolicytemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|policy|[governancePolicy](../resources/governancepolicy.md)|**TODO: Add Description**|
|settings|[businessFlowSettings](../resources/businessflowsettings.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.governancePolicyTemplate",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.governancePolicyTemplate",
  "id": "String (identifier)",
  "displayName": "String",
  "policy": {
    "@odata.type": "microsoft.graph.governancePolicy"
  },
  "settings": {
    "@odata.type": "microsoft.graph.businessFlowSettings"
  }
}
```

