---
title: "Send activity feed notifications to users in Microsoft Teams"
description: "Use the Microsoft Teams activity feed notification APIs in Microsoft Graph to help keep users up to date with changes in the tools and workflows they use."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
---

# Send activity feed notifications to users in Microsoft Teams

The Microsoft Teams activity feed notifies users of changes to enable them to triage items that require attention. Activity feed notifications in Teams including the following features:

* Native integration with Teams that brings the user seamlessly into the Tab app and additional user engagement from **Activity** pane to your app.
* Operating system notifications in Teams desktop and mobile clients that include a pop-up and sound.
* Customizable notification content that enables you to show more or less preview content to the user.
* Ability to deep link your tab, personal app, bot message, or Adaptive Card to a notification to increase user engagement with your app.
* Ability to send activity feed notification to multiple recipients, such as batch notifications to a group of users.
* App manifest (formerly Teams app manifest) localization to support templated text in activity feed notifications.

You can use the activity feed notification APIs in Microsoft Graph to extend this functionality to your apps. In this way, you can provide richer experiences and engage users by helping them stay up to date with changes in the tools and workflows they use.

The activity feed notification APIs in Microsoft Graph enable the following use cases:

* **News** - Keep users updated with the latest information, such as new assignments or new posts.
* **Collaboration** - Show users a preview in the notification banner when someone shares a file or @ mentions them in a comment.
* **Reminders** - Send notifications to users about events or tasks.
* **Alerts** - Send notifications that require urgent or immediate attention, such as a past due date or high priority work item.

You can use activity feed notifications to do the following:

* Notify individuals about customized content that requires their attention.
* Show rich content in a Tab app or URL​.
* Support complex user interactions​.
* Send delegated notifications from the user who initiated a notification​.
* Teams handles the localization for notifications.

## Components of activity feed notifications

Activity feed notifications in Teams are comprised of multiple pieces of information displayed together, as shown in the following image.

![Image showing the components of an activity feed notification, including actor, reason, time stamp, preview, and topic.](images/teams-activityfeednotifications/notificationtemplate.png)

The components include:

|Components|Description|
|----------|-----------|
|**Avatar**|Shows who initiated the activity.|
|**Activity type or app icon**|The type of activity. For app notifications, the line icon is replaced with an app icon. |
|**Title: Actor + reason**|*Actor* is the name of the user or app that initiated the activity. *Reason* describes the activity.|
|**Timestamp**|Shows when the activity happened.|
|**Text preview**|Shows a truncated line from the start of the notification.|
|**Topic**|Resource being talked about or text value of topic from Request Body.|

The following image shows an example of an activity feed notification in Teams about a user shared a post in app:

![An image of a Yammer activity feed notification](images/teams-activityfeednotifications/examplefeednotification.png)

### Types of activity feed notification cards

The following tabs show the types of activity feed notification cards that you can display. For app-generated notifications, the user logo is replaced with the app logo.

# [Desktop](#tab/desktop)

**Teams custom**

:::image type="content" source="images/teams-custom.png" alt-text="Screenshot that shows activity feed notifications in a desktop Teams custom." border="false":::

**Windows**

:::image type="content" source="images/windows.png" alt-text="Screenshot that shows activity feed notifications in a Windows desktop Teams." border="false":::

**Mac**

:::image type="content" source="images/mac.png" alt-text="Screenshot that shows activity feed notifications in a Mac desktop Teams." border="false":::

# [Mobile](#tab/mobile)

**Android**

:::image type="content" source="images/android.png" alt-text="Screenshot shows the activity feed notifications in a Andriod." border="false":::

**iOS**

:::image type="content" source="images/ios-notification.png" alt-text="Screenshot shows the activity feed notifications in a iOS." border="false":::

---

## Requirements for using the activity feed notification APIs

Activity feed APIs work with a [Teams app](/microsoftteams/platform/overview). The following are the requirements for sending activity feed notifications:

