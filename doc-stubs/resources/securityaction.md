---
title: "securityAction resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# securityAction resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List securityActions](../api/securityaction-list.md)|[securityAction](../resources/securityaction.md) collection|Get a list of the [securityAction](../resources/securityaction.md) objects and their properties.|
|[Create securityAction](../api/securityaction-create.md)|[securityAction](../resources/securityaction.md)|Create a new [securityAction](../resources/securityaction.md) object.|
|[Get securityAction](../api/securityaction-get.md)|[securityAction](../resources/securityaction.md)|Read the properties and relationships of a [securityAction](../resources/securityaction.md) object.|
|[Update securityAction](../api/securityaction-update.md)|[securityAction](../resources/securityaction.md)|Update the properties of a [securityAction](../resources/securityaction.md) object.|
|[Delete securityAction](../api/securityaction-delete.md)|None|Deletes a [securityAction](../resources/securityaction.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionReason|String|**TODO: Add Description**|
|appId|String|**TODO: Add Description**|
|azureTenantId|String|**TODO: Add Description**|
|clientContext|String|**TODO: Add Description**|
|completedDateTime|DateTimeOffset|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|errorInfo|[resultInfo](../resources/resultinfo.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|lastActionDateTime|DateTimeOffset|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|parameters|[keyValuePair](../resources/synchronization-keyvaluepair.md) collection|**TODO: Add Description**|
|states|[securityActionState](../resources/securityactionstate.md) collection|**TODO: Add Description**|
|status|operationStatus|**TODO: Add Description**. Possible values are: `NotStarted`, `Running`, `Completed`, `Failed`.|
|user|String|**TODO: Add Description**|
|vendorInformation|[securityVendorInformation](../resources/securityvendorinformation.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.securityAction",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.securityAction",
  "id": "String (identifier)",
  "actionReason": "String",
  "appId": "String",
  "azureTenantId": "String",
  "clientContext": "String",
  "completedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "errorInfo": {
    "@odata.type": "microsoft.graph.resultInfo"
  },
  "lastActionDateTime": "String (timestamp)",
  "name": "String",
  "parameters": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "states": [
    {
      "@odata.type": "microsoft.graph.securityActionState"
    }
  ],
  "status": "String",
  "user": "String",
  "vendorInformation": {
    "@odata.type": "microsoft.graph.securityVendorInformation"
  }
}
```

