---
title: "azureADFeatureUsage resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# azureADFeatureUsage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List azureADFeatureUsages](../api/azureadfeatureusage-list.md)|[azureADFeatureUsage](../resources/azureadfeatureusage.md) collection|Get a list of the [azureADFeatureUsage](../resources/azureadfeatureusage.md) objects and their properties.|
|[Create azureADFeatureUsage](../api/azureadfeatureusage-create.md)|[azureADFeatureUsage](../resources/azureadfeatureusage.md)|Create a new [azureADFeatureUsage](../resources/azureadfeatureusage.md) object.|
|[Get azureADFeatureUsage](../api/azureadfeatureusage-get.md)|[azureADFeatureUsage](../resources/azureadfeatureusage.md)|Read the properties and relationships of an [azureADFeatureUsage](../resources/azureadfeatureusage.md) object.|
|[Update azureADFeatureUsage](../api/azureadfeatureusage-update.md)|[azureADFeatureUsage](../resources/azureadfeatureusage.md)|Update the properties of an [azureADFeatureUsage](../resources/azureadfeatureusage.md) object.|
|[Delete azureADFeatureUsage](../api/azureadfeatureusage-delete.md)|None|Deletes an [azureADFeatureUsage](../resources/azureadfeatureusage.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|featureName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|snapshotDateTime|DateTimeOffset|**TODO: Add Description**|
|usage|Int32|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.azureADFeatureUsage",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureADFeatureUsage",
  "id": "String (identifier)",
  "snapshotDateTime": "String (timestamp)",
  "featureName": "String",
  "usage": "Integer"
}
```

