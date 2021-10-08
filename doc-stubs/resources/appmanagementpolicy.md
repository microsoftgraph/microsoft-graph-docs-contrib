---
title: "appManagementPolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# appManagementPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [policyBase](../resources/policybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List appManagementPolicies](../api/appmanagementpolicy-list.md)|[appManagementPolicy](../resources/appmanagementpolicy.md) collection|Get a list of the [appManagementPolicy](../resources/appmanagementpolicy.md) objects and their properties.|
|[Create appManagementPolicy](../api/appmanagementpolicy-create.md)|[appManagementPolicy](../resources/appmanagementpolicy.md)|Create a new [appManagementPolicy](../resources/appmanagementpolicy.md) object.|
|[Get appManagementPolicy](../api/appmanagementpolicy-get.md)|[appManagementPolicy](../resources/appmanagementpolicy.md)|Read the properties and relationships of an [appManagementPolicy](../resources/appmanagementpolicy.md) object.|
|[Update appManagementPolicy](../api/appmanagementpolicy-update.md)|[appManagementPolicy](../resources/appmanagementpolicy.md)|Update the properties of an [appManagementPolicy](../resources/appmanagementpolicy.md) object.|
|[Delete appManagementPolicy](../api/appmanagementpolicy-delete.md)|None|Deletes an [appManagementPolicy](../resources/appmanagementpolicy.md) object.|
|[List appliesTo](../api/appmanagementpolicy-list-appliesto.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the appliesTo navigation property.|
|[Add appliesTo](../api/appmanagementpolicy-post-appliesto.md)|[directoryObject](../resources/directoryobject.md)|Add appliesTo by posting to the appliesTo collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|description|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md).|
|displayName|String|**TODO: Add Description** Inherited from [policyBase](../resources/policybase.md).|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|isEnabled|Boolean|**TODO: Add Description**|
|restrictions|[appManagementConfiguration](../resources/appmanagementconfiguration.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appliesTo|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appManagementPolicy",
  "baseType": "Microsoft.DirectoryServices.policyBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appManagementPolicy",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "isEnabled": "Boolean",
  "restrictions": {
    "@odata.type": "microsoft.graph.appManagementConfiguration"
  }
}
```

