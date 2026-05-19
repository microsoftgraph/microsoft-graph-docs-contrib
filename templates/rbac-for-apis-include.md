<!-- -This template file is consumed by the /authorAPIDocs prompt -->
# RBAC for APIs include file templates

Use these templates when creating RBAC (role-based access control) include files for API operation topics. These files inform callers which Microsoft Entra admin roles are required in delegated scenarios, in addition to Microsoft Graph permissions.

## File conventions

- **Location:** `api-reference/{version}/includes/rbac-for-apis/`
- **Naming:** `rbac-{feature-area}-apis-{operation}.md` — for example, `rbac-identity-provider-apis.md`, `rbac-access-reviews-apis-read.md`
- **Placement in API file:** Immediately after the permissions table include statement, before the `## HTTP request` section

### Include syntax in API operation files

```markdown
[!INCLUDE [rbac-{descriptive-label}](../includes/rbac-for-apis/{filename}.md)]
```

---

## Template A — Single least privileged role

Use when one Entra admin role is the least privileged role for the operation.

```markdown
---
author: {github-username}
ms.topic: include
---

> [!IMPORTANT]
> For delegated access using work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role that grants the permissions required for this operation. *{Role Name}* is the least privileged role supported for this operation.
```

### Example (Template A)

```markdown
---
author: janedoe
ms.topic: include
---

> [!IMPORTANT]
> For delegated access using work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role that grants the permissions required for this operation. *External Identity Provider Administrator* is the least privileged role supported for this operation.
```

---

## Template B — Multiple least privileged roles

Use when two or more Entra admin roles are supported for the operation, listed from least to most privileged.

```markdown
---
author: {github-username}
ms.topic: include
---

> [!IMPORTANT]
> For delegated access using work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role that grants the permissions required for this operation. This operation supports the following built-in roles, which provide only the least privilege necessary:
> - {Role Name 1}
> - {Role Name 2}
> - {Role Name 3}
```

### Example (Template B)

```markdown
---
author: janedoe
ms.topic: include
---

> [!IMPORTANT]
> For delegated access using work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role that grants the permissions required for this operation. This operation supports the following built-in roles, which provide only the least privilege necessary:
> - Cloud Application Administrator
> - Application Administrator
```
