---
title: "appConsentApprovalRoute resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# appConsentApprovalRoute resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List appConsentApprovalRoutes](../api/appconsentapprovalroute-list.md)|[appConsentApprovalRoute](../resources/appconsentapprovalroute.md) collection|Get a list of the [appConsentApprovalRoute](../resources/appconsentapprovalroute.md) objects and their properties.|
|[Create appConsentApprovalRoute](../api/appconsentapprovalroute-create.md)|[appConsentApprovalRoute](../resources/appconsentapprovalroute.md)|Create a new [appConsentApprovalRoute](../resources/appconsentapprovalroute.md) object.|
|[Get appConsentApprovalRoute](../api/appconsentapprovalroute-get.md)|[appConsentApprovalRoute](../resources/appconsentapprovalroute.md)|Read the properties and relationships of an [appConsentApprovalRoute](../resources/appconsentapprovalroute.md) object.|
|[Update appConsentApprovalRoute](../api/appconsentapprovalroute-update.md)|[appConsentApprovalRoute](../resources/appconsentapprovalroute.md)|Update the properties of an [appConsentApprovalRoute](../resources/appconsentapprovalroute.md) object.|
|[Delete appConsentApprovalRoute](../api/appconsentapprovalroute-delete.md)|None|Deletes an [appConsentApprovalRoute](../resources/appconsentapprovalroute.md) object.|
|[List appConsentRequests](../api/appconsentapprovalroute-list-appconsentrequests.md)|[appConsentRequest](../resources/appconsentrequest.md) collection|Get the appConsentRequest resources from the appConsentRequests navigation property.|
|[Create appConsentRequest](../api/appconsentapprovalroute-post-appconsentrequests.md)|[appConsentRequest](../resources/appconsentrequest.md)|Create a new appConsentRequest object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appConsentRequests|[appConsentRequest](../resources/appconsentrequest.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appConsentApprovalRoute",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appConsentApprovalRoute"
}
```

