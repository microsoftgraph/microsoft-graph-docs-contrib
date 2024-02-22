---
ms.localizationpriority: high
---

<!-- markdownlint-disable MD002 MD041 -->

For Microsoft 365 groups, Group permissions grant the app access to the contents of the group; for example, conversations, files, notes, and so on.

In some cases, an app may need additional properties to read some group properties like `member` and `memberOf`. For example, if a group has a one or more [servicePrincipals](/graph/api/resources/serviceprincipal?view=graph-rest-beta&preserve-view=true) as members, the app will also need permissions to read service principals, otherwise Microsoft Graph will return an error or limited information. In delegated scenarios, the signed-in user will also need permissions in the organization to read service principals. For more information, see [Limited information returned for inaccessible member objects](/graph/permissions-overview#limited-information-returned-for-inaccessible-member-objects).

Group permissions are used to control access to [Microsoft Teams](/graph/api/resources/teams-api-overview) resources and APIs. Personal Microsoft accounts are not supported.

Group permissions are also used to control access to [Microsoft Planner](/graph/api/resources/planner-overview) resources and APIs. Only delegated permissions are supported for Microsoft Planner APIs; application permissions are not supported. Personal Microsoft accounts are not supported.
