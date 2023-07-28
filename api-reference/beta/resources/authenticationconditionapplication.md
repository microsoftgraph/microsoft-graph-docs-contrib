---
title: "authenticationConditionApplication resource type"
description: "An object representing the application that will be triggered for an authenticationEventListener."
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationConditionApplication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An object representing the application that will be triggered for an authenticationEventListener.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
|[List linked applications](../api/authenticationconditionsapplications-list-includeapplications.md)|[authenticationConditionApplication](../resources/authenticationconditionapplication.md) collection|List listeners associated with an external identities self-service sign-up user flow.|
|[Add linked application](../api/authenticationconditionsapplications-post-includeapplications.md)|None|List listeners associated with an external identities self-service sign-up user flow.|
|[Remove linked application](../api/authenticationconditionapplication-delete.md)|None|List listeners associated with an external identities self-service sign-up user flow.|

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

