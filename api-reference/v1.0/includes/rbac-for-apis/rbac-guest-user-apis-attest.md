---
author: masonw1211
ms.topic: include
---

> [!IMPORTANT]
> Guest user attestation supports delegated access only. Application access is rejected even with the `LifecyclePolicies-Guests.ReadWrite.All` application permission. No role, ownership, or sponsorship grants an application an exception.

The lifecycle workflows service accepts either of the following delegated authorization paths:

- **Administrator:** Both the `LifecyclePolicies-Guests.ReadWrite.All` delegated scope and a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) are required. *Lifecycle Workflows Administrator* is the least privileged role supported for this path. Scope alone or role alone is insufficient. Global Reader doesn't qualify.
- **Sponsor:** The signed-in user must be a direct sponsor of the target guest or a direct member of a group sponsoring that guest. This path doesn't additionally require the preceding scope or admin role in the lifecycle workflows handler. Sponsorship must be successfully verified; a failed or forbidden sponsorship lookup doesn't grant access.

Ownership isn't an authorization path. The target user must exist, be a guest, and have an enabled account. Requests must also satisfy Microsoft Graph authentication and permission validation.
