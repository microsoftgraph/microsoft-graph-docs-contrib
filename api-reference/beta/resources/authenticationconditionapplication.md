---
title: "authenticationConditionApplication resource type"
description: "An application which will trigger an authentication custom extension."
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationConditionApplication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An application which will trigger an authentication custom extension.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authenticationConditionApplications](../api/authenticationconditionapplication-list.md)|[authenticationConditionApplication](../resources/authenticationconditionapplication.md) collection|Get a list of the [authenticationConditionApplication](../resources/authenticationconditionapplication.md) objects and their properties.|
|[Get authenticationConditionApplication](../api/authenticationconditionapplication-get.md)|[authenticationConditionApplication](../resources/authenticationconditionapplication.md)|Read the properties and relationships of an [authenticationConditionApplication](../resources/authenticationconditionapplication.md) object.|
|[Update authenticationConditionApplication](../api/authenticationconditionapplication-update.md)|[authenticationConditionApplication](../resources/authenticationconditionapplication.md)|Update the properties of an [authenticationConditionApplication](../resources/authenticationconditionapplication.md) object.|
|[Delete authenticationConditionApplication](../api/authenticationconditionapplication-delete.md)|None|Deletes an [authenticationConditionApplication](../resources/authenticationconditionapplication.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|The identifier for an application which will trigger an authentication custom extension.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationConditionApplication",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationConditionApplication",
  "appId": "String"
}
```

