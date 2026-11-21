---
author: masonw1211
ms.topic: include
---

> [!IMPORTANT]
> The following describes authorization in the lifecycle workflows service. Requests must also satisfy Microsoft Graph authentication and permission validation.

For service principal and agent identity lifecycle reads, including agent-cast routes and compliance issue reads, `AgentIdentity.Read.All` is sufficient for either delegated or application access. `AgentIdentity.ReadWrite.All` also grants access. On this permission path, no additional directory role, ownership, or sponsorship is required.

For guest user lifecycle and compliance issue reads:

- **Application access:** Any one of `LifecyclePolicies-Guests.Read.All`, `LifecyclePolicies-Guests.ReadWrite.All`, `User.Read.All`, or `User.ReadWrite.All` grants access. No user directory role is required.
- **Delegated access:** Any one corresponding delegated scope grants access without an additional directory role. Alternatively, a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) independently grants access in the lifecycle workflows handler, as does verified sponsorship of the target guest. *Global Reader* is the least privileged role supported for the administrator path; Lifecycle Workflows Administrator is also supported. A role isn't required for the scope or sponsorship paths.

Unlike guest policy reads, guest user lifecycle reads don't require both a delegated scope and a directory role in the lifecycle workflows handler. These are alternative authorization paths, not cumulative requirements.
