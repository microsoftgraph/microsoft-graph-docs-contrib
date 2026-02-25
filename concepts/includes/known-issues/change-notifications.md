---
author: ombongifaith
ms.topic: include
ms.date: 02/25/2026
ms.localizationpriority: medium
---

### Upgrade events for Teams app installation change notifications in chat scope aren't delivered

<!-- {
  "ms.author": "",
  "ms.reviewer": ""
} -->

When a subscription for a Teams app installation change notification is created, if the scope is specific to or includes chats, upgrade events/notifications aren't delivered to the subscriber.

For example: If a customer subscribes to `/appCatalogs/teamsApps/{teams-app-id}/installations?$filter=(scopeInfo/scope eq 'groupChat')`, they won't receive notifications for upgrade/update events. However, they receive other notifications regarding installations and deletions.

Another example: If a customer subscribes to `/appCatalogs/teamsApps/{teams-app-id}/installations`, they won't receive notifications for upgrade/update events occurring specifically within chats. However, they receive all other forms of notifications in teams and user's personal scope. But, in chats, they only receive installation and deletion notifications.

#### Workaround

Currently no workaround for this issue is available.
