---
author: "baywet"
localization_priority: Priority
ms.prod: "msgraph"
ms.topic: include
---
<!-- markdownlint-disable MD041 -->
<!-- this file is auto-generated don't edit it manually! -->
### channel, chatMessage, chatMessageHostedContent, team, teamsApp, teamsAppDefinition, teamsAppInstallation, teamsAsyncOperation, teamsTab, teamwork resources service limits

| Request type | Limit per app per tenant | Limit per app accross all tenants |
| GET, teams/{teamId}/channels/{channelId}/messages/{messageId} | 50 requests per 10 seconds | 1000 requests per 10 seconds |
| POST, teams/{teamId}/channels | 20 requests per 10 seconds | 200 requests per 10 seconds |
| GET, me/chats or chats/ | 30 requests per 10 seconds | 300 requests per 10 seconds |
| POST, me/chats or chats/ | 20 requests per 10 seconds | 200 requests per 10 seconds |
| GET | 600 requests per 10 seconds | 300 requests per 10 seconds | 6000 requests per 10 seconds | 3000 requests per 10 seconds |
| POST, PUT, PATCH | 300 requests per 10 seconds | 60 requests per 10 seconds | 3000 requests per 10 seconds | 1500 requests per 10 seconds |
| DELETE | 150 requests per 10 seconds | 30 requests per 10 seconds | 1500 requests per 10 seconds | 750 requests per 10 seconds |
