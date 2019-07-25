---
title: "Sending a 1:1 chat message using a bot"
description: ""
author: "nkramer"
localization_priority: Priority
ms.prod: "microsoft-teams"
---

# Sending a 1:1 chat message using a bot

Chatbots for Microsoft teams can send messages to

## Sending 1:1 messages

You can send 1:1 chat messages using a combination of Graph and [bots](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/bots/bots-overview).
These messages will appear to the user as coming from the bot.

There's three steps to sending the 1:1 message from the bot:
* Ensure the bot has been installed for the user (or in a team the user belongs to)
* Get the chat thread id
* Send the message from the bot

Note: there is also a Graph API to [send a 1:1 chatMessage as the logged in user](https://docs.microsoft.com/en-us/graph/api/channel-post-messages?view=graph-rest-beta&tabs=http). 
That API has a lot of restrictions, and the message is reported as sent by the user rather than the app so using a bot is generally the better option.

## Ensure the bot has been installed 

Bots in Microsoft teams can send 1:1 messages to users that have the bot installed.

First, ensure your application has the right permission scopes – you'll need User.ReadWrite.All or Directory.ReadWrite.All to install apps for a user.
You'll also need Chat.Read.All for a subsequent step.
Both permissions will require admin consent.
You'll want to use application permissions rather than user delegated because you will be installing apps to users other than yourself.

Next, check to see if your bot (Teams app) is already installed for that user:

```http
GET /users/{user-id}/teamwork/installedApps?$expand=teamsAppDefinition&$filter=teamsAppDefinition/teamsAppId eq '{teamsAppid}'
```

Where {teamsAppId} is the id in the Teams app manifest. 
(This may be different from your appid for Graph calls, and from your botId)

That will return either an empty array (meaning the app is not installed), or an array with one entry (meaning it is).

If the app is not already installed for that user, you can then install it:

```http
POST /users/{user-id}/teamwork/installedApps
{
   "teamsApp@odata.bind" : "https://graph.microsoft.com/beta/appCatalogs/teamsApps/{teamsAppid}"
}
```

See https://github.com/microsoftgraph/microsoft-graph-docs/blob/ac-proactive-messaging/api-reference/beta/api/user-add-teamsappinstallation.md for details.

(If the app was already installed this call will fail)

If the user has Microsoft Teams running, they may or may not see the app installation right away – they may need to restart the app to see the installation.

## Get the chat thread id

When the app is installed for the user, the bot will get a notification, see https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/bots/bots-notifications

This notification will contain the chatThread id.

If you lose that ID, you can find it again:

```http
GET /users/{user-id}/chats?$filter=installedApps/any(a:a/teamsApp/id eq '{teamsAppid}'
```

The id property of the result is the chatThread id.

## Sending the message

See https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/bots/bot-conversations/bots-conv-proactive

## C# sample

See https://github.com/microsoftgraph/contoso-airlines-teams-sample/tree/nkramer-promsg (note the branch).
Interesting code is in InstallAppToAllUsers() in [GraphService.cs](https://github.com/microsoftgraph/contoso-airlines-teams-sample/blob/nkramer-promsg/project/Models/GraphService.cs).

## Installing bots to teams

Chatbots can also send to users that are in a team that have that bot installed. 
Graph API for that: 
[install to team](https://docs.microsoft.com/en-us/graph/api/teamsappinstallation-add?view=graph-rest-beta)

Then follow the same steps above to get the chat thread ID and send the 1:1 message.
