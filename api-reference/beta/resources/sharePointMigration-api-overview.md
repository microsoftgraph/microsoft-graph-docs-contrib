---
title: "Use the SharePoint Embedded Migration API"
description: "Learn how to use the SharePoint Embedded (SPE) Migration APIs in Microsoft Graph to import content to SPE containers."
ms.localizationpriority: medium
author: "shiongzuo"
ms.subservice: "onedrive"
doc_type: conceptualPageType
ms.date: 09/27/2025
---

# Use the SharePoint Embedded Migration API

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The SharePoint Embedded Migration API enables developers to programmatically migrate large volumes of content from external sources—such as Azure Blob Storage—into SharePoint Embedded (SPE) containers. This API is designed for applications that require scalable, secure, and automated migration workflows.

## How to use the SharePoint Embedded Migration API

The migration process involves four key Graph API operations:

1. Provision SharePoint-managed Azure Blob Storage containers for temporary storage of file content and metadata.
2. Submit a migration job that copies content from the intermediary Azure Blob Storage containers into a specified SPE container.
3. Retrieve real-time status updates on the migration job, including success metrics and error logs.
4. Clean up pending migration jobs queued for execution.

## Common use cases

The Microsoft Graph API provides methods that support the common use cases for SPE migration.

| Use cases                                                                                              | REST resources                                                        |
| :----------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------- |
| [Provision Azure Blob Storage containers](../api/filestoragecontainer-provisionmigrationcontainers.md) | [fileStorageContainer](../resources/filestoragecontainer.md)          |
| [Create](../api/filestoragecontainer-post-migrationjobs.md), [delete](../api/sharepointmigrationjob-delete.md) migration jobs   | [sharePointMigrationJob](../resources/sharepointmigrationjob.md)      |
| [Retrieve migration job progress](../api/sharepointmigrationjob-list-progressevents.md)                | [sharePointMigrationEvent](../resources/sharepointmigrationevent.md)  |
