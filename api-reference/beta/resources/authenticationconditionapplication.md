---
title: "authenticationConditionApplication resource type"
description: "An object representing the application that will be triggered for an authenticationEventListener."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: "Linked applications"
ms.date: 08/05/2024
---

# authenticationConditionApplication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An object representing the application that will be triggered for an authenticationEventListener. The object is the service principal instance in the tenant.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
|[List](../api/authenticationconditionsapplications-list-includeapplications.md)|[authenticationConditionApplication](../resources/authenticationconditionapplication.md) collection|List listeners associated with an external identities self-service sign-up user flow.|
|[Add](../api/authenticationconditionsapplications-post-includeapplications.md)|None|List listeners associated with an external identities self-service sign-up user flow.|
|[Remove](../api/authenticationconditionapplication-delete.md)|None|List listeners associated with an external identities self-service sign-up user flow.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|The identifier for an application corresponding to a condition which will trigger an authenticationEventListener.|

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

