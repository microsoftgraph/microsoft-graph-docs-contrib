---
title: "approvalSettings resource type"
description: "Used for the requestApprovalSettings property of an access package assignment policy. Provides additional settings to select who must approve each request."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# approvalSettings resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for the `requestApprovalSettings` property of an [access package assignment policy](accesspackageassignmentpolicy.md). Provides additional settings to select who must approve each request. 

## Properties

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| isApprovalRequired | Boolean | If false, then approval is not required for requests in this policy. |
| isApprovalRequiredForExtension | Boolean| If false, then approval is not required for a user who already has an assignment to extend their assignment. |
| isRequestorJustificationRequired | Boolean | Indicates whether the requestor is required to supply a justification in their request. |
| approvalMode| String | One of `NoApproval`, `SingleStage` or `Serial`. The `NoApproval` is used when `isApprovalRequired` is false. |
| approvalStages | [approvalStage](approvalstage.md) collection| If approval is required, the one or two elements of this collection define each of the stages of approval. An empty array if no approval is required.  |

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
