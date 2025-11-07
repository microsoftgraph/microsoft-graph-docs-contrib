---
title: Cross-tenant migration API overview
description: Learn about the Microsoft Graph cross-tenant migration API, which enables tenant administrators to migrate user content across Microsoft 365 tenants.
author: danipocket
ms.author: danielabo
ms.date: 11/04/2025
ms.topic: overview
ms.prod: microsoft-graph
ms.localizationpriority: high
---

# Cross-tenant migration API overview

The cross-tenant migration API in Microsoft Graph enables tenant administrators to migrate user content from one Microsoft 365 tenant to another. This API provides a unified solution for moving Exchange, Teams, and SharePoint data across tenants, supporting scenarios such as mergers, acquisitions, and organizational restructuring.

## Why use the cross-tenant migration API?

Organizations often need to consolidate or reorganize Microsoft 365 environments. The cross-tenant migration API simplifies this process by allowing admins to:

- Create and manage migration jobs for user or group content.
- Validate configurations before migration.
- Monitor migration progress and troubleshoot issues.
- Cancel or delete migration jobs for compliance purposes.

## Key features

- **Create migration jobs**: Define workloads (Teams, Exchange, ODSP) and resources to migrate.
- **Retrieve migration jobs**: Get details for all jobs or a specific job.
- **Update migration jobs**: Modify the `completeAfterDateTime` property.
- **Cancel migration jobs or specific users**: Stop migrations in progress.
- **Validate migration jobs**: Check configuration without performing migration.
- **Delete migration jobs**: Remove jobs and associated data for compliance.

## API status

- **Preview**: Currently available in the `/beta` endpoint.
- **Scope**: User content migration only.
- **Limitations**:
  - Job names must be unique per tenant.
  - Jobs in progress cannot be deleted.
  - `completeAfterDateTime` cannot be set in the past.

## Permissions

To use this API, the calling app must have appropriate Microsoft Graph permissions. Typically, **Tenant administrator** privileges are required.

## Related content

- [Microsoft Graph overview](https://learn.microsoft.com/graph/overview)
- [Cross-tenant content migration in Microsoft 365](https://learn.microsoft.com/microsoft-365/enterprise/cross-tenant-content-migration)
- [Cross-tenant migration job resource type](https://learn.microsoft.com/graph/api/resources/crosstenantmigrationjob)
- [Microsoft Graph permissions reference](https://learn.microsoft.com/graph/permissions-reference)
