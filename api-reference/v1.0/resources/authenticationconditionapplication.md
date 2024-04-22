---
title: "authenticationConditionApplication resource type"
description: "Represents the application that is triggered for an authenticationEventListener."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# authenticationConditionApplication resource type

Namespace: microsoft.graph

Represents the application that is triggered for an authenticationEventListener.

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|The identifier for an application corresponding to a condition that triggers an authenticationEventListener.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

