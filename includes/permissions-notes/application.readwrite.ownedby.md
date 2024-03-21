---
ms.localizationpriority: high
---

<!-- markdownlint-disable MD002 MD041 -->

The *Application.ReadWrite.OwnedBy* permission allows the same operations as *Application.ReadWrite.All* but only on applications and service principals that the calling app is an owner of.

The *Application.ReadWrite.OwnedBy* permission allows an app to call `GET /applications` and `GET /servicePrincipals` endpoints to list all applications and service principals in the tenant. This scope of access has been allowed for the permission.