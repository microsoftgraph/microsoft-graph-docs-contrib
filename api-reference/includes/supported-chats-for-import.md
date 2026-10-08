---
author: mea
ms.topic: include
---

<!-- markdownlint-disable MD041-->

This API supportes the following channel types.

|Entities |Sub type  |Migration mode support |Notes|
|---------|---------|---------|---------|
|Chats | Group, 1:1 | New and existing | Meeting chats aren't supported. External members are supported.|

>**Notes**:
>- Chat types aren't allowed in initial imports.
>- Federated chats are supported, but users can't create federated resources. For example, they can't import messages on behalf of a federated user, and the target chat must belong to the tenant of the initiator app. Users can import content only into the tenant to which they are authenticated.
