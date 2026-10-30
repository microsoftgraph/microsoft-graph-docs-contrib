---
title: Cross-tenant migration API overview
description: Learn about the Microsoft Graph cross-tenant migration API, which enables tenant administrators to migrate user data across Microsoft 365 tenants.
author: "rebeccawwood"
ms.author: "rewood"
ms.date: 09/24/2026
ms.topic: overview
ms.subservice: t2t-migration
ms.localizationpriority: high
doc_type: conceptualPageType
---

# Cross-tenant migration API overview

The cross-tenant migration API in Microsoft Graph enables tenant administrators to migrate user data from one Microsoft 365 tenant to another. This API provides a unified solution for moving Exchange, Teams, and SharePoint data across tenants, supporting scenarios such as mergers, acquisitions, and organizational restructuring.

## Why use the cross-tenant migration API?

Organizations often need to consolidate or reorganize Microsoft 365 environments. The cross-tenant migration API simplifies this process by allowing admins to:

- Create and manage migration jobs for user data.
- Validate configurations before migration.
- Monitor migration progress and troubleshoot issues.
- Cancel or delete migration jobs for compliance purposes.

## Key features

- **Create migration jobs**: Define workloads (Teams, Exchange, OneDrive, and SharePoint) and resources to migrate.
- **Retrieve migration jobs**: Get details for all jobs or a specific job.
- **Update migration jobs**: Modify the **completeAfterDateTime** property.
- **Cancel migration jobs or specific users**: Stop migrations in progress.
- **Validate migration jobs**: Check configuration without performing migration.
- **Delete migration jobs**: Remove jobs and associated data for compliance.

## API status

- **Availability**: Available in the `/v1.0` and `/beta` endpoints.
- **Scope**: User data migration only.
- **Limitations**:
  - Job names must be unique per tenant.
  - Jobs in progress can't be deleted.

## Permissions

Cross-tenant migration APIs require Microsoft Graph delegated or application permissions. Permissions vary by operation. For the least-privileged permissions and supported permission types for each operation, see the **Permissions** section of the corresponding API operation.

> [!NOTE]
> For delegated access, the signed-in user must also be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference) or a custom role that grants the permissions required for the operation. For the exact permissions and supported roles, see the **Permissions** section of each API operation.

## Related content

- [Microsoft Graph overview](/graph/overview)
- [Cross-tenant migration job resource type](crosstenantmigrationjob.md)
- [Microsoft Graph permissions reference](/graph/permissions-reference)
