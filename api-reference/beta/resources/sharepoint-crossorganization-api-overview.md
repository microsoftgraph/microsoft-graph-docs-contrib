---
title: "Use the SharePoint cross-tenant migration API (preview)"
description: "Learn how to use the SharePoint cross-tenant migration APIs in Microsoft Graph to perform identity mapping operations during tenant-to-tenant migrations."
author: "Joey-King"
ms.date: 11/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: conceptualPageType
---

# Use the SharePoint cross-tenant migration API (preview)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The SharePoint cross-tenant migration APIs enable organizations to manage the tasks and identity mappings during tenant-to-tenant migrations. These APIs are used to migrate a specific source resource in a source organization to a target organization.

## How to use the SharePoint migration task API

The migration process involves four key steps using the following operations:

1. The SharePoint cross-tenant migration APIs enable organizations to manage identity mappings during tenant-to-tenant migrations. These APIs map user and group identities between source and target organizations
2. Create a sharePointMigrationTask to migrate a resource from the source organization to the target organization
3. Gets the sharePointMigrationTask that was previously created, given the task's ID, sourceUserPrincipalName, sourceSiteUrl, or sourceGroupObjectId
4. Cancel the migration task queued for processing

## Common use cases

The Microsoft Graph API provides methods that support the common use cases for SharePoint cross-tenant migration.

| Use cases | REST resources |
| :--- | :--- |
|Migrate a specific **user** in a source tenant to a target tenant|[sharePointUserMigrationTaskParameters](sharepointusermigrationtaskparameters.md)|
|Migrate a specific **regular site** in a source tenant to a target tenant|[sharePointSiteMigrationTaskParameters](sharepointsitemigrationtaskparameters.md)|
|Migrate a specific **group-connected site** in a source tenant to a target tenant|[sharePointGroupMigrationTaskParameters](sharepointgroupmigrationtaskparameters.md)|
|Retrieve a specific group identity mapping and perform delta operations on group identity mappings|[sharePointGroupIdentityMapping](sharepointgroupidentitymapping.md)|
|Retrieve a specific user identity mapping and perform delta operations on user identity mappings|[sharePointUserIdentityMapping](sharepointuseridentitymapping.md)|

## Next steps

Use the Microsoft Graph API to manage the tasks and identity mappings during tenant-to-tenant migrations. To learn more:

- Explore the resources and methods that are most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
