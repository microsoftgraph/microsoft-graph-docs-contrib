---
title: "List of Microsoft Graph Azure-metered APIs and services"
description: "The list of Azure-metered APIs and services in Microsoft Graph."
author: "JeremyKelley"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# List of Microsoft Graph Metered APIs
The following is the list of APIs that are Azure-metered and require an Azure Subscription associated with an application before they can be called. See [Metered APIs in Microsoft Graph](metered-api-overview.md) for more information. Some Microsoft Graph Azure-metered APIs may also require submitting a protected API request.  For those APIs the link to the submission form is included in the table.

| API | Protected API form |
|:--------------------------|:----------------------------------------|
| Teams [chat](/graph/api/chats-getallmessages.md) export | [Microsoft Teams request](teams-protected-apis.md) |
| Teams [channel](/graph/api/channel-getallmessages.md) export | [Microsoft Teams request](teams-protected-apis.md) |
| Teams chat / channel [change notifications](/graph/api/subscription-post-subscriptions.md) | [Microsoft Teams request](teams-protected-apis.md) |
| Teams conversationMember [change notifications](/graph/api/subscription-post-subscriptions.md) | [Microsoft Teams request](teams-protected-apis.md) |
| Teams chat / channel message [PATCH operations](/graph/api/chatmessage-update.md) | [Microsoft Teams request](teams-protected-apis.md) |
| SharePoint [assignSensitivityLabel](/graph/api/driveitem-assignsensitivitylabel.md) | [SharePoint request](https://aka.ms/PreviewSPOPremiumAPI) |