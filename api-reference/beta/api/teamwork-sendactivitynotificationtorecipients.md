---
title: "teamwork: sendActivityNotificationToRecipients"
description:  Send activity feed notifications to multiple users in bulk.
author: eddie-lee-msft
ms.localizationpriority: medium
ms.subservice: teams
doc_type: apiPageType
ms.date: 04/05/2024
---

# teamwork: sendActivityNotificationToRecipients

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Send activity feed notifications to multiple users in bulk.

For more information, see [sending Teams activity notifications](/graph/teams-send-activityfeednotifications).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamwork_sendactivitynotificationtorecipients" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamwork-sendactivitynotificationtorecipients-permissions.md)]

>**Note:** The `TeamsActivity.Send.User` permission uses [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent). RSC permissions pertain to the individual recipients in the payload.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /teamwork/sendActivityNotificationToRecipients
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).   |
| Content-Type  | application/json. Required. |

> **Note**: The token provided must be at least 45 minutes from expiry. The API call will return a `412 Precondition Failed` response if the token expires within 45 minutes.

## Request body

In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

| Parameter          | Type                                                         | Description                                                  |
| :----------------- | :----------------------------------------------------------- | :----------------------------------------------------------- |
| activityType       | String                                                       | The activity type must be declared in the [Teams app manifest](/microsoftteams/platform/overview), except for `systemDefault` [Reserved activity type](/graph/teams-send-activityfeednotifications/#reserved-activity-types), which provides free-form text in the `Actor+Reason` line of the notification. |
| chainId            | Int64                                                        | Optional. The chain ID of the notification. Used to override a previous notification. Use the same `chainId` in subsequent requests to override the previous notification. |
| iconId             | String                                                       | Optional. The unique icon ID that allows apps to send customized icons per activity type. Icon IDs must be present in the Teams app manifest schema. If the icon ID is specified in the manifest but missing from the API request body, the icon falls back to the default icon for the app. |
| previewText        | [itemBody](../resources/itembody.md)                         | The preview text for the notification. Microsoft Teams only shows the first 150 characters. |
| recipients         | [teamworkNotificationRecipient](../resources/teamworknotificationrecipient.md) collection | The recipients of the notification. Only recipients of type [aadUserNotificationRecipient](../resources/aadusernotificationrecipient.md) are supported. There's an upper limit of 100 recipients in a single request. |
| teamsAppId         | String                                                       | Optional. The Teams app ID of the Teams app associated with the notification. Used to disambiguate installed apps when multiple apps with the same Microsoft Entra ID app ID are installed for the same recipient user. Avoid sharing Microsoft Entra ID app IDs between Teams apps. |
| templateParameters | [keyValuePair](../resources/keyvaluepair.md) collection      | The values for template variables defined in the activity feed entry corresponding to `activityType` in the [Teams app manifest](/microsoftteams/platform/overview). |
| topic              | [teamworkActivityTopic](../resources/teamworkactivitytopic.md) | The topic of the notification. Specifies the resource being talked about. |

The following resource is supported when setting the `source` value of the **topic** property to `entityUrl`:

- [teamsCatalogApp](../resources/teamscatalogapp.md)

## Response

If successful, this action returns a `202 Accepted` response code.

## Examples

### Example 1: Notify multiple users about pending finance approval requests

The following example shows how to send an activity feed notification to multiple users in bulk. This example notifies multiple stakeholders about pending finance approval requests.

#### Request



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "teamwork_sendactivitynotificationtorecipients_1"
}
-->

``` http
POST https://graph.microsoft.com/beta/teamwork/sendActivityNotificationToRecipients
Content-Type: application/json

{
    "topic": {
        "source": "entityUrl",
        "value": "https://graph.microsoft.com/beta/appCatalogs/teamsApps/{teamsAppId}"
    },
    "activityType": "pendingFinanceApprovalRequests",
    "previewText": {
        "content": "Internal spending team has a pending finance approval requests"
    },
    "recipients": [
    	{
        	"@odata.type": "microsoft.graph.aadUserNotificationRecipient",
        	"userId": "569363e2-4e49-4661-87f2-16f245c5d66a"
    	},
    	{
        	"@odata.type": "microsoft.graph.aadUserNotificationRecipient",
        	"userId": "ab88234e-0874-477c-9638-d144296ed04f"
    	},
    	{
        	"@odata.type": "microsoft.graph.aadUserNotificationRecipient",
        	"userId": "01c64f53-69aa-42c7-9b7f-9f75195d6bfc"
    	}
    ],
    "templateParameters": [
        {
            "name": "pendingRequestCount",
            "value": "5"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/teamwork-sendactivitynotificationtorecipients-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/teamwork-sendactivitynotificationtorecipients-1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/teamwork-sendactivitynotificationtorecipients-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/teamwork-sendactivitynotificationtorecipients-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/teamwork-sendactivitynotificationtorecipients-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/teamwork-sendactivitynotificationtorecipients-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/teamwork-sendactivitynotificationtorecipients-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/teamwork-sendactivitynotificationtorecipients-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": false
}
-->

``` http
HTTP/1.1 202 Accepted
```

### Example 2: Notify multiple users about an event using a custom topic

If you want to link an aspect that Microsoft Graph doesn't represent, or you want to customize the name, you can set the source of the `topic` to `text` and pass in a custom value for it. `webUrl` is required when using `topic` source as `text`.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "teamwork_sendactivitynotificationtorecipients_2"
}
-->

``` http
POST https://graph.microsoft.com/beta/teamwork/sendActivityNotificationToRecipients
Content-Type: application/json

