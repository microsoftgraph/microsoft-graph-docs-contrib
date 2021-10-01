---
title: "administrativeUnit resource type"
description: "Represents an Azure Active Directory object. The directoryObject type is the base type for many other directory entity types."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# administrativeUnit resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure Active Directory object. The directoryObject type is the base type for many other directory entity types.


Inherits from [directoryObject](../resources/directoryobject.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List administrativeUnits](../api/administrativeunit-list.md)|[administrativeUnit](../resources/administrativeunit.md) collection|Get a list of the [administrativeUnit](../resources/administrativeunit.md) objects and their properties.|
|[Create administrativeUnit](../api/administrativeunit-post-administrativeunits.md)|[administrativeUnit](../resources/administrativeunit.md)|Create a new [administrativeUnit](../resources/administrativeunit.md) object.|
|[Get administrativeUnit](../api/administrativeunit-get.md)|[administrativeUnit](../resources/administrativeunit.md)|Read the properties and relationships of an [administrativeUnit](../resources/administrativeunit.md) object.|
|[Update administrativeUnit](../api/administrativeunit-update.md)|[administrativeUnit](../resources/administrativeunit.md)|Update the properties of an [administrativeUnit](../resources/administrativeunit.md) object.|
|[Delete administrativeUnit](../api/administrativeunit-delete.md)|None|Deletes an [administrativeUnit](../resources/administrativeunit.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isMemberManagementRestricted|Boolean|**TODO: Add Description**|
|membershipRule|String|**TODO: Add Description**|
|membershipRuleProcessingState|String|**TODO: Add Description**|
|membershipType|String|**TODO: Add Description**|
|visibility|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|extensions|[extension](../resources/extension.md) collection|**TODO: Add Description**|
|members|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|scopedRoleMembers|[scopedRoleMembership](../resources/scopedrolemembership.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.administrativeUnit",
  "baseType": "microsoft.graph.directoryObject",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.administrativeUnit",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "isMemberManagementRestricted": "Boolean",
  "membershipRule": "String",
  "membershipRuleProcessingState": "String",
  "membershipType": "String",
  "visibility": "String"
}
```

