---
title: Cross-tenant migration API overview
description: Learn about the Microsoft Graph cross-tenant migration API, which enables tenant administrators to migrate user data across Microsoft 365 tenants.
author: danipocket
ms.author: danielabo
ms.date: 11/04/2025
ms.topic: overview
ms.subservice: t2t-migration
ms.localizationpriority: high
doc_type: conceptualPageType
---

# Cross-tenant migration API overview

The cross-tenant migration API in Microsoft Graph enables tenant administrators to migrate user data from one Microsoft 365 tenant to another. This API provides a unified solution for moving Exchange, Teams, and SharePoint data across tenants, supporting scenarios such as mergers, acquisitions, and organizational restructuring.

## Why use the cross-tenant migration API?

Organizations often need to consolidate or reorganize Microsoft 365 environments. The cross-tenant migration API simplifies this process by allowing admins to:

- Create and manage migration jobs for user or group data.
- Validate configurations before migration.
- Monitor migration progress and troubleshoot issues.
- Cancel or delete migration jobs for compliance purposes.

## Key features

- **Create migration jobs**: Define workloads (Teams, Exchange, OneDrive and SharePoint) and resources to migrate.
- **Retrieve migration jobs**: Get details for all jobs or a specific job.
- **Update migration jobs**: Modify the `completeAfterDateTime` property.
- **Cancel migration jobs or specific users**: Stop migrations in progress.
- **Validate migration jobs**: Check configuration without performing migration.
- **Delete migration jobs**: Remove jobs and associated data for compliance.

## API status

- **Preview**: Currently available in the `/beta` endpoint.
- **Scope**: User data migration only.
- **Limitations**:
  - Job names must be unique per tenant.
  - Jobs in progress can't be deleted.
  - `completeAfterDateTime` can't be set in the past.

## Permissions

Permissions vary by operation. For List and Get operations, `CrossTenantContentMigration.Read.All` is the least privileged permission and `CrossTenantContentMigration.ReadWrite.All` is a higher privileged permission. All other operations require `CrossTenantContentMigration.ReadWrite.All`.

Delegated permissions for work or school accounts and application permissions are supported. Delegated permissions for personal Microsoft accounts aren't supported.

> [!NOTE]
> For delegated access, the signed-in user must also be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference) or a custom role that grants the permissions required for the operation. For the exact permissions and supported roles, see the **Permissions** section of each API operation.

## Related content

- [Microsoft Graph overview](/graph/overview)
- [Cross-tenant migration job resource type](crosstenantmigrationjob.md)
- [Microsoft Graph permissions reference](/graph/permissions-reference)
