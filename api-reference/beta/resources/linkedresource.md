---
title: "linkedResource resource type"
description: "Represents an item in a partner application related to a todoTask."
author: "avijityadav"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# linkedResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an item in a partner application related to a [todoTask](./todotask.md). An example is an email from where the task was created. A **linkedResource** object stores information about that source application, and lets you link back to the related item. You can see the **linkedResource** in the task details view, as shown.

![Linked resource in task details pane](/graph/images/todo-linkedresource-taskdetail.png)

Some **linkedResource** objects are not associated with any web URLs, in which case, the **webUrl** property is not required. For example, the linked item can be from a custom business app or native platform app, such as an SMS app on a mobile phone. The following is how a **linkedResource** appears with and without a URL.

![Linked resource with and without URL](/graph/images/todo-linkedresource.png)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/todotask-list-linkedresources.md)|[linkedResource](../resources/linkedresource.md) collection|Get the **linkedResources** from the **linkedResources** navigation property.|
|[Create](../api/todotask-post-linkedresources.md)|[linkedResource](../resources/linkedresource.md)|Create a new **linkedResources** object.|
|[Get](../api/linkedresource-get.md)|[linkedResource](../resources/linkedresource.md)|Read the properties and relationships of a [linkedResource](../resources/linkedresource.md) object.|
|[Update](../api/linkedresource-update.md)|[linkedResource](../resources/linkedresource.md)|Update the properties of a [linkedResource](../resources/linkedresource.md) object.|
|[Delete](../api/linkedresource-delete.md)|None|Delete a [linkedResource](../resources/linkedresource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applicationName|String|The app name of the source that sends the **linkedResource**.|
|displayName|String|The title of the **linkedResource**.|
|externalId|String|ID of the object that is associated with this task on the third-party/partner system.|
|id|String|Server generated ID for the **linkedResource**. Inherited from [entity](../resources/entity.md).|
|webUrl|String|Deep link to the **linkedResource**.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
  "applicationName": "String",
  "displayName": "String",
  "externalId": "String",
  "id": "String (identifier)",
  "webUrl": "String"
}
```
