---
title: "Send activity feed notifications to users in Microsoft Teams"
description: "Send activity feed notifications to users in Microsoft Teams using Teams app and microsoft graph."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# Send activity feed notifications to users in Microsoft Teams

Microsoft Teams activity feed enables users to triage the things which require attention. It is the central place to inform users of events which require their attention. Activity feed notification APIs enables developers to extend this functionality to their apps. This allows apps to build richer experiences and have better user engagement, while assisting users in keeping up to date with changes in tools and workflows they use.

## Understanding the basics of activity feed notification

Activity feed notification in Microsoft Teams is comprised of multiple bits of information, displayed together. The following image describes what different components mean

![FeedTemplate](images/teams-activityfeednotifications/notificationtemplate.png)

Following example shows how these components together show details about a notification. The following notification is about user mentioned in a Yammer community.

![FeedExample](images/teams-activityfeednotifications/examplefeednotification.png)

## Requirements for using the activity feed notification APIs

Activity feed APIs do not work in a standalone fashion, but work in tandem with a [Teams app](/microsoftteams/platform/overview). To send activity feed notifications, the following requirements must be met:

- The Teams app manifest must have the Azure AD app Id added to the `webApplicationInfo` section. Please refer to [manifest schema documentation](/microsoftteams/platform/resources/schema/manifest-schema)
- Activity types must be declared in the `activities` section. Please refer to [manifest schema documentation](/microsoftteams/platform/resources/schema/manifest-schema)
- The Teams app must be installed for the recipient, either personally, or in a [team](/graph/api/resources/team?preserve-view=true) or [chat](/graph/api/resources/chat?preserve-view=true) they are part of. You can refer to [Teams app installation](/graph/api/resources/teamsappinstallation?preserve-view=true) for APIs to manage Teams app installations.

### Changes in Teams app manifest

Refer to the following json for sample changes to be made. These changes need to be added to Teams app manifest.

#### manifestVersion

To use the sections listed below you must use [Teams app manifest](/microsoftteams/platform/resources/schema/manifest-schema) version `1.7` or above

```json
"$schema": "https://developer.microsoft.com/json-schemas/teams/v1.7/MicrosoftTeams.schema.json",
"manifestVersion": "1.7",
````

#### webApplicationInfo section changes

```json
"webApplicationInfo":
{
    "id": "a3111f15-658e-457c-9689-fd20fe907330",
    "resource": "https://contosoapp.com"
}
```

|Parameter|Type|Description|
|:---|:---|:---|
|id|string|Azure AD app Id (client Id)|
|resource|string|Resource associated with the Azure AD app. Also known as reply or redirect url in Azure Portal.|

> **Note:** You might get an error if multiple Teams apps in the same scope (team, chat or user) are using the same Azure AD app. Please ensure you are using unique Azure AD apps.

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

**Note:** `actor` is a special parameter which always takes the name of caller. In delegated calls, `actor` is user's name and in application-only calls, it takes the name of the Teams app.

### Installing the Teams app

Teams apps can be installed in a team, a chat or for a user personally. There are multiple ways a Teams app can be distributed. You can refer to [Teams app distribution methods](/microsoftteams/platform/concepts/deploy-and-publish/overview) documentation and choose an option which suits your needs. Typically, for development purposes, [sideloading](/microsoftteams/platform/concepts/deploy-and-publish/apps-upload) is the preferred way. Post development you can choose the right distribution method based on if you want to distribute to a tenant or to all tenants.

You can also use [Teams app installation](/graph/api/resources/teamsappinstallation?preserve-view=true) for managing Teams app installations.

## Sending activity feed notifications to users

Since a Teams app can be installed for a user, in a team or in a chat, the notifications can be sent in these 3 scopes as well

- [Send notification in scope of a chat](/graph/api/chat-sendactivitynotification)
- [Send notification in scope of a team](/graph/api/team-sendactivitynotification)
- [Send notification in personal scope for a user](/graph/api/userteamwork-sendactivitynotification)

Based on where the Teams app is installed, different topics can be used. Please refer to the links above for list of allowed topics. Custom text based topic is allowed for all cases.

### Examples

#### Example 1 : Notify a user about a task created in a chat

This example shows how you can send an activity feed notification for a new task created in a chat. In this case, the Teams app must be installed in chat with Id `chatId` and user `569363e2-4e49-4661-87f2-16f245c5d66a` must be part of the chat as well.

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

This example shows how you can send an activity feed notification for a team. This example notifies the team owner about a new task created which requires their attention.

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

#### Example 3 : Notify a user about an event using a custom topic

As seen in examples above, you can link to different aspects of a team or a chat. However, if you want to link an aspect which is not part of the team, is not represented by Microsoft Graph, or want to customize the name, you can set the source of the `topic` to `text` and pass in a custom value for it. Additionally, `webUrl` is required when using `topic` source as `text`.

The Yammer notification shown in the section above uses custom topic since Yammer's resources are not supported by Microsoft Graph.

> **Note:** `webUrl` must start with the Microsoft Teams domain (teams.microsoft.com for example).

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

## Customizing how the notifications alert you

As a user of Microsoft Teams, a user can customize the notifications they see in their feed, as a banner etc. Notifications generated through activity feed APIs follow the same suit. Users can choose how they are notified about a notification. To customize this, you can go to settings in Microsoft Teams and customize the notification settings. Teams apps will appear in the list for user to choose from, as shown below

![NotificationSettingsInTeams](images/teams-activityfeednotifications/notificationsettings.png)

Users can click on **Edit** button next to an app and customize the notifications. See the example below. `description` in the Teams app manifest is displayed here.

![NotificationSettingsForAnApp](images/teams-activityfeednotifications/applevelnotificationsettings.png)