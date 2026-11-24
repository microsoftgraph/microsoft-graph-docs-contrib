---
author: masonw1211
ms.topic: include
---

> [!IMPORTANT]
> For delegated access, the `AgentIdentity.ReadWrite.All` scope alone is insufficient. The signed-in user must also be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json), be a direct owner of the agent, or be a direct sponsor of the agent. *Agent Identity Administrator* is the least privileged role supported for the administrator path. Ownership and sponsorship are separate authorization paths and don't require that role.
>
> For application access, the `AgentIdentity.ReadWrite.All` application permission grants access without an additional ownership, sponsorship, or admin-role check. These rules apply to agent attestation through either the service principal route or the agent identity cast route.
