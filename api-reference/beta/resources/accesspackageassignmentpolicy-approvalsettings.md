---
title: "accessPackageAssignmentPolicy approvalSettings complex type"
description: "An access package assignment policy specifies the policy by which subjects may request or be assigned an access package via an access package assignment."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# approvalSettings complex type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The `approvalSettings` type, used for the `requestApprovalSettings` property of an [access package assignment policy](accesspackageassignmentpolicy.md), provides additional settings to select who must approve each request. 

## Properties

This type has the following properties:

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| isApprovalRequired | Boolean | If false, then approval is not required for requests in this policy. |
| isApprovalRequiredForExtension | Boolean| If false, then approval is not required for a user who already has an assignment to extend their assignment. |
| isRequestorJustificationRequired | Boolean | Whether the requestor is required to supply a justification in their request. |
| approvalMode| String | One of `NoApproval`, `SingleStage` or `Serial`. The `NoApproval` is used when `isApprovalRequired` is false. |
| approvalStages | collection of 0, 1 or 2 `approvalStage`| If approval is required, these define each of the stages of approval. |

### The approvalStage type

The `approvalStage` type, used for the `approvalStages` property of approval settings, specifies the primary, fallback and escalation approvers of each state. This type has the following properties:

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| approvalStageTimeOutInDays |Int32 | The number of days that a request can be pending a response before it is automatically denied. |
| isApproverJustificationRequired |Boolean | Is the approver required to provide a justification for approving a request. |
| isEscalationEnabled |Boolean | If true, then one or more escalation approvers are configured in this approval stage. |
| escalationTimeInMinutes |Int32 | If escalation is required, the time a request can be pending a response from a primary approver. |
| primaryApprovers |collection of `singleUser`, `groupMembers`, `manager`, `internalSponsor` and `externalSponsor` | The users who will be asked to approve requests. |
| escalationApprovers |collection of `singleUser`, `groupMembers`, `manager`, `internalSponsor` and `externalSponsor` | If escalation is enabled and the primary approvers do not respond before the escalation time, the escalationApprovers are the users who will be asked to approve requests. |

### The manager type

The groupMembers type is used in an approval stage to indicate that a requesting user's manager is to be the approver.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `@odata.type` | String | The value "`#microsoft.graph.manager`". |
| isBackup | Boolean | For a manager in an approval stage, this property indicates that the manager is a backup fallback approver. |

### The internalSponsors type

The internalSponsors type is used in an approval stage to indicate that a requesting user's connected organization internal sponsor is to be the approver.  This approver is only applicable to requests from users who are part of a connected organization.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `@odata.type` | String | The value "`#microsoft.graph.internalSponsors`". |
| isBackup | Boolean | This property indicates that the sponsor is a backup fallback approver. |

### The externalSponsors type

The externalSponsors type is used in an approval stage to indicate that a requesting user's connected organization external sponsor is to be the approver. This approver is only applicable to requests from users who are part of a connected organization.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `@odata.type` | String | The value "`#microsoft.graph.internalSponsors`". |
| isBackup | Boolean | This property indicates that the sponsor is a backup fallback approver. |

## JSON representation

The following is a JSON representation of the request approval settings property of a policy which has two stages of approval.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.approvalSettings",
  "baseType": ""
}-->

```json
{
    "isApprovalRequired": true,
    "isApprovalRequiredForExtension": false,
    "isRequestorJustificationRequired": true,
    "approvalMode": "Serial",
    "approvalStages": [
        {
            "approvalStageTimeOutInDays": 14,
            "isApproverJustificationRequired": true,
            "isEscalationEnabled": true,
            "escalationTimeInMinutes": 11520,
            "primaryApprovers": [
                {
                    "@odata.type": "#microsoft.graph.groupMembers",
                    "isBackup": true,
                    "id": "string (identifier)",
                    "description": "Fallback group of users in case the connected org of a requestor does not have an external sponsor"
                },
                {
                    "@odata.type": "#microsoft.graph.externalSponsors",
                    "isBackup": false
                }
            ],
            "escalationApprovers": [
                {
                    "@odata.type": "#microsoft.graph.singleUser",
                    "isBackup": true,
                    "id": "string (identifier)",
                    "description": "Escalation approver in case the external sponsor does not respond"
                }
            ]
        },
        {
            "approvalStageTimeOutInDays": 14,
            "isApproverJustificationRequired": true,
            "isEscalationEnabled": true,
            "escalationTimeInMinutes": 11520,
            "primaryApprovers": [
                {
                    "@odata.type": "#microsoft.graph.groupMembers",
                    "isBackup": true,
                    "id": "string (identifier)",
                    "description": "Fallback group of users in case the connected org of a requestor does not have an internal sponsor"
                },
                {
                    "@odata.type": "#microsoft.graph.internalSponsors",
                    "isBackup": false
                }
            ],
            "escalationApprovers": [
                {
                    "@odata.type": "#microsoft.graph.singleUser",
                    "isBackup": true,
                    "id": "string (identifier)",
                    "description": "Escalation approver in case the internal sponsor does not respond"
                }
            ]
        }
    ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "approvalSettings complex type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->