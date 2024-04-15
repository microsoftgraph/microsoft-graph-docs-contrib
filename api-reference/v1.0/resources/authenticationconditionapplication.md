---
title: "authenticationConditionApplication resource type"
description: "An object representing the application that will be triggered for an authenticationEventListener."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# authenticationConditionApplication resource type

Namespace: microsoft.graph

An object representing the application that will be triggered for an authenticationEventListener.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|The identifier for an application corresponding to a condition which will trigger an authenticationEventListener.|

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

