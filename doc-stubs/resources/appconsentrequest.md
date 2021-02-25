---
title: "appConsentRequest resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# appConsentRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List appConsentRequests](../api/appconsentrequest-list.md)|[appConsentRequest](../resources/appconsentrequest.md) collection|Get a list of the [appConsentRequest](../resources/appconsentrequest.md) objects and their properties.|
|[Create appConsentRequest](../api/appconsentrequest-create.md)|[appConsentRequest](../resources/appconsentrequest.md)|Create a new [appConsentRequest](../resources/appconsentrequest.md) object.|
|[Get appConsentRequest](../api/appconsentrequest-get.md)|[appConsentRequest](../resources/appconsentrequest.md)|Read the properties and relationships of an [appConsentRequest](../resources/appconsentrequest.md) object.|
|[Update appConsentRequest](../api/appconsentrequest-update.md)|[appConsentRequest](../resources/appconsentrequest.md)|Update the properties of an [appConsentRequest](../resources/appconsentrequest.md) object.|
|[Delete appConsentRequest](../api/appconsentrequest-delete.md)|None|Deletes an [appConsentRequest](../resources/appconsentrequest.md) object.|
|[List userConsentRequests](../api/appconsentrequest-list-userconsentrequests.md)|[userConsentRequest](../resources/userconsentrequest.md) collection|Get the userConsentRequest resources from the userConsentRequests navigation property.|
|[Create userConsentRequest](../api/appconsentrequest-post-userconsentrequests.md)|[userConsentRequest](../resources/userconsentrequest.md)|Create a new userConsentRequest object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appDisplayName|String|**TODO: Add Description**|
|appId|String|**TODO: Add Description**|
|consentType|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|pendingScopes|[appConsentRequestScope](../resources/appconsentrequestscope.md) collection|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|userConsentRequests|[userConsentRequest](../resources/userconsentrequest.md) collection|**TODO: Add Description**|

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

