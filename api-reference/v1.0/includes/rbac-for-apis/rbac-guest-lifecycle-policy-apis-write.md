---
author: masonw1211
ms.topic: include
---

> [!IMPORTANT]
> For guest lifecycle policy writes, delegated access requires both the `LifecyclePolicies-Guests.ReadWrite.All` scope and a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json). *Lifecycle Workflows Administrator* is the least privileged role supported for this operation. Scope alone or role alone is insufficient.
>
> Application access requires the `LifecyclePolicies-Guests.ReadWrite.All` application permission, without an additional user directory-role requirement. These requirements apply to creating, updating, deleting, restoring, and permanently deleting guest policies, and to changing guest policy priority. They don't describe authorization for agent policies or guest user attestation.
