---
title: "tenantRelationshipAccessPolicyBase resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# tenantRelationshipAccessPolicyBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.


Inherits from [policyBase](../resources/policybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List tenantRelationshipAccessPolicyBases](../api/tenantrelationshipaccesspolicybase-list.md)|[tenantRelationshipAccessPolicyBase](../resources/tenantrelationshipaccesspolicybase.md) collection|Get a list of the [tenantRelationshipAccessPolicyBase](../resources/tenantrelationshipaccesspolicybase.md) objects and their properties.|
|[Create tenantRelationshipAccessPolicyBase](../api/tenantrelationshipaccesspolicybase-create.md)|[tenantRelationshipAccessPolicyBase](../resources/tenantrelationshipaccesspolicybase.md)|Create a new [tenantRelationshipAccessPolicyBase](../resources/tenantrelationshipaccesspolicybase.md) object.|
|[Get tenantRelationshipAccessPolicyBase](../api/tenantrelationshipaccesspolicybase-get.md)|[tenantRelationshipAccessPolicyBase](../resources/tenantrelationshipaccesspolicybase.md)|Read the properties and relationships of a [tenantRelationshipAccessPolicyBase](../resources/tenantrelationshipaccesspolicybase.md) object.|
|[Update tenantRelationshipAccessPolicyBase](../api/tenantrelationshipaccesspolicybase-update.md)|[tenantRelationshipAccessPolicyBase](../resources/tenantrelationshipaccesspolicybase.md)|Update the properties of a [tenantRelationshipAccessPolicyBase](../resources/tenantrelationshipaccesspolicybase.md) object.|
|[Delete tenantRelationshipAccessPolicyBase](../api/tenantrelationshipaccesspolicybase-delete.md)|None|Deletes a [tenantRelationshipAccessPolicyBase](../resources/tenantrelationshipaccesspolicybase.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|definition|String collection|**TODO: Add Description**|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|description|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md).|
|displayName|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md).|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantRelationshipAccessPolicyBase",
  "baseType": "Microsoft.DirectoryServices.policyBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantRelationshipAccessPolicyBase",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "definition": [
    "String"
  ]
}
```

