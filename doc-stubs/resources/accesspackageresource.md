---
title: "accessPackageResource resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# accessPackageResource resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List accessPackageResources](../api/accesspackageresource-list.md)|[accessPackageResource](../resources/accesspackageresource.md) collection|Get a list of the [accessPackageResource](../resources/accesspackageresource.md) objects and their properties.|
|[Create accessPackageResource](../api/accesspackageresource-create.md)|[accessPackageResource](../resources/accesspackageresource.md)|Create a new [accessPackageResource](../resources/accesspackageresource.md) object.|
|[Get accessPackageResource](../api/accesspackageresource-get.md)|[accessPackageResource](../resources/accesspackageresource.md)|Read the properties and relationships of an [accessPackageResource](../resources/accesspackageresource.md) object.|
|[Update accessPackageResource](../api/accesspackageresource-update.md)|[accessPackageResource](../resources/accesspackageresource.md)|Update the properties of an [accessPackageResource](../resources/accesspackageresource.md) object.|
|[Delete accessPackageResource](../api/accesspackageresource-delete.md)|None|Deletes an [accessPackageResource](../resources/accesspackageresource.md) object.|
|[List accessPackageResourceEnvironment](../api/accesspackageresource-list-accesspackageresourceenvironment.md)|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) collection|Get the accessPackageResourceEnvironment resources from the accessPackageResourceEnvironment navigation property.|
|[Add accessPackageResourceEnvironment](../api/accesspackageresource-post-accesspackageresourceenvironment.md)|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md)|Add accessPackageResourceEnvironment by posting to the accessPackageResourceEnvironment collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|addedBy|String|**TODO: Add Description**|
|addedOn|DateTimeOffset|**TODO: Add Description**|
|attributes|[accessPackageResourceAttribute](../resources/accesspackageresourceattribute.md) collection|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|isPendingOnboarding|Boolean|**TODO: Add Description**|
|originId|String|**TODO: Add Description**|
|originSystem|String|**TODO: Add Description**|
|resourceType|String|**TODO: Add Description**|
|url|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessPackageResourceEnvironment|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md)|**TODO: Add Description**|
|accessPackageResourceRoles|[accessPackageResourceRole](../resources/accesspackageresourcerole.md) collection|**TODO: Add Description**|
|accessPackageResourceScopes|[accessPackageResourceScope](../resources/accesspackageresourcescope.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessPackageResource",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageResource",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "url": "String",
  "resourceType": "String",
  "originId": "String",
  "originSystem": "String",
  "isPendingOnboarding": "Boolean",
  "addedBy": "String",
  "addedOn": "String (timestamp)",
  "attributes": [
    {
      "@odata.type": "microsoft.graph.accessPackageResourceAttribute"
    }
  ]
}
```

