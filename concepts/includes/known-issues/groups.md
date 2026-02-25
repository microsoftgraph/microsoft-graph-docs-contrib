---
author: ombongifaith
ms.topic: include
ms.date: 02/06/2026
ms.localizationpriority: medium
---

### Nonadmin user can't add self as group owner during group creation or update

<!-- {
  "ms.author": "yuhko",
  "ms.reviewer": ""
} -->

When a nonadmin user calls the [Create group](/graph/api/group-post-groups) API, [Update group](/graph/api/group-update) API, or [Upsert group](/graph/api/group-upsert) API and adds their user ID in the request body in the **owners@odata.bind** collection, the request fails with a `400 Bad Request` error code with the message "Request contains a property with duplicate values." A nonadmin user can't explicitly add themselves as the group owner.

#### Workaround

There's no workaround for this error.

By default, a nonadmin user who is creating a security or Microsoft 365 group through the [Create group](/graph/api/group-post-groups) API or [Upsert group](/graph/api/group-upsert) API is automatically added to the **owners** collection of the group, if they don't specify any group owners. If they specify others as group owners, the nonadmin group creator is still automatically added to the **owners** collection of the security group, but not for the Microsoft 365 group. The user still can't add themselves to the **owners** collection during group update.

### GET /groups/{id}/members doesn't return service principals in v1.0

<!-- {
  "ms.author": "mbhargav",
  "ms.reviewer": ""
} -->

The [List group members](/graph/api/group-list-members) API operation on the v1.0 endpoint currently doesn't return any service principals that might be members of the queried group.

#### Workaround

As a workaround, use one of the following options:

- Use the [List group members](/graph/api/group-list-members?view=graph-rest-beta&preserve-view=true) API operation on the beta endpoint.
- Use the `/groups/{id}?$expand=members` API operation.