- The Teams app manifest must have the Microsoft Entra app ID added to the `webApplicationInfo` section. For more information, see [manifest schema](/microsoftteams/platform/resources/schema/manifest-schema).
- Activity notifications can be sent with or without activity types declared in the app manifest.
  - By default, you can use the activity notification APIs without declaring the `activities` section in the manifest. The `systemDefault` activity type is reserved, allowing you to provide free-form text in the `Actor+Reason` line of the activity feed notification.  For more information, see [Send customizable activity feed notifications](#example-8-send-a-notification-to-a-user-using-the-systemdefault-activity-type).
    > [!NOTE]
    > The `systemDefault` activity type is available only in public preview.
  - If you want to send a templated notification in the traditional mode, activity types must be declared in the [Activities](#activities-update) section. For more information, see [Manifest schema](/microsoftteams/platform/resources/schema/manifest-schema).
- The Teams app must be installed for the recipient, either personally or in a [team](/graph/api/resources/team) or [chat](/graph/api/resources/chat) they're part of. For more information, see [Teams app installation](/graph/api/resources/teamsappinstallation).

### Permissions

You can use delegated or application permissions to send activity notifications. When you use application permissions, we recommend that you use [resource-specific consent (RSC)](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) because the `TeamsActivity.Send.User` permission allows the user to consent to send activity notifications. You must declare RSC permissions in your Teams app [manifest schema](/microsoftteams/platform/resources/schema/manifest-schema).

### Teams app manifest updates

This section describes the changes that you need to make to the Teams app manifest to implement activity feed notifications. You need to use the [Teams app manifest](/microsoftteams/platform/resources/schema/manifest-schema) version `1.7` or greater.

```json
"$schema": "https://developer.microsoft.com/json-schemas/teams/v1.7/MicrosoftTeams.schema.json",
"manifestVersion": "1.7",
```

#### webApplicationInfo update

You must update Microsoft Entra `id` and `resource` information in your app manifest `webApplicationInfo` property.

```json
"webApplicationInfo":
{
    "id": "a3111f15-658e-457c-9689-fd20fe907330",
    "resource": "https://contosoapp.com"
}
```

|Parameter|Type|Description|
|:---|:---|:---|
|id|string|Microsoft Entra (client ID).|
|resource|string|Resource associated with the Azure AD app. It is also known as a reply or redirect URI in the Microsoft Entra admin center app registration overview.|

> [!NOTE]
> You might get an error if multiple Teams apps in the same scope (team, chat, or user) use the same Microsoft Entra app. Make sure that you're using unique Microsoft Entra apps.

#### Activities update

You must define the `activities` property in your app manifest to post a user activity feed.

```json
"activities":
{
  "activityTypes": [
    {
      "type": "taskCreated",
      "description": "Task Created Activity",
      "templateText": "{actor} created task {taskId} for you"
    },
    {
      "type": "approvalRequired",
      "description": "Deployment requires your approval",
      "templateText": "{actor} created a new deployment {deploymentId}"
    }
  ]
}
```

|Parameter|Type|Description|
|:---|:---|:---|
|type|string|The type needs to be unique in a specific manifest.|
|description|string|Human-readable short description. The description is visible on the Microsoft Teams client.|
|templateText|string|Template text for the activity notification. You can declare your parameters by encapsulating parameters in `{}`.|

> [!NOTE]
> * `actor` is a special parameter that always takes the caller's name. In delegated calls, `actor` is the user's name. In application-only calls, it takes the name of the Teams app.
>
> * The reserved `systemDefault` activity type should not be provided in the `activities` section of the manifest. The reserved activity type can provide free-form text in the `Actor+Reason` line of the activity feed notification. For more information, see [Send customizable activity feed notifications](#example-8-send-a-notification-to-a-user-using-the-systemdefault-activity-type).

#### Authorization update

```json
"authorization": 
{ 
  "permissions": { 
    "resourceSpecific": [ 
      {
        "type": "Application", 
         "name": "TeamsActivity.Send.User" 
      }, 
      { 
        "type": "Application",
        "name": "TeamsActivity.Send.Group"
      }, 
      { 
        "type": "Application", 
        "name": "TeamsActivity.Send.Chat" 
      } 
    ] 
  }
} 

```

|Parameter|Type|Description|
|:---|:---|:---|
|type|string|The resource-specific consent (RSC) permission type.|
|name|string|The name of the RSC permission. For more information, see [Supported RSC permissions](/microsoftteams/platform/graph-api/rsc/resource-specific-consent#supported-rsc-permissions) |

### Install the Teams app

Teams apps can be installed in a team, a chat, or for a user personally, and can be distributed in multiple ways. For details, see [Teams app distribution methods](/microsoftteams/platform/concepts/deploy-and-publish/overview). Typically, [sideloading](/microsoftteams/platform/concepts/deploy-and-publish/apps-upload) is preferred for development purposes. After development, you can choose the right distribution method based on whether you want to distribute to one tenant or all tenants.

You can also use [Teams app installation](/graph/api/resources/teamsappinstallation) APIs to manage Teams app installations.

## Send activity feed notifications to users

> [!NOTE]
> To show activity feed notifications on iOS and Android clients, the app must be included in the allow list. Only third-party apps are supported.

Because a Teams app can be installed for a user, in a team, or in a chat, the notifications can be sent in three contexts. For details about how to send notifications in each context, see the following topics:

- [Send notification to user in a team](/graph/api/team-sendactivitynotification)
- [Send notification to user](/graph/api/userteamwork-sendactivitynotification)
- [Send notification to user in a chat](/graph/api/chat-sendactivitynotification)

In addition, notifications can be sent in bulk to up to 100 users at a time. For details, see the following topic:

- [Send notifications to multiple users in bulk](/graph/api/teamwork-sendactivitynotificationtorecipients)

For details about what topics are supported for each scenario, see the specific APIs. Custom text-based topics are supported for all scenarios.

> [!NOTE]
> The activity icon is based on the context in which the request is made. If the request is made with delegated permissions, the user's photo appears as the avatar, while the Teams app icon appears as the activity icon. In an application-only context, the Teams app icon is used as the avatar, and the activity icon is omitted.

### Example 1: Notify a user about a task created in a chat

This example shows how you can send an activity feed notification for a new task created in a chat. In this case, the Teams app must be installed in a chat with Id `chatId` and user `569363e2-4e49-4661-87f2-16f245c5d66a` must also be part of the chat.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "chat_sendactivitynotification_for_task_created_in_chat"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/chats/{chatId}/sendActivityNotification
Content-Type: application/json

{
    "topic": {
        "source": "entityUrl",
        "value": "https://graph.microsoft.com/v1.0/chats/{chatId}"
    },
    "activityType": "taskCreated",
    "previewText": {
        "content": "New Task Created"
    },
    "recipient": {
        "@odata.type": "microsoft.graph.aadUserNotificationRecipient",
        "userId": "569363e2-4e49-4661-87f2-16f245c5d66a"
    },
    "templateParameters": [
        {
            "name": "taskId",
            "value": "12322"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/chat-sendactivitynotification-for-task-created-in-chat-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/chat-sendactivitynotification-for-task-created-in-chat-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/chat-sendactivitynotification-for-task-created-in-chat-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/chat-sendactivitynotification-for-task-created-in-chat-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/chat-sendactivitynotification-for-task-created-in-chat-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/chat-sendactivitynotification-for-task-created-in-chat-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/chat-sendactivitynotification-for-task-created-in-chat-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/chat-sendactivitynotification-for-task-created-in-chat-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": false
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2: Notify a user about a task created in a team

This example shows how you can send an activity feed notification for a team. This example notifies the team owner about a new task created that requires their attention.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "team_sendactivitynotification_task_created_in_teams"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/teams/{teamId}/sendActivityNotification
Content-Type: application/json

{
    "topic": {
        "source": "entityUrl",
        "value": "https://graph.microsoft.com/v1.0/teams/{teamId}"
    },
    "activityType": "taskCreated",
    "previewText": {
        "content": "New Task Created"
    },
    "recipient": {
        "@odata.type": "microsoft.graph.aadUserNotificationRecipient",
        "userId": "569363e2-4e49-4661-87f2-16f245c5d66a"
    },
    "templateParameters": [
        {
            "name": "taskId",
            "value": "12322"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/team-sendactivitynotification-task-created-in-teams-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/team-sendactivitynotification-task-created-in-teams-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/team-sendactivitynotification-task-created-in-teams-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/team-sendactivitynotification-task-created-in-teams-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/team-sendactivitynotification-task-created-in-teams-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/team-sendactivitynotification-task-created-in-teams-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/team-sendactivitynotification-task-created-in-teams-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/team-sendactivitynotification-task-created-in-teams-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": false
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 3: Notify a user about an event using a custom topic

As the previous examples show, you can link to different team or chat aspects. However, if you want to link to an aspect that is not part of the team or Microsoft Graph doesn't represent it, or if you want to customize the name, you can set the source of the `topic` to `text` and pass in a custom value for it. Additionally, `webUrl` is required when you use `topic` source as `text`.

The Yammer notification example shown earlier uses a custom topic because Microsoft Graph does not support Yammer's resources.

> [!NOTE]
> `webUrl` must start with the Microsoft Teams domain (teams.microsoft.com, for example).

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "team_sendactivitynotification_customer_task"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/teams/{teamId}/sendActivityNotification
Content-Type: application/json

{
    "topic": {
        "source": "text",
        "value": "Deployment Approvals Channel",
        "webUrl": "https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000"
    },
    "activityType": "approvalRequired",
    "previewText": {
        "content": "New deployment requires your approval"
    },
    "recipient": {
        "@odata.type": "microsoft.graph.aadUserNotificationRecipient",
        "userId": "569363e2-4e49-4661-87f2-16f245c5d66a"
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
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/team-sendactivitynotification-customer-task-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/team-sendactivitynotification-customer-task-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/team-sendactivitynotification-customer-task-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/team-sendactivitynotification-customer-task-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/team-sendactivitynotification-customer-task-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/team-sendactivitynotification-customer-task-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/team-sendactivitynotification-customer-task-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/team-sendactivitynotification-customer-task-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": false
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 4: Notify the team members about an event

This example shows how you can send an activity feed notification to all team members. This example notifies the team members about a new event. 

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "team_sendactivitynotification_about_event"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/teams/7155e3c8-175e-4311-97ef-572edc3aa3db/sendActivityNotification
Content-Type: application/json

{
    "topic": {
        "source": "text",
        "value": "Weekly Virtual Social",
        "webUrl": "https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000"
    },
    "previewText": {
        "content": "It will be fun!"
    },
    "activityType": "eventCreated",
    "recipient": {
        "@odata.type": "microsoft.graph.teamMembersNotificationRecipient",
        "teamId": "7155e3c8-175e-4311-97ef-572edc3aa3db"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/team-sendactivitynotification-about-event-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/team-sendactivitynotification-about-event-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/team-sendactivitynotification-about-event-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/team-sendactivitynotification-about-event-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/team-sendactivitynotification-about-event-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/team-sendactivitynotification-about-event-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/team-sendactivitynotification-about-event-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/team-sendactivitynotification-about-event-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": false
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 5: Notify the channel members about an event

This example shows how you can send an activity feed notification to all channel members. This example notifies the channel members about a new event. 

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "team_sendactivitynotification_channelmember_about_event"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/teams/7155e3c8-175e-4311-97ef-572edc3aa3db/sendActivityNotification
Content-Type: application/json

{
    "topic": {
        "source": "text",
        "value": "Weekly Virtual Social",
        "webUrl": "https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000"
    },
    "previewText": {
        "content": "It will be fun!"
    },
    "activityType": "eventCreated",
    "recipient": {
        "@odata.type": "microsoft.graph.channelMembersNotificationRecipient",
        "teamId": "7155e3c8-175e-4311-97ef-572edc3aa3db",
        "channelId": "19:0ea5de04de4743bcb4cd20cb99235d99@thread.tacv2"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/team-sendactivitynotification-channelmember-about-event-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/team-sendactivitynotification-channelmember-about-event-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/team-sendactivitynotification-channelmember-about-event-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/team-sendactivitynotification-channelmember-about-event-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/team-sendactivitynotification-channelmember-about-event-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/team-sendactivitynotification-channelmember-about-event-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/team-sendactivitynotification-channelmember-about-event-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/team-sendactivitynotification-channelmember-about-event-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": false
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 6: Notify the chat members about an event

This example shows how you can send an activity feed notification to all chat members. This example notifies the chat members about a new event. 

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "chat_sendactivitynotification_chatmember_about_event"
}
-->

``` http
POST https://graph.microsoft.com/v1.0/chats/19:d65713bc498c4a428c71ef9353e6ce20@thread.v2/sendActivityNotification
Content-Type: application/json

{
    "topic": {
        "source": "text",
        "value": "Weekly Virtual Social",
        "webUrl": "https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000"
    },
    "previewText": {
        "content": "It will be fun!"
    },
    "activityType": "eventCreated",
    "recipient": {
        "@odata.type": "microsoft.graph.chatMembersNotificationRecipient",
        "chatId": "19:d65713bc498c4a428c71ef9353e6ce20@thread.v2"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/chat-sendactivitynotification-chatmember-about-event-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/chat-sendactivitynotification-chatmember-about-event-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/chat-sendactivitynotification-chatmember-about-event-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/chat-sendactivitynotification-chatmember-about-event-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/chat-sendactivitynotification-chatmember-about-event-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/chat-sendactivitynotification-chatmember-about-event-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/chat-sendactivitynotification-chatmember-about-event-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/chat-sendactivitynotification-chatmember-about-event-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": false
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 7: Notify multiple users about pending finance approval requests

The following example shows how to send an activity feed notification to multiple users in bulk. This example notifies multiple stakeholders about pending finance approval requests.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "teamwork_sendactivitynotificationtorecipients"
}
-->

``` http
POST https://graph.microsoft.com/v1.0/teamwork/sendActivityNotificationToRecipients
Content-Type: application/json

{
    "topic": {
        "source": "entityUrl",
        "value": "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/{teamsAppId}"
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
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/teamwork-sendactivitynotificationtorecipients-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/teamwork-sendactivitynotificationtorecipients-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/teamwork-sendactivitynotificationtorecipients-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/teamwork-sendactivitynotificationtorecipients-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/teamwork-sendactivitynotificationtorecipients-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/teamwork-sendactivitynotificationtorecipients-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/teamwork-sendactivitynotificationtorecipients-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/teamwork-sendactivitynotificationtorecipients-python-snippets.md)]
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

### Example 8: Send a notification to a user using the systemDefault activity type
This example shows how you can send an activity notification for a team without activity types defined in the manifest. You have the flexibility to provide free-form text here. For more information, see [Reserved activity types](#reserved-activity-types).

> [!NOTE]
> The `systemDefault` activity type is available only in public preview.

This example notifies the team owner to take a short break. Modify the `value` in `templateParameters` to customize the notification for various scenarios.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "team_sendactivitynotification_take_a_break"
}
-->

``` http
POST https://graph.microsoft.com/v1.0/teams/{teamId}/sendActivityNotification
Content-Type: application/json

{
    "topic": {
        "source": "entityUrl",
        "value": "https://graph.microsoft.com/v1.0/teams/{teamId}"
    },
    "activityType": "systemDefault",
    "previewText": {
        "content": "Take a break"
    },
    "recipient": {
        "@odata.type": "microsoft.graph.aadUserNotificationRecipient",
        "userId": "569363e2-4e49-4661-87f2-16f245c5d66a"
    },
    "templateParameters": [
        {
            "name": "systemDefaultText",
            "value": "You need to take a short break"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/team-sendactivitynotification-take-a-break-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/team-sendactivitynotification-take-a-break-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/team-sendactivitynotification-take-a-break-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/team-sendactivitynotification-take-a-break-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/team-sendactivitynotification-take-a-break-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/team-sendactivitynotification-take-a-break-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/team-sendactivitynotification-take-a-break-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/team-sendactivitynotification-take-a-break-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": false
}
-->
``` http
HTTP/1.1 204 No Content
```

## Reserved activity types

- The `systemDefault` activity type is reserved and can't be used in the manifest while declaring [Activities](#activities-update).
- You can use the `systemDefault` activity type to:
  - Easily test new scenarios and/or quickly try the activity feed notification APIs without defining activity types in your app's manifest.
  - For Store apps, it saves time and streamlines the process because you don't need to constantly adjust activity types in your app's manifest. The `systemDefault` activity type is ready to use from the get-go.
- Keep in mind that with the `systemDefault` activity type, you can't:
  - Utilize the built-in localization features provided by manifests.
  - Rely on sending customizable notifications with the  `systemDefault` activity type. Users can turn off all notifications from your app with a toggle in the Microsoft Teams client settings, which can hinder communication between your app and its users.
- We still recommend templated notifications for recurring and large batches of notifications because they require activity templates in the manifest.
- The `systemDefault` reserved activity type remains available, regardless of the activity types listed in your app's manifest.

## Customize how the notifications alert you

Microsoft Teams users can customize the notifications they see in their feed, as a banner, and so on. Notifications generated through activity feed APIs can also be customized. Users can choose how they're notified via settings in Microsoft Teams. Teams apps appear in the list for the user to choose from, as shown in the following screenshot.

![Screenshot of the Notifications settings in Teams, with the Custom option highlighted](images/teams-activityfeednotifications/notificationsettings.png)

Users can click **Edit** next to an app and customize the notifications, as shown in the following example. The `description` field in the Teams app manifest is displayed.

![Screenshot showing notifications customized to Banner and feed for a Teams app](images/teams-activityfeednotifications/applevelnotificationsettings.png)

## FAQs

### Who needs to install the Teams app?

The target user must have the Teams app that is sending notifications installed.

### Can a user send notifications to themselves?

No, a user can't send notifications to themselves. For this scenario, use application permissions.

### Can a Teams app control how the notifications are shown to the user?

No, only users are allowed to change notification settings.

### I installed my app; why don't I see notification settings under the user account?

The settings appear after the Teams app sends the first notification. This reduces the number of settings that users see.

### I started getting a 409 (conflict) error; how do I resolve it?

`Conflict` errors primarily occur when multiple Teams apps installed in the same scope (team, chat, user, and so on) have the same Microsoft Entra appId in the `webApplicationInfo` section of the manifest. When this happens, you get an error like `Found multiple applications with the same Microsoft Entra App ID 'Your Microsoft Entra AppId'.`. Make sure that you use unique Microsoft Entra apps for unique Teams apps.  You can install the same Teams app in multiple scopes (team + user, for example).

## Related content

- [Tutorial: Send activity feed notifications](/microsoftteams/platform/sbs-graphactivity-feedbroadcast)
- [Best practices for using Microsoft Teams activity feed notifications](teams-activity-feed-notifications-best-practices.md)
- [Design activity feed notifications for Microsoft Teams](/microsoftteams/platform/concepts/design/activity-feed-notifications?tabs=mobile)
- [Send activity feed notifications .NET sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/tree/main/samples/graph-activity-feed/csharp)
- [Send activity feed notifications Node.js sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/tree/main/samples/graph-activity-feed/nodejs)


