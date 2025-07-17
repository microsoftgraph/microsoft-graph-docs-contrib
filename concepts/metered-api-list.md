---
title: "Metered APIs and services in Microsoft Graph"
description: "Get a list of metered APIs and services in Microsoft Graph."
author: "spgraph-docs-team"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
ms.date: 11/07/2024
---

# Metered APIs and services in Microsoft Graph

This article provides a list of metered APIs and services in Microsoft Graph. To call these APIs and services, you must associate an active Azure subscription with the calling application. For details, see [Overview of metered APIs and services in Microsoft Graph](metered-api-overview.md).

Some metered APIs and services in Microsoft Graph are protected and require additional validation beyond permissions and admin consent. Before you can use these protected APIs, you must submit a request.

The following table lists the metered APIs and services.

| API | Billing and license information |
|:--------------------------|:--------------------------|
| Teams [chat](/graph/api/chats-getallmessages) export | [Teams API payment models and licensing requirements](teams-licenses.md) |
| Teams [chat retained](/graph/api/chat-getallretainedmessages) export | [Teams API payment models and licensing requirements](teams-licenses.md) |
| Teams [channel](/graph/api/channel-getallmessages) export | [Teams API payment models and licensing requirements](teams-licenses.md) |
| Teams [channel retained](/graph/api/channel-getallretainedmessages) export | [Teams API payment models and licensing requirements](teams-licenses.md) |
| Teams chat / channel [change notifications](/graph/api/subscription-post-subscriptions) | [Teams API payment models and licensing requirements](/graph/teams-licenses) |
| Teams conversationMember [change notifications](/graph/api/subscription-post-subscriptions) | [Teams API payment models and licensing requirements](/graph/teams-licenses) |
| Teams chat / channel message [PATCH operations](/graph/api/chatmessage-update) | [Teams API payment models and licensing requirements](teams-licenses.md) |
| Teams meeting [transcript](/graph/api/calltranscript-get#example-2-get-a-calltranscript-content) | [Teams API payment models and licensing requirements](teams-licenses.md) |
| Teams meeting [transcript metadata](/graph/api/calltranscript-get#example-4-get-a-calltranscript-metadatacontent) | [Teams API payment models and licensing requirements](teams-licenses.md) |
| Teams meeting [recording](/graph/api/callrecording-get#example-2-get-callrecording-content) | [Teams API payment models and licensing requirements](teams-licenses.md) |
| SharePoint and OneDrive for Business [assignSensitivityLabel](/graph/api/driveitem-assignsensitivitylabel) | $0.00185 (USD) per API call<br/>[Enable metered APIs and services in Microsoft Graph](/graph/metered-api-setup) |
| SharePoint prioritization [SharePoint prioritization](/SharePoint/SharePointOnline/SharePoint-Prioritization) | [Enable metered APIs and services in Microsoft Graph](/graph/metered-api-setup) |

## Related content

- [Overview of metered APIs and services in Microsoft Graph](/graph/metered-api-overview)
- [Enable metered APIs and services in Microsoft Graph](/graph/metered-api-setup)
- [Metered APIs frequently asked questions](/graph/metered-api-faq)
