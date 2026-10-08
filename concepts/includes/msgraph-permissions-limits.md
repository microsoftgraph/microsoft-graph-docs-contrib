---
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: jackson.woods
ms.localizationpriority: high
ms.topic: include
ms.subservice: entra-applications
ms.date: 11/07/2024
---

<!-- markdownlint-disable MD041-->

<!-- Limits on requested permissions per app-->

Microsoft Entra ID limits the number of permissions that can be requested and consented by a client app. These limits depend on the `signInAudience` value for an app, shown in the [app's manifest](/graph/api/resources/application). 

| signInAudience                     | Allowed users                                            | Maximum permissions the app can request   | Maximum Microsoft Graph permissions the app can request   | Maximum permissions that can be consented in a single request         |
| ---------------------------------- | -------------------------------------------------------- | ----------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------------------- |
| AzureADMyOrg                       | Users from the organization where the app is registered  | 400                                       | 400                                                       | About 155 delegated permissions and about 300 application permissions |
| AzureADMultipleOrgs                | Users from any Microsoft Entra organization                     | 400                                       | 400                                                       | About 155 delegated permissions and about 300 application permissions |
| PersonalMicrosoftAccount           | Consumer users (such as Outlook.com or Live.com accounts)  | 30                                        | 30                                                        | 30                                                                    |
| AzureADandPersonalMicrosoftAccount | Consumer users and users from any Microsoft Entra organization  | 30                                        | 30                                                        | 30                                                                    |

> [!NOTE]
> For Microsoft Entra Agent ID, some high-risk Microsoft Graph permissions are globally blocked for agents and can't be granted to agent identities.
> 
> If you include a blocked Microsoft Graph delegated permission scope or app role in the `resourceAccess` collection of a `requiredResourceAccess` entry, the request is rejected with an HTTP `400 Bad Request` response and an error indicating that the permission is blocked and can't be granted to agent identities.
> 
> For the list of blocked Microsoft Graph permissions for agents, see [Microsoft Graph permissions blocked for agents](/graph/api/resources/agentid-platform-overview?view=graph-rest-beta#microsoft-graph-permissions-blocked-for-agents).
