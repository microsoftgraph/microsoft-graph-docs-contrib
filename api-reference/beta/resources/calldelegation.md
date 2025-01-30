---
title: "Call delegation resource type"
description: "Contains information about a call delegation process."
author: "garchiro7"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "cloud-communications"
ms.date: 01/28/2025
---

# Delegation Call APIs

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


## Overview

Microsoft Graph introduces Call Delegation APIs to streamline communication workflows into custom applications. These APIs enable querying and managing delegates and delegators to enhance collaborative call scenarios, such as shared line appearances and proxy calling.

## Introduction to Teams Delegation

Microsoft Teams Delegation allows users to share call responsibilities by assigning delegates. Delegates can perform actions such as receiving calls, making calls on behalf of others, and managing call settings. This feature is useful in scenarios where an assistant or team member handles communications for another user.

Microsoft Graph enable developers to programmatically manage delegators and delegates. Common scenarios include:

- Setting up shared line appearances.
- Managing permissions for making and receiving calls.
- Streamlining communication workflows within teams.

### Who is a delegator?
A delegator is a user who grants another user (delegate) the ability to perform certain actions on their behalf, such as making and receiving calls, manage call settings, or join active calls. Delegators are typically users who need assistance in handling their communication responsibilities.

### Who is a delegate?
A delegate is a user who is assigned responsibilities by a delegator. Delegates can take specific actions like answering calls, initiating calls, and managing call settings on behalf of the delegator. This role is commonly used by assistants or team members to facilitate seamless communication workflows.

## Prerequisites

To access these APIs, the following configurations are required:

1. **Permissions**: Assign delegated scopes to your application for access. Use the following URL to log in with an admin account and assign permissions:

   ```
   https://login.microsoftonline.com/common/oauth2/v2.0/authorize?client_id={Client-App-ID}&response_type=code&scope=https://graph.microsoft.com/CallDelegation.Read
   ```

2. **Policies**: Assign the `AllowDelegation` policy in Microsoft Teams using [PowerShell]( https://learn.microsoft.com/powershell/module/teams/set-csteamscallingpolicy?view=teams-ps#-allowdelegation):

   ```
   Set-CsTeamsCallingPolicy -AllowDelegation $true
   ```

## API methods

| Operation                                          |  Return Type                                                       |  Description                              |
|--------------------------                          |--------------------------------------------------------------------|-------------------------------------------|
| [List All Delegates](../api/calldelegate-list.md)  |  [delegate](../resources/calldelegation.md#delegate) collection    | Retrieve all delegates for a user         |
| [Get Delegate by ID](../api/calldelegate-get.md)   |  [delegate](../resources/calldelegation.md#delegate)               | Fetch details of a specific delegate      |
| [List All Delegators](../api/calldelegator-list.md)|  [delegator](../resources/calldelegation.md#delegator) collection  | Retrieve all delegators for a user        |
| [Get Delegator by ID](../api/calldelegator-get.md) |  [delegator](../resources/calldelegation.md#delegator)             | Fetch details of a specific delegator     |

## Properties

### Delegator

| Property Name                                    | Description |
|--------------------------------------------------|-------------|
| **id**                                           | Unique identifier of the delegator. |
| **createdDateTime**                              | Timestamp when the delegator entry was created. |
| **isActive**                                     | Indicates if the delegator relationship is currently active. |
| **allowedActions.makeCalls**                     | Determines if the delegator allows making calls on their behalf. |
| **allowedActions.receiveCalls**                  | Determines if the delegator allows receiving calls on their behalf. |
| **allowedActions.manageCallAndDelegateSettings** | Determines if the delegator allows managing call and delegation settings. |
| **allowedActions.pickUpHeldCalls**               | Determines if the delegator allows picking up held calls. |
| **allowedActions.joinActiveCalls**               | Determines if the delegator allows joining active calls. |


### Delegate

| Property Name                                     | Description |
|---------------------------------------------------|-------------|
| **id**                                            | Unique identifier of the delegate. |
| **createdDateTime**                               | Timestamp when the delegate entry was created. |
| **isActive**                                      | Indicates if the delegate relationship is currently active. |
| **allowedActions.makeCalls**                      | Determines if the delegate can make calls on behalf of the delegator. |
| **allowedActions.receiveCalls**                   | Determines if the delegate can receive calls on behalf of the delegator. |
| **allowedActions.manageCallAndDelegateSettings**  | Determines if the delegate can manage call and delegation settings. |
| **allowedActions.pickUpHeldCalls**                | Determines if the delegate can pick up held calls. |
| **allowedActions.joinActiveCalls**                | Determines if the delegate can join active calls. |

## More Resources

- [Share a phone line with a delegate in Microsoft Teams](https://support.microsoft.com/office/share-a-phone-line-with-a-delegate-in-microsoft-teams-16307929-a51f-43fc-8323-3b1bf115e5a8)
- [Microsoft Teams PowerShell - Set-CsTeamsCallingPolicy](https://learn.microsoft.com/powershell/module/teams/set-csteamscallingpolicy)
