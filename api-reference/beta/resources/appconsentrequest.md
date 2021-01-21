---
title: "appConsentRequest resource type"
description: "A request that represents an aggregation of userConsentRequests for a specific application."
author: "Zawad"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# appConsentRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A request that represents an aggregation of [userConsentRequests](../resources/userconsentrequest.md) for a specific application.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List appConsentRequests](../api/appconsentrequest-list.md)|[appConsentRequest](../resources/appconsentrequest.md) collection|Get a list of the [appConsentRequest](../resources/appconsentrequest.md) objects and their properties.|
|[Get appConsentRequest](../api/appconsentrequest-get.md)|[appConsentRequest](../resources/appconsentrequest.md)|Read the properties and relationships of an [appConsentRequest](../resources/appconsentrequest.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appDisplayName|String|The app display name of the app consent request.<br><br>Supports `$filter` (`eq` only) and `$sort`.|
|appId|String|The identifier of the application.<br><br>Supports `$filter` (`eq` only) and `$sort`. |
|consentType|String|The consent type of the request. Possible values are: `Static` and `Dynamic`.<br><br>Supports `$filter` (`eq` only) and `$sort`. |
|id|String|The identifier of the app consent request. |
|pendingScopes|[appConsentRequestScope](../resources/appconsentrequestscope.md) collection|A list of pending dynamic scopes that need approval. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|userConsentRequests|[userConsentRequest](../resources/userconsentrequest.md) collection|Get a list of pending user consent requests. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appConsentRequest",
  "baseType": "",
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

