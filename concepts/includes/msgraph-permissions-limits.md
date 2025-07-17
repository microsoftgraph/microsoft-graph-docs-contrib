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
