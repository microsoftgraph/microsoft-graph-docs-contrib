---
title: "Use the SharePoint Embedded migration API (preview)"
description: "Learn how to use the SharePoint Embedded migration APIs in Microsoft Graph to import content to SharePoint Embedded containers."
ms.localizationpriority: medium
author: "shiongzuo"
ms.subservice: "onedrive"
doc_type: conceptualPageType
ms.date: 09/27/2025
---

# Use the SharePoint Embedded migration API (preview)

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The SharePoint Embedded migration API enables developers to programmatically migrate large volumes of content from external sources (for example, Azure blob storage) into SharePoint Embedded containers. This API is designed for applications that require scalable, secure, and automated migration workflows.

## How to use the SharePoint Embedded migration API

The migration process involves four key steps using the following operations:

1. Provision SharePoint-managed Azure blob storage containers for temporary storage of file content and metadata.
2. Submit a migration job that copies content from the intermediary Azure blob storage containers into a specified SharePoint Embedded container.
3. Retrieve real-time status updates on the migration job, including success metrics and error logs.
4. Clean up pending migration jobs queued for processing.

## Common use cases

The Microsoft Graph API provides methods that support the common use cases for SharePoint Embedded migration.

| Use cases | REST resources |
| :--- | :--- |
| [Provision Azure blob storage containers](../api/filestoragecontainer-provisionmigrationcontainers.md) | [fileStorageContainer](../resources/filestoragecontainer.md) |
| [Create](../api/filestoragecontainer-post-migrationjobs.md) and [delete](../api/sharepointmigrationjob-delete.md) migration jobs   | [sharePointMigrationJob](../resources/sharepointmigrationjob.md) |
| [Retrieve migration job progress](../api/sharepointmigrationjob-list-progressevents.md) | [sharePointMigrationEvent](../resources/sharepointmigrationevent.md) |

## Next steps

Use the Microsoft Graph API to migrate content into SharePoint Embedded containers. To learn more:

- Explore the resources and methods that are most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
