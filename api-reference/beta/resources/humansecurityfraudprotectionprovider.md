---
title: "humanSecurityFraudProtectionProvider resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 09/15/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# humanSecurityFraudProtectionProvider resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [fraudProtectionProvider](../resources/fraudprotectionprovider.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/humansecurityfraudprotectionprovider-list.md)|[humanSecurityFraudProtectionProvider](../resources/humansecurityfraudprotectionprovider.md) collection|Get a list of the humanSecurityFraudProtectionProvider objects and their properties.|
|[Get](../api/humansecurityfraudprotectionprovider-get.md)|[humanSecurityFraudProtectionProvider](../resources/humansecurityfraudprotectionprovider.md)|Read the properties and relationships of [humanSecurityFraudProtectionProvider](../resources/humansecurityfraudprotectionprovider.md) object.|
|[Update](../api/humansecurityfraudprotectionprovider-update.md)|[humanSecurityFraudProtectionProvider](../resources/humansecurityfraudprotectionprovider.md)|Update the properties of a humanSecurityFraudProtectionProvider object.|
|[Delete](../api/humansecurityfraudprotectionprovider-delete.md)|None|Delete a humanSecurityFraudProtectionProvider object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description** Inherited from [fraudProtectionProvider](../resources/fraudprotectionprovider.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|serverToken|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.humanSecurityFraudProtectionProvider",
  "baseType": "microsoft.graph.fraudProtectionProvider",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.humanSecurityFraudProtectionProvider",
  "id": "String (identifier)",
  "displayName": "String",
  "appId": "String",
  "serverToken": "String"
}
```

