---
title: "Protected APIs in Microsoft Teams"
description: "Protected APIs deal with very sensitive data, and apps accessing that data need additional validation (above and beyond permission scopes & consent)."
author: "nkramer"
localization_priority: Priority
ms.prod: "microsoft-teams"
---

# Protected APIs in Microsoft Teams

Microsoft Teams APIs in Microsoft Graph that access sensitive data are considered protected APIs. 
These APIs require that you have additional validation, beyond permissions and consent, before you can use them.
An example of a protected API is [reading channel and chat messages](/graph/api/channel-list-messages?view=graph-rest-beta) 
using [application permissions](auth/auth-concepts#microsoft-graph-permissions). 

To apply for access to protected APIs, please apply at [aka.ms/teamsgraph/requestaccess](http://aka.ms/teamsgraph/requestaccess). 
Access requests are looked at weekly. 
For information that doesn't fit in the form, please contact [teamsAppPerms@microsoft.com](mailto:teamsAppPerms@microsoft.com).
