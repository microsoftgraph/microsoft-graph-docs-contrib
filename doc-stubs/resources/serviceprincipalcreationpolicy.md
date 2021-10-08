---
title: "servicePrincipalCreationPolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# servicePrincipalCreationPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [policyBase](../resources/policybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List servicePrincipalCreationPolicies](../api/serviceprincipalcreationpolicy-list.md)|[servicePrincipalCreationPolicy](../resources/serviceprincipalcreationpolicy.md) collection|Get a list of the [servicePrincipalCreationPolicy](../resources/serviceprincipalcreationpolicy.md) objects and their properties.|
|[Create servicePrincipalCreationPolicy](../api/serviceprincipalcreationpolicy-create.md)|[servicePrincipalCreationPolicy](../resources/serviceprincipalcreationpolicy.md)|Create a new [servicePrincipalCreationPolicy](../resources/serviceprincipalcreationpolicy.md) object.|
|[Get servicePrincipalCreationPolicy](../api/serviceprincipalcreationpolicy-get.md)|[servicePrincipalCreationPolicy](../resources/serviceprincipalcreationpolicy.md)|Read the properties and relationships of a [servicePrincipalCreationPolicy](../resources/serviceprincipalcreationpolicy.md) object.|
|[Update servicePrincipalCreationPolicy](../api/serviceprincipalcreationpolicy-update.md)|[servicePrincipalCreationPolicy](../resources/serviceprincipalcreationpolicy.md)|Update the properties of a [servicePrincipalCreationPolicy](../resources/serviceprincipalcreationpolicy.md) object.|
|[Delete servicePrincipalCreationPolicy](../api/serviceprincipalcreationpolicy-delete.md)|None|Deletes a [servicePrincipalCreationPolicy](../resources/serviceprincipalcreationpolicy.md) object.|
|[List excludes](../api/serviceprincipalcreationpolicy-list-excludes.md)|[servicePrincipalCreationConditionSet](../resources/serviceprincipalcreationconditionset.md) collection|Get the servicePrincipalCreationConditionSet resources from the excludes navigation property.|
|[Create servicePrincipalCreationConditionSet](../api/serviceprincipalcreationpolicy-post-excludes.md)|[servicePrincipalCreationConditionSet](../resources/serviceprincipalcreationconditionset.md)|Create a new servicePrincipalCreationConditionSet object.|
|[List includes](../api/serviceprincipalcreationpolicy-list-includes.md)|[servicePrincipalCreationConditionSet](../resources/serviceprincipalcreationconditionset.md) collection|Get the servicePrincipalCreationConditionSet resources from the includes navigation property.|
|[Create servicePrincipalCreationConditionSet](../api/serviceprincipalcreationpolicy-post-includes.md)|[servicePrincipalCreationConditionSet](../resources/serviceprincipalcreationconditionset.md)|Create a new servicePrincipalCreationConditionSet object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|description|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md).|
|displayName|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md).|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|isBuiltIn|Boolean|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|excludes|[servicePrincipalCreationConditionSet](../resources/serviceprincipalcreationconditionset.md) collection|**TODO: Add Description**|
|includes|[servicePrincipalCreationConditionSet](../resources/serviceprincipalcreationconditionset.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.servicePrincipalCreationPolicy",
  "baseType": "Microsoft.DirectoryServices.policyBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.servicePrincipalCreationPolicy",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "isBuiltIn": "Boolean"
}
```

