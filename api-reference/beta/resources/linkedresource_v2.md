---
title: "linkedResource_v2 resource type"
description: "Represents an item in a partner application related to a baseTask"
author: "avijityadav"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: resourcePageType
---

# linkedResource_v2 resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi](../includes/todo-deprecate-basetaskapi.md)]

Represents an item in a partner application related to a [baseTask](./basetask.md). An example is an email from where the task was created. A **linkedResource** object stores information about that source application, and lets you link back to the related item. You can see the **linkedResource** in the task details view, as shown.

![Screenshot showing linked resource card in task details pane. Linked resource card shows Open in Jira, which is the partner application name, and Social media Plan which is the title of linked resource](/graph/images/todo-linkedresource-taskdetail.png)

Some **linkedResource** objects are not associated with any web URLs, in which case, the **webUrl** property is not required. For example, the linked item can be from a custom business app or native platform app, such as an SMS app on a mobile phone. Here is how a **linkedResource** appears with and without a URL.

![Image showing how linked resource card with and without URL is displayed. Linked resource card with URL contains Open with partner application Name while linked resource card without URL contains just partner Application name.](/graph/images/todo-linkedresource.png)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List linkedResource_v2](../api/basetask-list-linkedresources.md)|[linkedResource_v2](../resources/linkedresource_v2.md) collection|Get a list of the [linkedResource_v2](../resources/linkedresource_v2.md) objects and their properties.|
|[Create linkedResource_v2](../api/basetask-post-linkedresources.md)|[linkedResource_v2](../resources/linkedresource_v2.md)|Create a new [linkedResource_v2](../resources/linkedresource_v2.md) object.|
|[Get linkedResource_v2](../api/linkedresource_v2-get.md)|[linkedResource_v2](../resources/linkedresource_v2.md)|Read the properties and relationships of a [linkedResource_v2](../resources/linkedresource_v2.md) object.|
|[Update linkedResource_v2](../api/linkedresource_v2-update.md)|[linkedResource_v2](../resources/linkedresource_v2.md)|Update the properties of a [linkedResource_v2](../resources/linkedresource_v2.md) object.|
|[Delete linkedResource_v2](../api/linkedresource_v2-delete.md)|None|Deletes a [linkedResource_v2](../resources/linkedresource_v2.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applicationName|String|Field indicating the app name of the source that is sending the **linkedResource**.|
|displayName|String|Field indicating the title of the **linkedResource**.|
|externalId|String|Id of the object that is associated with this task on the third-party/partner system.|
|id|String|Server generated ID for the **linkedResource**. Inherited from [entity](../resources/entity.md).|
|webUrl|String|Deep link to the **linkedResource**.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.linkedResource_v2",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.linkedResource_v2",
  "webUrl": "String",
  "applicationName": "String",
  "displayName": "String",
  "externalId": "String",
  "id": "String (identifier)"
}
```

