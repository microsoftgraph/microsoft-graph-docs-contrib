---
title: "authenticationConditionsApplications resource type"
description: "The applications on which an authenticationEventListener should trigger."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# authenticationConditionsApplications resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The applications on which an authenticationEventListener should trigger.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|includeAllApplications|Boolean|Whether the custom authentication extension should trigger for all applications with appIds specified in the **includeApplications** relationship. This property must be set to `false` for listener of type **onTokenIssuanceStartListener**.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeApplications|[authenticationConditionApplication](../resources/authenticationconditionapplication.md) collection|Collection of the application conditions on which an authenticationEventListener should trigger.|

## JSON representation
The following JSON representation shows the resource type.
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

