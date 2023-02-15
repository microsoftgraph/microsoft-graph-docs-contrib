---
title: "List of metered Microsoft 365 APIs and services"
description: "The list of metered Microsoft 365 APIs and services on Microsoft Graph."
author: "JeremyKelley"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# List of Microsoft Graph Metered APIs

This article provides a list of metered Microsoft 365 APIs and services in Microsoft Graph. To call these APIs and services, you must associate an active Azure subscription with the calling application. For details, see [Metered APIs in Microsoft Graph](metered-api-overview.md). 

Some metered Microsoft 365 APIs and services might also require that you submit a protected API request. For those APIs, the link to the submission form is included in the table.

| API | Billing and license information | Protected API form |
|:--------------------------|:--------------------------|:----------------------------------------|
| Teams [chat](/graph/api/chats-getallmessages.md) export | [Teams API payment models and licensing requirements](teams-licenses.md) | [Microsoft Teams request](teams-protected-apis.md) |
| Teams [channel](/graph/api/channel-getallmessages.md) export | [Teams API payment models and licensing requirements](teams-licenses.md) | [Microsoft Teams request](teams-protected-apis.md) |
| Teams chat / channel [change notifications](/graph/api/subscription-post-subscriptions.md) | [Teams API payment models and licensing requirements](teams-licenses.md) | [Microsoft Teams request](teams-protected-apis.md) |
| Teams conversationMember [change notifications](/graph/api/subscription-post-subscriptions.md) | [Teams API payment models and licensing requirements](teams-licenses.md) | [Microsoft Teams request](teams-protected-apis.md) |
| Teams chat / channel message [PATCH operations](/graph/api/chatmessage-update.md) | [Teams API payment models and licensing requirements](teams-licenses.md) | [Microsoft Teams request](teams-protected-apis.md) |
| SharePoint and OneDrive for Business [assignSensitivityLabel](/graph/api/driveitem-assignsensitivitylabel.md) | Coming soon. | [SharePoint preview enrollment form](https://aka.ms/PreviewSPOPremiumAPI) |
| eDiscovery [addToReviewSet](/graph/api/security-ediscoveryreviewset-addtoreviewset) | Coming soon. | Not required. |

## See also

- [Metered APIs in Microsoft Graph](/graph/metered-api-overview)
- [Onboard to metered Microsoft 365 APIs and services](/graph/metered-api-onboarding)

