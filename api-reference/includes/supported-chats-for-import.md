---
author: mea
ms.topic: include
---

<!-- markdownlint-disable MD041-->

This API supportes the following channel types.

|Entities |Sub type  |Migration mode support |Notes|
|---------|---------|---------|---------|
|**Chats** | Group, 1:1 | New and existing | Meeting chats not supported; external members supported|

Chat types are not allowed in initial imports.

Federated chats are not supported. Federated chats supported but users will not be able to create federated resources.
i.e., import message on behalf of federated user, or target chat must belong to the tenant of the initiator app.
Users can only import contents into the tenant it's authenticated into.