{
    "topic": {
        "source": "text",
        "value": "Deployment Approvals Channel",
        "webUrl": "https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000"
    },
    "activityType": "deploymentApprovalRequired",
    "previewText": {
        "content": "New deployment requires your approval"
    },
    "templateParameters": [
        {
            "name": "deploymentId",
            "value": "6788662"
        }
    ],
    "recipients": [
    	{
        	"@odata.type": "microsoft.graph.aadUserNotificationRecipient",
        	"userId": "569363e2-4e49-4661-87f2-16f245c5d66a"
    	},
    	{
        	"@odata.type": "microsoft.graph.aadUserNotificationRecipient",
        	"userId": "ab88234e-0874-477c-9638-d144296ed04f"
    	},
    	{
        	"@odata.type": "microsoft.graph.aadUserNotificationRecipient",
        	"userId": "01c64f53-69aa-42c7-9b7f-9f75195d6bfc"
    	}
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/teamwork-sendactivitynotificationtorecipients-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/teamwork-sendactivitynotificationtorecipients-2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/teamwork-sendactivitynotificationtorecipients-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/teamwork-sendactivitynotificationtorecipients-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/teamwork-sendactivitynotificationtorecipients-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/teamwork-sendactivitynotificationtorecipients-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/teamwork-sendactivitynotificationtorecipients-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/teamwork-sendactivitynotificationtorecipients-2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": false
}
-->
``` http
HTTP/1.1 202 Accepted
```

### Example 3: Notify multiple users about an event using a custom icon

If you want to notify multiple users with a customized icon instead of the default app icon, you can set the optional **iconId** property in the request body.

>**Note:** The `activityType` in the manifest must contain the list of allowed icon IDs in order to use this parameter. The request validation fails if the app manifest is missing the customized list of icons. For more information, see [Public developer preview app manifest](/microsoftteams/platform/resources/schema/manifest-schema-dev-preview).

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "teamwork_sendactivitynotificationtorecipients_3"
}-->
```http
POST https://graph.microsoft.com/beta/teamwork/sendActivityNotificationToRecipients
Content-Type: application/json

{
  "topic": {
    "source": "text",
    "value": "Deployment Approvals Channel",
    "webUrl": "https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000"
  },
  "activityType": "announcementPosted",
  "previewText": {
    "content": "new announcemnet posted"
  },
  "iconId": "announcementCreated",
  "templateParameters": [
    {
      "name": "deploymentId",
      "value": "6788662"
    }
  ],
  "recipients": [
    {
      "@odata.type": "microsoft.graph.aadUserNotificationRecipient",
      "userId": "569363e2-4e49-4661-87f2-16f245c5d66a"
    },
    {
      "@odata.type": "microsoft.graph.aadUserNotificationRecipient",
      "userId": "ab88234e-0874-477c-9638-d144296ed04f"
    },
    {
      "@odata.type": "microsoft.graph.aadUserNotificationRecipient",
      "userId": "01c64f53-69aa-42c7-9b7f-9f75195d6bfc"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/teamwork-sendactivitynotificationtorecipients-3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/teamwork-sendactivitynotificationtorecipients-3-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/teamwork-sendactivitynotificationtorecipients-3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/teamwork-sendactivitynotificationtorecipients-3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/teamwork-sendactivitynotificationtorecipients-3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/teamwork-sendactivitynotificationtorecipients-3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/teamwork-sendactivitynotificationtorecipients-3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/teamwork-sendactivitynotificationtorecipients-3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": false
}
-->
``` http
HTTP/1.1 202 Accepted
```
