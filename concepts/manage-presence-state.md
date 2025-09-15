--
title: "Manage presence state using the Microsoft Graph API"
description: "Learn how to manage presence states and sessions using Microsoft Graph API."
author: "garchiro7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
ms.date: 09/15/2025
ms.topic: article
---

# Manage presence state using the Microsoft Graph API

Microsoft Graph API enables applications to manage user presence states across multiple sessions, ensuring accurate and dynamic availability updates.

## Presence sessions

A user can have multiple presence sessions because the user can be on multiple Teams clients (desktop, mobile, and web). Each Teams client has an independent presence session and the user's presence is an aggregated state from all the sessions behind.

Similarly, an application can have its own presence session for a user and be able to update the state.

The following precedence is used for how session states are aggregated, with "A > B" representing that A has precedence over B:
* User-preferred state > session-level states (user-preferred state overrides session-level states)
* Among session-level states: DoNotDisturb > Busy > Available > Away

> **Note:** When a user presence changes in Microsoft Graph, because the Teams client uses poll mode, it takes a few minutes to update the presence status.

## Presence states permutations

| Teams state              | Graph availability / activity            |
| ------------------------ | ---------------------------------------- |
| Available                | `Available / Available`                  |
| Available, out of office | `Available / OutOfOffice`                |
| Busy                     | `Busy / Busy`                            |
| In a call                | `Busy / InACall`                         |
| In a meeting             | `Busy / InAMeeting`                      |
| In a call, out of office | `Busy / InACall + OOF`                   |
| Do not disturb           | `DoNotDisturb / DoNotDisturb`            |
| Presenting               | `DoNotDisturb / Presenting`              |
| Away                     | `Away / Away`                            |
| Be right back            | `BeRightBack / BeRightBack`              |
| Appear offline           | `Offline / OffWork`                      |
| Out of office            | `OutOfOffice`                            |

> [!NOTE]
> 
>The **presence: setPresence** method doesn't support setting the presence states **Out of office (OOF)** or **In a meeting** directly. These states are automatically managed based on calendar events and mailbox configurations, and attempting to set them via the **presence: setPresence** has no effect.
>
>To reflect **"Out of office"** in presence, use the [events API](../resources/event.md) by setting the **showAs** property of a calendar event to `oof`, or configure the user's auto-reply settings using [mailboxSettings](../resources/mailboxsettings.md).
>
>The **"In a meeting"** state is automatically reflected during scheduled calendar meeting events and doesn't require manual presence updates.

## Timeout, expiration, and keep alive

A presence session might **time out** and **expire**, so the application needs to call this API before the **timeout**, to maintain the state for the session; or before the **expiration**, to keep the session alive.
A presence session can time out if the availability is `Available` and the timeout is five minutes. When it times out, the presence state fades in stages. For example, if an application sets the presence session as `Available/Available`, the state would change to `Available/AvailableInactive` in 5 minutes with the first timeout, then `Away/Away` in another 5 minutes with the second timeout.
Use `expirationDuration` to configure the expiration of a presence session; otherwise, the default expiration is five minutes. Valid values range from five minutes to four hours, after which the session becomes `Offline`.
