---
title: "userSet resource type"
description: "The abstract base type for types used in the request, approval, and assignment review settings of an access package assignment policy."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 10/04/2024
---

# userSet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used in the request, approval, and assignment review settings of an [access package assignment policy](../resources/accesspackageassignmentpolicy.md). It's an abstract base type inherited by the following resource types:
+ [singleUser](../resources/singleuser.md)
+ [groupMembers](../resources/groupmembers.md)
+ [connectedOrganizationMembers](../resources/connectedorganizationmembers.md)
+ [requestorManager](../resources/requestormanager.md)
+ [internalSponsors](../resources/internalsponsors.md)
+ [externalSponsors](../resources/externalsponsors.md)
+ [targetUserSponsors](../resources/targetusersponsors.md)
+ [targetAgentIdentitySponsorsOrOwners](../resources/targetagentidentitysponsorsorowners.md)

In entitlement management, the derived types of this object are configured in the following properties and relationships:
- **escalationApprovers** property of [accessPackageDynamicApprovalStage](../resources/accesspackagedynamicapprovalstage.md)
- **primaryApprovers** property of [accessPackageDynamicApprovalStage](../resources/accesspackagedynamicapprovalstage.md)
- **escalationApprovers** property of [approvalStage](../resources/approvalstage.md)
- **primaryApprovers** property of [approvalStage](../resources/approvalstage.md)
- **reviewers** property of [assignmentReviewSettings](../resources/assignmentreviewsettings.md)
- **allowedRequestors** property of [requestorSettings](../resources/requestorsettings.md)

## Properties

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| isBackup | Boolean | For a user in an approval stage, this property indicates whether the user is a backup fallback approver. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type. A [userSet](userset.md) is an abstract base class and so wouldn't be sent or received. Instead, one of the following `@odata.type` values representing the inherited types would be used:
+ `#microsoft.graph.singleUser`
+ `#microsoft.graph.groupMembers`
+ `#microsoft.graph.connectedOrganizationMembers`
+ `#microsoft.graph.requestorManager`
+ `#microsoft.graph.internalSponsors`
+ `#microsoft.graph.externalSponsors`

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.userSet"
}-->

```json
{
  "@odata.type": "#microsoft.graph.userSet",
  "isBackup": false
}
```



<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "userSet complex type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


