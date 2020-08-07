---
title: "linkedResource resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "Microsoft To Do"
doc_type: resourcePageType
---

# linkedResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can add links related to a task using the [linkedResource](./linkedresource.md) entity.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get linkedResource](../api/linkedresource-get.md)|[linkedResource](../resources/linkedresource.md)|Read the properties and relationships of a [linkedResource](../resources/linkedresource.md) object.|
|[Update linkedResource](../api/linkedresource-update.md)|[linkedResource](../resources/linkedresource.md)|Update the properties of a [linkedResource](../resources/linkedresource.md) object.|
|[Delete linkedResource](../api/linkedresource-delete.md)|None|Deletes a [linkedResource](../resources/linkedresource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applicationName|String|Field indicating app name of the source that is sending the linked entity|
|displayName|String|Field indicating title of the linked entity.|
|externalId|String|Id of the object that is associated with this task on the third-party/partner system|
|id|String|Server generated Id for the linked entity Inherited from [entity](../resources/entity.md)|
|webUrl|String|Deeplink to the linked entity. Optional|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.linkedResource",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.linkedResource",
  "id": "681ca85b-1780-4839-82d9-1b3b139c680c",
  "webUrl": "https://sampleUrl.com",
  "applicationName": "App Name",
  "displayName": "linkedResource added from MS Graph",
  "externalId": "abcd1234"
}
```

