---
author: ombongifaith
ms.topic: include
ms.date: 02/06/2026
ms.localizationpriority: medium
---

### Upgrade events for Teams app installation change notifications in chat scope are not delivered

<!-- {
  "ms.author": "",
  "ms.reviewer": ""
} -->

When a subscription for a Teams app installation change notification is created, if the scope is specific to or includes chats, upgrade events/notifications will not be delivered to the subscriber.

For example: If a customer subscribes to `/appCatalogs/teamsApps/{teams-app-id}/installations?$filter=(scopeInfo/scope eq 'groupChat')`, they will not receive notifications for upgrade/update events. However, they will receive other notifications regarding installations and deletions.

Another example: If a customer subscribes to `/appCatalogs/teamsApps/{teams-app-id}/installations`, they will not receive notifications for upgrade/update events occurring specifically within chats. However, they will receive all other forms of notifications in teams and user's personal scope. But, in chats, they will only receive installation and deletion notifications.

#### Workaround

Currently no workaround for this issue is available.
