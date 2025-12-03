---
title: "userTeamwork: sendActivityNotification"
description: "Send an activity feed notification to a user."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 04/05/2024
---

# userTeamwork: sendActivityNotification
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Send an activity feed notification to a user. For more information, see [sending Teams activity notifications](/graph/teams-send-activityfeednotifications).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "userteamwork_sendactivitynotification" } -->
[!INCLUDE [permissions-table](../includes/permissions/userteamwork-sendactivitynotification-permissions.md)]

>**Note:** The `TeamsActivity.Send.User` permission uses [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /users/{userId | user-principal-name}/teamwork/sendActivityNotification
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|activityType|String|The activity type must be declared in the [Teams app manifest](/microsoftteams/platform/overview), except for `systemDefault` [Reserved activity type](/graph/teams-send-activityfeednotifications/#reserved-activity-types), which provides free-form text in the `Actor+Reason` line of the notification.|
|chainId|Int64|Optional. Used to override a previous notification. Use the same `chainId` in subsequent requests to override the previous notification.|
|iconId|String| Optional. The unique icon ID that allows apps to send customized icons per activity type. Icon IDs must be present in the Teams app manifest schema. If the icon ID is specified in the manifest but missing from the API request body, the icon falls back to the default icon for the app. |
|previewText|[itemBody](../resources/itembody.md)|The preview text for the notification. Microsoft Teams only shows the first 150 characters.|
|teamsAppId|String| Optional. The Teams app ID of the Teams app associated with the notification. Used to disambiguate installed apps when multiple apps with the same Microsoft Entra ID app ID are installed for the same recipient user.  Avoid sharing Microsoft Entra ID app IDs between Teams apps. |
|templateParameters|[keyValuePair](../resources/keyvaluepair.md) collection|The values for the template variables defined in the activity feed entry corresponding to `activityType` in the [Teams app manifest](/microsoftteams/platform/overview).|
|topic|[teamworkActivityTopic](../resources/teamworkactivitytopic.md)|The topic of the notification. Specifies the resource being talked about.|

The following resources are supported when setting the `source` value of the **topic** property to `entityUrl`:

- [teamsAppInstallation](../resources/teamsappinstallation.md)
- [teamsCatalogApp](../resources/teamscatalogapp.md)

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Example 1: Send notification to a user for a task created

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "userteamwork_sendactivitynotification"
}
-->
```http
POST https://graph.microsoft.com/beta/users/{userId}/teamwork/sendActivityNotification
Content-Type: application/json

{
    "topic": {
        "source": "entityUrl",
        "value": "https://graph.microsoft.com/beta/users/{userId}/teamwork/installedApps/{installationId}"
    },
    "activityType": "taskCreated",
    "previewText": {
        "content": "New Task Created"
    },
    "templateParameters": [
        {
            "name": "taskId",
            "value": "Task 12322"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/userteamwork-sendactivitynotification-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/userteamwork-sendactivitynotification-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/userteamwork-sendactivitynotification-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/userteamwork-sendactivitynotification-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/userteamwork-sendactivitynotification-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/userteamwork-sendactivitynotification-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/userteamwork-sendactivitynotification-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": false
}
-->
```http
HTTP/1.1 204 No Content
```

### Example 2: Notify a user about an event using a custom topic

If you want to link an aspect that Microsoft Graph doesn't represent, or you want to customize the name, you can set the source of the `topic` to `text` and pass in a custom value for it. `webUrl` is required when using `topic` source as `text`.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "team_sendactivitynotification_for_customer_topic"
}
-->
```http
POST https://graph.microsoft.com/beta/users/{userId}/teamwork/sendActivityNotification
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
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/team-sendactivitynotification-for-customer-topic-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/team-sendactivitynotification-for-customer-topic-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/team-sendactivitynotification-for-customer-topic-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/team-sendactivitynotification-for-customer-topic-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/team-sendactivitynotification-for-customer-topic-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/team-sendactivitynotification-for-customer-topic-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/team-sendactivitynotification-for-customer-topic-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": false
}
-->
```http
HTTP/1.1 204 No Content
```

### Example 3: Notify a user about an event using a custom icon

If you want to notify a user with a customized icon instead of the default app icon, you can set the optional **iconId** property in the request body.

>**Note:** The `activityType` in the manifest must contain the list of allowed icon IDs in order to use this parameter. The request validation fails if the app manifest is missing the customized list of icons. For more information, see [Public developer preview app manifest](/microsoftteams/platform/resources/schema/manifest-schema-dev-preview).

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "userteamwork_sendactivitynotification_3",
  "sampleKeys": ["2f39ffba-51ca-4d2d-a66f-a020a83ce208"]
}-->
```http
POST https://graph.microsoft.com/beta/users/2f39ffba-51ca-4d2d-a66f-a020a83ce208/teamwork/sendActivityNotification
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
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/userteamwork-sendactivitynotification-3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/userteamwork-sendactivitynotification-3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/userteamwork-sendactivitynotification-3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/userteamwork-sendactivitynotification-3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/userteamwork-sendactivitynotification-3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/userteamwork-sendactivitynotification-3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/userteamwork-sendactivitynotification-3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": false
}
-->
```http
HTTP/1.1 204 No Content
```

## Related content

- [Activity feed notification C# sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-activity-feed/csharp)
- [Activity feed notification Node.js sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-activity-feed/nodejs)
- [Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)
