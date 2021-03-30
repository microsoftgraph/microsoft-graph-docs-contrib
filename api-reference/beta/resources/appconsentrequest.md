---
title: "appConsentRequest resource type"
description: "A request that represents an aggregation of userConsentRequests for a specific application."
author: "psignoret"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# appConsentRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An aggregation of [userConsentRequests](../resources/userconsentrequest.md) for a specific application.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List appConsentRequests](../api/appconsentrequest-list.md)|[appConsentRequest](../resources/appconsentrequest.md) collection|Get a list of the [appConsentRequest](../resources/appconsentrequest.md) objects and their properties.|
|[Get appConsentRequest](../api/appconsentrequest-get.md)|[appConsentRequest](../resources/appconsentrequest.md)|Read the properties and relationships of an [appConsentRequest](../resources/appconsentrequest.md) object.|
|[List appConsentRequests: filterByCurrentUser](../api/appconsentrequest-filterByCurrentUser.md)|[appConsentRequest](../resources/appconsentrequest.md)|A list of the [appConsentRequests](../resources/appconsentrequest.md) for which the current user is the reviewer|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appDisplayName|String|The display name of the app for which consent is requested. Required. Supports `$filter` (`eq` only) and `$orderby`. |
|appId|String|The identifier of the application. Required. Supports `$filter` (`eq` only) and `$orderby`. |
|consentType|String|The consent type of the request. Possible values are: `Static` and `Dynamic`. These represent static and dynamic permissions, respectively, requested in the consent workflow. Supports `$filter` (`eq` only) and `$orderby`. Required.|
|id|String|The identifier of the app consent request. Required.|
|pendingScopes|[appConsentRequestScope](../resources/appconsentrequestscope.md) collection|A list of pending scopes waiting for approval. This is empty if the consentType is `Static`. Required.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|userConsentRequests|[userConsentRequest](../resources/userconsentrequest.md) collection|A list of pending user consent requests.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appConsentRequest",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appConsentRequest",
  "id": "String (identifier)",
  "appId": "String",
  "appDisplayName": "String",
  "consentType": "String",
  "pendingScopes": [
    {
      "@odata.type": "microsoft.graph.appConsentRequestScope"
    }
  ]
}
```

