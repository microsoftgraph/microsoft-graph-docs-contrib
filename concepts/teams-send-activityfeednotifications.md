---
title: "Send activity feed notifications to users in Microsoft Teams"
description: "Send activity feed notifications to users in Microsoft Teams using teams app and microsoft graph."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# Send activity feed notifications to users in Microsoft Teams

Microsoft Teams Activity feed acts as an excellent way to triage the things which require attention. It is *the* place to inform users of changes or things which require their attention. Activity feed notifications APIs enable applications to get user's attention related to their apps. This allows apps to build richer experiences and have better user engagement.

## Understanding the basics of activity feed notification

Activity feed notification in Microsoft Teams is comprised of multiple bits of information, displayed together. The following image describes what different components mean

![FeedTemplate](images/teams-activityfeednotifications/notificationtemplate.png)

Following example shows how these components together show details about a notification

![FeedExample](images/teams-activityfeednotifications/examplefeednotification.png)

## Requirements for using the activity feed notification APIs

Activity feed APIs do not work in a standalone fashion, but work in tandem with the [teams app](/microsoftteams/platform/overview). To send activity feed notifications, following requirements must be met

- The teams app manifest must have the Azure AD app Id added to the `webApplicationInfo` section. Please refer to [manifest schema documentation](/microsoftteams/platform/resources/schema/manifest-schema)
- Activity types must be declared in the `activities` section. Please refer to [manifest schema documentation](/microsoftteams/platform/resources/schema/manifest-schema)
- The teams app must be installed for the recipient, either personally, in a [team](/graph/api/resources/team?preserve-view=true) or a [chat](/graph/api/resources/chat?preserve-view=true) they are part of. You can refer to [teams app installation](/graph/api/resources/teamsappinstallation?preserve-view=true) for APIs to manage teams app installations.

### Changes in teams app manifest

Refer to the following json for sample changes to be made. These changes need to be added to Teams app manifest.

#### manifestVersion

To use the sections listed below you must use [teams app manifest](/microsoftteams/platform/resources/schema/manifest-schema) version `1.7` or above

```json
"$schema": "https://developer.microsoft.com/json-schemas/teams/v1.7/MicrosoftTeams.schema.json",
"manifestVersion": "1.7",
````

#### webApplicationInfo section changes

```json
"webApplicationInfo":
{
    "id": "6d1f5132-c2b4-440d-b6e9-bef3fc03123c",
    "resource": "https://contosoapp.com"
}
```

|Parameter|Type|Description|
|:---|:---|:---|
|id|string|Azure AD app Id (client Id)|
|resource|string|Resource associated with the Azure AD app. Also known as reply or redirect url in Azure Portal.|

> **Note:** : You might get an error if multiple teams app in the same scope (team, chat or user) are using the same Azure AD app. Please ensure you are using unique Azure AD apps.

#### activities section changes

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
|type|string|Type of activity. This needs to be unique in a specific manifest.|
|description|string|Human readable short description. This will be visible on the Microsoft Teams client.|
|templateText|string|Template text for the activity notification. You can declare your parameters by encapsulating parameters in `{}`.|

**Note:** `actor` is a special parameter which always takes the name of caller. In delegated calls, `actor` is user's name and in application-only calls, it takes the name fo the teams app.

### Installing the teams app

Teams apps can be installed in a team, a chat or for a user personally. Their are multiple ways a teams app can be distributed. You can refer to [teams app distribution methods](/microsoftteams/platform/concepts/deploy-and-publish/overview) documentation and choose an option which suits your needs. Typically, for development purposes, [sideloading](/microsoftteams/platform/concepts/deploy-and-publish/apps-upload) is the preferred way. Post development you can choose the right distribution method based on if you want to distribute to a tenant or to all tnenats.

You can also use [teams app installation](/graph/api/resources/teamsappinstallation?preserve-view=true) for managing teams app installations.

## Sending activity feed notifications to users

Since a teams app can be installed for a user, in a team or in a chat, the notifications can be sent in these 3 scopes as well

- [Send notification in scope of a chat](/graph/api/chat-sendactivitynotification)
- [Send notification in scope of a team](/graph/api/team-sendactivitynotification)
- [Send notification in personal scope for a user](/graph/api/userteamwork-sendactivitynotification)

Based on where the teams app is installed, different topics are allowed to be used. Personally installed apps, get access to the largest set of topics, while apps installed in team and chat can just use topics in their installation scope.

### Examples

#### Example 1 : Notify a user about a task created in a chat

This example shows how you can send an activity feed notification for a new task created in a chat. In this case, the teams app must be installed in chat with Id `chatId` and user `569363e2-4e49-4661-87f2-16f245c5d66a` must be part of the chat as well.

##### Request
<!-- {
  "blockType": "request",
  "name": "chat_sendactivitynotification"
}
-->
``` http
POST https://graph.microsoft.com/beta/chats/{chatId}/sendActivityNotification

Content-Type: application/json

{
    "topic": {
        "source": "entityUrl",
        "value": "https://graph.microsoft.com/beta/chats/{chatId}"
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

##### Response
<!-- {
  "blockType": "response",
  "truncated": false
}
-->
``` http
HTTP/1.1 204 No Content
```

#### Example 2 : Notify a user about a task created in a team

This example shows how you can send an activity feed notification for a team. This example notifies the team owner about pending member add requests.

##### Request
<!-- {
  "blockType": "request",
  "name": "team_sendactivitynotification"
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/{teamId}/sendActivityNotification

Content-Type: application/json

{
    "topic": {
        "source": "entityUrl",
        "value": "https://graph.microsoft.com/beta/teams/{teamId}"
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

##### Response
<!-- {
  "blockType": "response",
  "truncated": false
}
-->
``` http
HTTP/1.1 204 No Content
```

#### Example 3 : Notify a user about an event using custom topic

As seen in examples above, you can link to different aspects of the team. However if you want to link an aspect which is not part of the team, is not represented by Microsoft Graph, or want to customize the name. You can
set the source of the `topic` to `text` and pass in a custom value for it. `webUrl` is required when using `topic` source as `text`.

> **Note:** `webUrl` must start with the Microsoft Teams domain (teams.microsoft.com for example).

##### Request
<!-- {
  "blockType": "request",
  "name": "team_sendactivitynotification"
}
-->
``` http
POST https://graph.microsoft.com/beta/team/{teamId}/sendActivityNotification

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
        "@odata.type": "Microsoft.Teams.GraphSvc.aadUserNotificationRecipient",
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

##### Response
<!-- {
  "blockType": "response",
  "truncated": false
}
-->
``` http
HTTP/1.1 204 No Content
```

## Customizing the how the notifications alert you

As a user of Microsoft Teams, user can customize the notifications they see in their feed, as a pop-up etc. Notifications generated through activity feed APIs follow the same suit. Users can choose how they are notified about a notification. To customize this, you can go to settings in Microsoft Teams and customize the notification settings. Teams apps will appear in the list for user to choose from as shown below

![NotificationSettingsInTeams](images/teams-activityfeednotifications/notificationsettings.png)

Users can click on **Edit** button next to an app and customize the notifications. See the example below. `description` in the teams app manifest is displayed here.

![NotificationSettingsForAnApp](images/teams-activityfeednotifications/applevelnotificationsettings.png)