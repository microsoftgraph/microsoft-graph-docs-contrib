---
title: "Protected APIs in Microsoft Teams"
description: "Microsoft Teams APIs in Microsoft Graph that access sensitive data are considered protected APIs and require additional validation before you can use them."
author: "nkramer"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
---

# Protected APIs in Microsoft Teams

In the past, Microsoft Teams APIs in Microsoft Graph that accessed sensitive data were considered as protected APIs. App owners were required to submit an approval request through an online form, so that we could approve and track the apps that use the protected APIs.

The approval process was manual and was not instant.  You spoke and we listened!  We have been building other features that serve a similar purpose.  With features such as [app registration](https://learn.microsoft.com/azure/active-directory/develop/quickstart-register-app) and [subscription association](/graph/metered-api-setup), we are now able to deprecate the manual approval process.

Starting May 2023, the online form and the protected API approval process are no longer needed.  You can immediately call the protected APIs as long as other requirements ([app registration](https://learn.microsoft.com/azure/active-directory/develop/quickstart-register-app), [subscription association](/graph/metered-api-setup), etc.) are met.

## See also

* [Microsoft Teams API overview](teams-concept-overview.md)
