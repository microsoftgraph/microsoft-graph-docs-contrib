---
title: "Get trainingCampaignReportOverview"
description: "Get an overview of a training campaign."
author: "akgraph"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get trainingCampaignReportOverview
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get an overview of a training campaign.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "trainingcampaignreportoverview_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/trainingcampaignreportoverview-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/trainingCampaigns/{trainingCampaignId}/report/overview
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [trainingCampaignReportOverview](../resources/trainingcampaignreportoverview.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/attackSimulation/trainingCampaigns/f1b13829-3829-f1b1-2938-b1f12938b1a/report/overview
```

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.trainingCampaignReportOverview"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "trainingModuleCompletion": {
        "trainingsAssignedUserCount": 1,
        "assignedTrainingsInfos": [
            {
                "assignedUserCount": 1,
                "completedUserCount": 0,
                "displayName": "Identity Theft"
            },
            {
                "assignedUserCount": 1,
                "completedUserCount": 0,
                "displayName": "Introduction to Information Security"
            },
            {
                "assignedUserCount": 1,
                "completedUserCount": 0,
                "displayName": "Malware"
            }
        ]
    },
    "userCompletionStatus": {
        "notStartedUsersCount": 0,
        "completedUsersCount": 0,
        "inProgressUsersCount": 1,
        "notCompletedUsersCount": 0,
        "previouslyAssignedUsersCount": 0
    },
    "trainingNotificationDeliveryStatus": {
        "resolvedTargetsCount": 1,
        "successfulMessageDeliveryCount": 1,
        "failedMessageDeliveryCount": 0
    }
}
```

