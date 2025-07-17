---
title: "appConsentRequest resource type"
description: "Represents the request that a user creates when they request the tenant admin for consent to access an app or to grant permissions to an app."
author: "eringreenlee"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# appConsentRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the request that a user creates when they request the tenant admin for consent to access an app or to grant permissions to an app. The details include the app that the user wants access to be granted to on their behalf and the permissions that the user is requesting.

The user can create a consent request when an app or a permission requires admin authorization and only when the [admin consent workflow](adminconsentrequestpolicy.md) is enabled.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/appconsentapprovalroute-list-appconsentrequests.md)|[appConsentRequest](../resources/appconsentrequest.md) collection|Retrieve a collection of [appConsentRequest](appconsentrequest.md) objects and their properties.|
|[Get](../api/appconsentrequest-get.md)|[appConsentRequest](../resources/appconsentrequest.md)|Read the properties and relationships of an [appConsentRequest](../resources/appconsentrequest.md) object.|
|[Filter by current user](../api/appconsentrequest-filterByCurrentUser.md)|[appConsentRequest](../resources/appconsentrequest.md)|Read the properties of [appConsentRequest](../resources/appconsentrequest.md) objects for which the current user is the reviewer and the status of the user consent request is `InProgress`.|

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
|userConsentRequests|[userConsentRequest](../resources/userconsentrequest.md) collection|A list of pending user consent requests. Supports `$filter` (`eq`).|

## JSON representation
The following JSON representation shows the resource type.
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

