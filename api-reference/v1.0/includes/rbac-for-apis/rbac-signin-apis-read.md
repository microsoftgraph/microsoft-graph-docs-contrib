---
author: egreenberg14
ms.topic: include
---

> [!IMPORTANT]
> For delegated access using work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role that grants the permissions required for this operation. This operation supports the following built-in roles, which provide only the least privilege necessary:
> - Global Reader
> - Reports Reader
> - Security Administrator
> - Security Operator
> - Security Reader
>
> The applied Conditional Access (CA) policies listed in **appliedConditionalAccessPolicies** property are only available to users and apps with roles that allow them to read [conditional access data](/graph/api/resources/appliedconditionalaccesspolicy). If a user or app has permissions to read sign-in logs but not permission to read conditional access data, the **appliedConditionalAccessPolicies** property in the response will be omitted. The signed-in user must be assigned supported Microsoft Entra roles and the app granted supported Microsoft Graph permissions.
> - The following least-privileged roles grant users permissions to view conditional access data:
>     - Global Reader
>     - Security Administrator
>     - Security Reader
>     - Conditional Access Administrator
> - Applications must have at least one of the following permissions to see [appliedConditionalAccessPolicy](/graph/api/resources/appliedconditionalaccesspolicy) objects in the sign-in logs: 
>     - Policy.Read.All
>     - Policy.Read.ConditionalAccess
>     - Policy.ReadWrite.ConditionalAccess
>
> Signed-in users with any permissions can read their own sign-in logs. This feature helps users spot unexpected activity in their accounts. However, the users can't read CA data from their own logs unless they have one of the supporting permissions identified above.