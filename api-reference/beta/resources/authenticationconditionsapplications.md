---
title: "authenticationConditionsApplications resource type"
description: "Applications which will trigger an authentication custom extension."
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationConditionsApplications resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Applications which will trigger an authentication custom extension.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|includeAllApplications|Boolean|Whether the authentication custom extension should trigger for all applications.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeApplications|[authenticationConditionApplication](../resources/authenticationconditionapplication.md) collection|Collection of the applications which will trigger an authentication custom extension.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationConditionsApplications"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationConditionsApplications",
  "includeAllApplications": "Boolean"
}
```

