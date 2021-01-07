---
title: "accessPackageResourceEnvironment resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# accessPackageResourceEnvironment resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List accessPackageResourceEnvironments](../api/accesspackageresourceenvironment-list.md)|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) collection|Get a list of the [accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) objects and their properties.|
|[Create accessPackageResourceEnvironment](../api/accesspackageresourceenvironment-create.md)|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md)|Create a new [accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) object.|
|[Get accessPackageResourceEnvironment](../api/accesspackageresourceenvironment-get.md)|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md)|Read the properties and relationships of an [accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) object.|
|[Update accessPackageResourceEnvironment](../api/accesspackageresourceenvironment-update.md)|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md)|Update the properties of an [accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) object.|
|[Delete accessPackageResourceEnvironment](../api/accesspackageresourceenvironment-delete.md)|None|Deletes an [accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) object.|
|[List accessPackageResources](../api/accesspackageresourceenvironment-list-accesspackageresources.md)|[accessPackageResource](../resources/accesspackageresource.md) collection|Get the accessPackageResource resources from the accessPackageResources navigation property.|
|[Add accessPackageResource](../api/accesspackageresourceenvironment-post-accesspackageresources.md)|[accessPackageResource](../resources/accesspackageresource.md)|Add accessPackageResources by posting to the accessPackageResources collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|connectionInfo|[connectionInfo](../resources/connectioninfo.md)|**TODO: Add Description**|
|createdBy|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|isDefaultEnvironment|Boolean|**TODO: Add Description**|
|modifiedBy|String|**TODO: Add Description**|
|modifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|originId|String|**TODO: Add Description**|
|originSystem|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessPackageResources|[accessPackageResource](../resources/accesspackageresource.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessPackageResourceEnvironment",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageResourceEnvironment",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "originSystem": "String",
  "originId": "String",
  "isDefaultEnvironment": "Boolean",
  "connectionInfo": {
    "@odata.type": "microsoft.graph.connectionInfo"
  },
  "createdBy": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedBy": "String",
  "modifiedDateTime": "String (timestamp)"
}
```

