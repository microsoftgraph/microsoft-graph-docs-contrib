---
author: Jackson-Woods
ms.topic: include
---

> [!IMPORTANT]
> The AgentIdentity* permissions are currently unavailable for consent through the API permissions experience on the Microsoft Entra admin center. To use these permissions, you can consent to them through Microsoft Graph API calls as described in [Grant or revoke API permissions programmatically](/graph/permissions-grant-via-msgraph?tabs=http&pivots=grant-delegated-permissions). See [Permissions for managing agent identities](/graph/api/resources/agentid-platform-overview#permissions-for-managing-agent-identities) for more information about these permissions.
>
> When using delegated permissions, the authenticated user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with a supported role permission. The following least privileged roles are supported for this operation.
> - Agent ID Administrator.
> - Agent ID Developer - Create agent identity blueprints. The principal with this role is assigned ownership of the blueprint they create and can perform write operations on that blueprint.
