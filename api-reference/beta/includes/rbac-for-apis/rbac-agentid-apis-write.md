---
author: zallison22
ms.topic: include
---

> [!IMPORTANT]
> - **Known issue**: If the client is granted either the *Directory.AccessAsUser.All* or *Directory.ReadWrite.All* permission, the client's permissions to create, update, and delete Agent IDs are ignored, which can cause requests to fail with `403 Unauthorized` error. To resolve this issue, remove the `Directory.AccessAsUser.All` or `Directory.ReadWrite.All` permission from the client, request new access tokens, and retry the request.
>
> - When using delegated permissions, the authenticated user must be assigned one of the following supported [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json):
>   - Agent ID Administrator.
>   - Agent ID Developer - Create agent identity blueprints. The principal with this role is assigned ownership of the blueprint they create and can perform write operations on that blueprint.
