---
title: "awsPolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# awsPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsPolicies](../api/awsauthorizationsystem-list-policies.md)|[awsPolicy](../resources/awspolicy.md) collection|Get a list of the [awsPolicy](../resources/awspolicy.md) objects and their properties.|
|[Create awsPolicy](../api/awsauthorizationsystem-post-policies.md)|[awsPolicy](../resources/awspolicy.md)|Create a new [awsPolicy](../resources/awspolicy.md) object.|
|[Get awsPolicy](../api/awspolicy-get.md)|[awsPolicy](../resources/awspolicy.md)|Read the properties and relationships of an [awsPolicy](../resources/awspolicy.md) object.|
|[Update awsPolicy](../api/awspolicy-update.md)|[awsPolicy](../resources/awspolicy.md)|Update the properties of an [awsPolicy](../resources/awspolicy.md) object.|
|[Delete awsPolicy](../api/awsauthorizationsystem-delete-policies.md)|None|Delete an [awsPolicy](../resources/awspolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|awsPolicyType|awsPolicyType|**TODO: Add Description**.The possible values are: `system`, `custom`, `unknownFutureValue`.|
|displayName|String|**TODO: Add Description**|
|externalId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.awsPolicy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsPolicy",
  "id": "String (identifier)",
  "externalId": "String",
  "displayName": "String",
  "awsPolicyType": "String"
}
```

