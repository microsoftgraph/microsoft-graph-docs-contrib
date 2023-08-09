---
title: "appConsentRequest resource type"
description: "Represents the request that a user creates when they request the tenant admin for consent to access an app or to grant permissions to an app."
author: "eringreenlee"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# appConsentRequest resource type

Namespace: microsoft.graph

Represents the request that a user creates when they request the tenant admin for consent to access an app or to grant permissions to an app. The details include the app that the user wants access to be granted to on their behalf and the permissions that the user is requesting.

The user can create a consent request when an app or a permission requires admin authorization and only when the [admin consent workflow](adminconsentrequestpolicy.md) is enabled.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List appConsentRequests](../api/appconsentapprovalroute-list-appconsentrequests.md)|[appConsentRequest](../resources/appconsentrequest.md) collection|Retrieve a collection of [appConsentRequest](appconsentrequest.md) objects and their properties.|
|[Get appConsentRequest](../api/appconsentrequest-get.md)|[appConsentRequest](../resources/appconsentrequest.md)|Read the properties and relationships of an [appConsentRequest](../resources/appconsentrequest.md) object.|
|[filterByCurrentUser](../api/appconsentrequest-filterByCurrentUser.md)|[appConsentRequest](../resources/appconsentrequest.md)|Read the properties of [appConsentRequest](../resources/appconsentrequest.md) objects for which the current user is the reviewer and the status of the user consent request is `InProgress`. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|appDisplayName|String|The display name of the app for which consent is requested. Required. Supports `$filter` (`eq` only) and `$orderby`. |
|appId|String|The identifier of the application. Required. Supports `$filter` (`eq` only) and `$orderby`. |
|id|String|The identifier of the app consent request. Required.|
|pendingScopes|[appConsentRequestScope](../resources/appconsentrequestscope.md) collection|A list of pending scopes waiting for approval. Required.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|userConsentRequests|[userConsentRequest](../resources/userconsentrequest.md) collection|A list of pending user consent requests. Supports `$filter` (`eq`).|

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
  "appDisplayName": "String",
  "appId": "String",
  "id": "String (identifier)",
  "pendingScopes": [
    {
      "@odata.type": "microsoft.graph.appConsentRequestScope"
    }
  ]
}
```
