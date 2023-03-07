---
title: "Metered Microsoft 365 APIs and services"
description: "Get a list of metered Microsoft 365 APIs and services in Microsoft Graph."
author: "JeremyKelley"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Metered Microsoft 365 APIs and services

This article provides a list of metered Microsoft 365 APIs and services in Microsoft Graph. To call these APIs and services, you must associate an active Azure subscription with the calling application. For details, see [Overview of metered Microsoft 365 APIs in Microsoft Graph](metered-api-overview.md). 

Some metered Microsoft 365 APIs and services are protected and require additional validation beyond permissions and admin consent. Before you can use these protected APIs, you must submit a request.

The following table lists the metered Microsoft 365 APIs.

| API | Billing and license information | Protected API form |
|:--------------------------|:--------------------------|:----------------------------------------|
| Teams [chat](/graph/api/chats-getallmessages) export | [Teams API payment models and licensing requirements](teams-licenses.md) | [Microsoft Teams request](https://aka.ms/teamsgraph/requestaccess) |
| Teams [channel](/graph/api/channel-getallmessages) export | [Teams API payment models and licensing requirements](teams-licenses.md) | [Microsoft Teams request](https://aka.ms/teamsgraph/requestaccess) |
| Teams chat / channel [change notifications](/graph/api/subscription-post-subscriptions) | [Teams API payment models and licensing requirements](/graph/teams-licenses) | [Microsoft Teams request](https://aka.ms/teamsgraph/requestaccess) |
| Teams conversationMember [change notifications](/graph/api/subscription-post-subscriptions) | [Teams API payment models and licensing requirements](/graph/teams-licenses) | [Microsoft Teams request](https://aka.ms/teamsgraph/requestaccess) |
| Teams chat / channel message [PATCH operations](/graph/api/chatmessage-update) | [Teams API payment models and licensing requirements](teams-licenses.md) | [Microsoft Teams request](https://aka.ms/teamsgraph/requestaccess) |
| SharePoint and OneDrive for Business [assignSensitivityLabel](/graph/api/driveitem-assignsensitivitylabel) | Zero charge while API is in preview | [SharePoint preview enrollment form](https://aka.ms/PreviewSPOPremiumAPI) |

## See also

- [Overview of metered Microsoft 365 APIs in Microsoft Graph](/graph/metered-api-overview)
- [Enable Microsoft 365 metered APIs and services](/graph/metered-api-setup)
- [Protected APIs in Microsoft Teams](/graph/teams-protected-apis)

