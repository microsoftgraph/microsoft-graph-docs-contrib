---
title: "identityUserFlow resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# identityUserFlow resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List identityUserFlows](../api/identityuserflow-list.md)|[identityUserFlow](../resources/identityuserflow.md) collection|Get a list of the [identityUserFlow](../resources/identityuserflow.md) objects and their properties.|
|[Create identityUserFlow](../api/identityuserflow-create.md)|[identityUserFlow](../resources/identityuserflow.md)|Create a new [identityUserFlow](../resources/identityuserflow.md) object.|
|[Get identityUserFlow](../api/identityuserflow-get.md)|[identityUserFlow](../resources/identityuserflow.md)|Read the properties and relationships of an [identityUserFlow](../resources/identityuserflow.md) object.|
|[Update identityUserFlow](../api/identityuserflow-update.md)|[identityUserFlow](../resources/identityuserflow.md)|Update the properties of an [identityUserFlow](../resources/identityuserflow.md) object.|
|[Delete identityUserFlow](../api/identityuserflow-delete.md)|None|Deletes an [identityUserFlow](../resources/identityuserflow.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|userFlowType|userFlowType|**TODO: Add Description**. Possible values are: `signUp`, `signIn`, `signUpOrSignIn`, `passwordReset`, `profileUpdate`, `resourceOwner`, `unknownFutureValue`.|
|userFlowTypeVersion|Single|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityUserFlow",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityUserFlow",
  "id": "String (identifier)",
  "userFlowType": "String",
  "userFlowTypeVersion": "Single"
}
```

