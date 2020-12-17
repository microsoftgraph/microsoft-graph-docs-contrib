---
title: "user resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# user resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List users](../api/user-list.md)|[user](../resources/user.md) collection|Get a list of the [user](../resources/user.md) objects and their properties.|
|[Create user](../api/user-create.md)|[user](../resources/user.md)|Create a new [user](../resources/user.md) object.|
|[Get user](../api/user-get.md)|[user](../resources/user.md)|Read the properties and relationships of a [user](../resources/user.md) object.|
|[Update user](../api/user-update.md)|[user](../resources/user.md)|Update the properties of a [user](../resources/user.md) object.|
|[Delete user](../api/user-delete.md)|None|Deletes a [user](../resources/user.md) object.|
|[List appConsentRequestsForApproval](../api/user-list-appconsentrequestsforapproval.md)|[appConsentRequest](../resources/appconsentrequest.md) collection|Get the appConsentRequest resources from the appConsentRequestsForApproval navigation property.|
|[Create appConsentRequest](../api/user-post-appconsentrequestsforapproval.md)|[appConsentRequest](../resources/appconsentrequest.md)|Create a new appConsentRequest object.|
|[List approvals](../api/user-list-approvals.md)|[approval](../resources/approval.md) collection|Get the approval resources from the approvals navigation property.|
|[Create approval](../api/user-post-approvals.md)|[approval](../resources/approval.md)|Create a new approval object.|
|[List pendingAccessReviewInstances](../api/user-list-pendingaccessreviewinstances.md)|[accessReviewInstance](../resources/accessreviewinstance.md) collection|Get the accessReviewInstance resources from the pendingAccessReviewInstances navigation property.|
|[Create accessReviewInstance](../api/user-post-pendingaccessreviewinstances.md)|[accessReviewInstance](../resources/accessreviewinstance.md)|Create a new accessReviewInstance object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appConsentRequestsForApproval|[appConsentRequest](../resources/appconsentrequest.md) collection|**TODO: Add Description**|
|approvals|[approval](../resources/approval.md) collection|**TODO: Add Description**|
|pendingAccessReviewInstances|[accessReviewInstance](../resources/accessreviewinstance.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.user",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.user"
}
```

