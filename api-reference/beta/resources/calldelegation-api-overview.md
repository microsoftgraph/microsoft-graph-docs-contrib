---
title: "Working with the call delegation APIs in Microsoft Graph (preview)"
description: "Learn how to use the call delegation APIs to streamline communication workflows into custom applications."
author: "garchiro7"
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.subservice: "cloud-communications"
ms.date: 02/01/2025
---

# Working with the call delegation APIs in Microsoft Graph (preview)

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Learn how to use the call delegation APIs to streamline communication workflows into custom applications. These APIs enable querying and managing delegates and delegators to enhance collaborative call scenarios, such as shared line appearances and proxy calling.

## Prerequisites

To access these APIs, the following configurations are required:

- **Permissions**: Assign delegated scopes to your application for access. Use the following URL to sign in with an admin account and assign permissions:

   ```
   https://login.microsoftonline.com/common/oauth2/v2.0/authorize?client_id={Client-App-ID}&response_type=code&scope=https://graph.microsoft.com/CallDelegation.Read
   ```

- **Policies**: Assign the `AllowDelegation` policy in Microsoft Teams using [PowerShell](/powershell/module/teams/set-csteamscallingpolicy?view=teams-ps#-allowdelegation&preserve-view=true):

   ```
   Set-CsTeamsCallingPolicy -AllowDelegation $true
   ```

## Introduction to Teams delegation

Microsoft Teams delegation allows users to share call responsibilities by assigning delegates. Delegates can perform actions such as receiving calls, making calls on behalf of others, and managing call settings. This feature is useful in scenarios where an assistant or team member handles communications for another user.

Microsoft Graph enable developers to programmatically manage delegators and delegates. Common scenarios include:

- Setting up shared line appearances.
- Managing permissions for making and receiving calls.
- Streamlining communication workflows within teams.

### Who is a delegator?

A delegator is a user who grants another user (delegate) the ability to perform certain actions on their behalf. These actions can include making and receiving calls, managing call settings, or joining active calls. Delegators are typically users who need assistance in handling their communication responsibilities.

### Who is a delegate?

A delegate is a user who is assigned responsibilities by a delegator. Delegates can take specific actions like answering calls, initiating calls, and managing call settings on behalf of the delegator. This role is commonly used by assistants or team members to facilitate seamless communication workflows.

## Common use cases

| Operation                                          |  Return type                                                 |  Description                              |
|--------------------------                          |--------------------------------------------------------------|-------------------------------------------|
| [List all delegates](../api/callsettings-list-delegates.md)  |  [delegationSettings](../resources/delegationsettings.md) collection   | Get a list of all delegates for a user.  |
| [Get delegate by ID](../api/delegationsettings-get.md)   |  [delegationSettings](../resources/delegationsettings.md)              | Get details about a specific delegate.       |
| [List all delegators](../api/callsettings-list-delegators.md)|  [delegationSettings](../resources/delegationsettings.md) collection  | Get a list of all delegators for a user. |
| [Get delegator by ID](../api/delegationsettings-get.md) |  [delegationSettings](../resources/delegationsettings.md)             | Get details about a specific delegator.       |

## Next steps

Use the call delegation API in Microsoft Graph to query and manage delegates and delegators in Teams. To learn more:

- Explore the resources and methods that are most helpful to your scenario.
- Try the API in the Graph Explorer.

## Related content

- [Share a phone line with a delegate in Microsoft Teams](https://support.microsoft.com/office/share-a-phone-line-with-a-delegate-in-microsoft-teams-16307929-a51f-43fc-8323-3b1bf115e5a8).
- [Microsoft Teams PowerShell - Set-CsTeamsCallingPolicy](/powershell/module/teams/set-csteamscallingpolicy)