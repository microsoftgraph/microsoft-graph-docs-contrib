---
title: "Proactive messaging using a bot in Microsoft Teams"
description: "Sending a proactive message to a Microsoft Teams user with a custom app by first installing the bot using Microsoft Graph."
author: "clearab"
localization_priority: Normal
ms.prod: "microsoft-teams"
---
# Proactive messaging using a bot in Microsoft Teams

A proactive message is a message sent to a Microsoft Teams user without a user initiating the conversation. Custom apps in Microsoft Teams can send proactive messages to users using a bot. However, to do so the bot needs to be installed either as a personal app, or in a team that the user is a member of. This requirement can be prohibitive in scenarios where you need to proactively message a group of users that may or may not have the Teams app installed.

This article outlines how you can combine the Microsoft Graph with a Microsoft Teams app to install the app for your users and then use your Teams app to send them a proactive message, without requiring them to manually install the app.

At a high level, you'll need to:

* [Create your Teams app and bot](#create-your-teams-app-and-bot)
* [Deploy your app to your tenant app catalog](#deploy-your-app-to-your-tenant-app-catalog)
* [Install the app for your users](#install-the-app-for-your-users)

## Create your Teams app and bot

If you do not already have a Microsoft Teams app with a bot that can send the message, you'll need to create one. See the [bot documentation](/microsoftteams/platform/concepts/bots/bots-overview) in the Teams platform documentation. For specifics on creating a bot for proactive messaging, see [this article](/platform/concepts/bots/bot-conversations/bots-conv-proactive).

You can also use the [Company Communicator app template](https://github.com/OfficeDev/microsoft-teams-company-communicator-app) as a good starting point for your app. This app template is a production-ready Microsoft Teams app capable of creating, scheduling and distributing company-wide messages.

When creating your app make sure you take note of the `id` you use in your application manifest; you'll need it to install the app in a subsequent step.

If you are doing this for a large organization, the welcome messages from your bot may get throttled. If possible, perform the installations in batches, and implement back-off functionality in your bot. See the article on [handling rate limiting](/microsoftteams/platform/concepts/bots/rate-limit).

## Deploy your app to your tenant app catalog

Microsoft Graph can only install apps that have been added to your tenant app catalog, or are available in the public Microsoft Teams app store. If you're working with a new app, you'll need to make sure it is [added to your tenant app catalog](/MicrosoftTeams/tenant-apps-catalog-teams).

## Install the app for your users

To install the Teams app for your users, you'll first need to ensure your Graph application has the right permission scopes – you'll need `User.ReadWrite.All` or `Directory.ReadWrite.All` to install the Teams app. You'll also need `Chat.Read.All` for a subsequent step. Both permissions will require admin consent, and you'll need to use application permissions rather than user delegated because you will be installing apps to users other than yourself.

### Check to see if the app is already installed

First, you'll want to check to see if your Teams app is already installed for the users you want to install it from, as in the example below:

```http
GET /users/{user-id}/teamwork/installedApps?$expand=teamsAppDefinition&$filter=teamsAppDefinition/teamsAppId eq '{teamsAppid}'
```

Where `{teamsAppId}` is the `id` in the Teams app manifest that you made note of previously. Note that this may be different from your `appid` for Graph calls, and from your `botId`. You may find it useful to manually install the app for a user and test the call against that user to ensure you've got the correct `id` value.

The call will return an empty array if the app is not installed, or an array with a single [teamsAppInstallation](/graph/api/resources/teamsappinstallation?view=graph-rest-beta) if it is already installed.

### Install the app

If the app is not already installed for that user, you can then install it as in the example below:

```http
POST /users/{user-id}/teamwork/installedApps
{
   "teamsApp@odata.bind" : "https://graph.microsoft.com/beta/appCatalogs/teamsApps/{teamsAppid}"
}
```

See [Install app for user](/graph/api/user-add-teamsappinstallation?view=graph-rest-beta) for additional information.

If the user has Microsoft Teams running, they may or may not see the app installation right away – they may need to restart the app to see the installation.

## Get the chat thread id

When the app is installed for the user, the bot will get receive a `conversationUpdate` event that will contain the necessary information for it to send the proactive message. For additional information see the [bot events](/microsoftteams/platform/concepts/bots/bots-notifications) article.

If you lose the `chatThreadId`, you can find it again by calling:

```http
GET /users/{user-id}/chats?$filter=installedApps/any(a:a/teamsApp/id eq '{teamsAppid}'
```

The id property of the result is the chatThread id.

## Sending the message

Now that your bot has the necessary information, you can [send a proactive message](/microsoftteams/platform/concepts/bots/bot-conversations/bots-conv-proactive).

## C# sample

See https://github.com/microsoftgraph/contoso-airlines-teams-sample/tree/nkramer-promsg (note the branch).
Interesting code is in InstallAppToAllUsers() in [GraphService.cs](https://github.com/microsoftgraph/contoso-airlines-teams-sample/blob/nkramer-promsg/project/Models/GraphService.cs).
