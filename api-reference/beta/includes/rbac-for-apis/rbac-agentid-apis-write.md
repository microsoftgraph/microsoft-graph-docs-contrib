---
author: zallison22
ms.topic: include
---

> [!IMPORTANT]
> For delegated access using work or school accounts, the admin must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json). This operation supports the following built-in roles, which provide only the least privilege necessary:
>   - Agent ID Administrator.
>   - Agent ID Developer - Create agent identity blueprints and blueprint principals. The principal with this role is assigned ownership of the blueprint or blueprint principal they create and can perform write operations on the resources they own.
>
>  **Known issue**: If the client is granted either the *Directory.AccessAsUser.All* or *Directory.ReadWrite.All* permission, the client's permissions to create, update, and delete Agent IDs are ignored, which can cause requests to fail with `403 Forbidden` error. To resolve this issue, remove these permissions from the client, request new access tokens, and retry the request.
