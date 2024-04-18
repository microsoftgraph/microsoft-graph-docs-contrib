---
title: "Create trainingCampaign"
description: "Create a new trainingCampaign object."
author: "akgraph"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Create trainingCampaign

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [trainingCampaign](../resources/trainingcampaign.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "attacksimulationroot_post_trainingcampaigns" } -->
[!INCLUDE [permissions-table](../includes/permissions/attacksimulationroot-post-trainingcampaigns-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/attackSimulation/trainingCampaigns
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [trainingCampaign](../resources/trainingcampaign.md) object.

You can specify the following properties when creating a **trainingCampaign**.

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[emailIdentity](../resources/emailidentity.md)|The identity of the user who created the training campaign. Optional.|
|createdDateTime|DateTimeOffset|The date and time when the training campaign was created. Optional.|
|description|String|The description of the training campaign. Optional.|
|displayName|String|The display name of the training campaign. Required.|
|endUserNotificationSetting|[endUserNotificationSetting](../resources/endusernotificationsetting.md)|Details about the end user notification setting. Required.|
|excludedAccountTarget|[accountTargetContent](../resources/accounttargetcontent.md)|The users who are excluded from the training campaign. Optional.|
|includedAccountTarget|[accountTargetContent](../resources/accounttargetcontent.md)|The users who are targeted in the training campaign. Required.|
|lastModifiedDateTime|DateTimeOffset|The identity of the user who most recently modified the training campaign. Optional.|
|trainingSetting|[trainingSetting](../resources/trainingsetting.md)|Details about the training settings for a training campaign. Required.|
|campaignSchedule|[campaignSchedule](../resources/campaignschedule.md)|Details about the schedule and current status for a training campaign. Required.|

## Response

If successful, this method returns a `202 Accepted` response code and a tracking header named `location` in the response.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_trainingcampaign_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/attackSimulation/trainingCampaigns
Content-Type: application/json

{
    "displayName": "Graph Training Campaign",
    "description": "Graph Training Campaign Description",
    "createdBy": {
        "email": "john@contoso.com"
    },
    "lastModifiedBy": {
        "email": "john@contoso.com"
    },
    "includedAccountTarget": {
        "type": "addressBook",
        "accountTargetEmails": [
            "john@contoso.com"
        ]
    },
    "endUserNotificationSetting": {
        "notificationPreference": "microsoft",
        "settingType": "trainingSelected",
        "trainingReminder": {
            "deliveryFrequency": "weekly",
            "endUserNotification@odata.bind": "https://graph.microsoft.com/beta/security/attackSimulation/endUserNotifications('fe521249-9901-4584-a987-026a9980c58e')",
            "defaultLanguage": "en"
        },
        "trainingAssignment": {
            "endUserNotification@odata.bind": "https://graph.microsoft.com/beta/security/attackSimulation/endUserNotifications('36fb4dc1-7c37-4b96-9096-12e6d6014fae')",
            "defaultLanguage": "en"
        }
    },
    "trainingSetting": {
        "settingType": "microsoftCustom",
        "trainingAssignmentMappings": [
            {
                "assignedTo": [
                    "allUsers"
                ],
                "training@odata.bind": "https://graph.microsoft.com/beta/security/attackSimulation/trainings('40454905-dc26-4f36-b854-3042a5362cb3')"
            },
            {
                "assignedTo": [
                    "allUsers"
                ],
                "training@odata.bind": "https://graph.microsoft.com/beta/security/attackSimulation/trainings('ea70ae06-3859-4818-be9d-270ee81d80a4')"
            },
            {
                "assignedTo": [
                    "allUsers"
                ],
                "training@odata.bind": "https://graph.microsoft.com/beta/security/attackSimulation/trainings('d733d88c-1b5a-48e3-a588-9910e41ac21d')"
            }
        ]
    },
    "campaignSchedule": {
        "launchDateTime": "2024-02-15T07:59:44Z",
        "completionDateTime": "2024-02-18T07:59:44Z",
        "status": "Scheduled"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-trainingcampaign-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-trainingcampaign-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-trainingcampaign-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-trainingcampaign-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-trainingcampaign-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-trainingcampaign-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-trainingcampaign-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 202 Accepted 
```
