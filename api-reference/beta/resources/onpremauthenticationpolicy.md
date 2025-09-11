---
title: "onPremAuthenticationPolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 09/10/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# onPremAuthenticationPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [stsPolicy](../resources/stspolicy.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/policyroot-list-onpremauthenticationpolicies.md)|[onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md) collection|Get a list of the onPremAuthenticationPolicy objects and their properties.|
|[Create](../api/policyroot-post-onpremauthenticationpolicies.md)|[onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md)|Create a new onPremAuthenticationPolicy object.|
|[Get](../api/onpremauthenticationpolicy-get.md)|[onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md)|Read the properties and relationships of [onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md) object.|
|[Update](../api/onpremauthenticationpolicy-update.md)|[onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md)|Update the properties of an onPremAuthenticationPolicy object.|
|[Delete](../api/policyroot-delete-onpremauthenticationpolicies.md)|None|Delete an onPremAuthenticationPolicy object.|
|[List appliesTo](../api/onpremauthenticationpolicy-list-appliesto.md)|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add a useful description.**|
|[Add appliesTo](../api/onpremauthenticationpolicy-post-appliesto.md)|[directoryObject](../resources/directoryobject.md)|Add appliesTo by posting to the appliesTo collection.|
|[Remove appliesTo](../api/onpremauthenticationpolicy-delete-appliesto.md)|None|Remove a [directoryObject](../resources/directoryobject.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|definition|String collection|**TODO: Add Description** Inherited from [stsPolicy](../resources/stspolicy.md).|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|description|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md).|
|displayName|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isOrganizationDefault|Boolean|**TODO: Add Description** Inherited from [stsPolicy](../resources/stspolicy.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appliesTo|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.stsPolicy](../resources/stspolicy.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onPremAuthenticationPolicy",
  "baseType": "microsoft.graph.stsPolicy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPremAuthenticationPolicy",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "definition": [
    "String"
  ],
  "isOrganizationDefault": "Boolean"
}
```

