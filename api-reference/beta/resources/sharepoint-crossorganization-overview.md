---
title: "SharePoint cross-tenant migration API overview"
description: "Use the SharePoint cross-tenant migration APIs to perform identity mapping operations during tenant-to-tenant migrations."
author: "hongyangwan"
ms.date: 11/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: conceptualPageType
---

# SharePoint cross-tenant migration API overview

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The SharePoint cross-tenant migration APIs in Microsoft Graph enable organizations to perform identity mapping operations during tenant-to-tenant (cross-organization) migrations. These APIs facilitate the mapping of user and group identities between source and target organizations, ensuring seamless migration of SharePoint content and permissions.

## Common use cases

The SharePoint cross-tenant migration APIs support the following key scenarios:

| Use case | Description |
|:---------|:------------|
| Group identity mapping | Map source organization groups to target organization groups during migration |
| User identity mapping | Map source organization users to target organization users during migration |
| Bulk operations | Perform multiple identity mapping operations (create, update, delete) in a single request |
| Delta synchronization | Track changes and synchronize identity mappings incrementally |

## Key features

### Identity mapping management
- **Group mapping**: Map Microsoft 365 groups and regular Azure AD groups between organizations
- **User mapping**: Map regular users, admin users, and guest users between organizations
- **Metadata preservation**: Maintain migration-specific metadata for both groups and users

### Bulk operations support
- **Delta operations**: Use `@context: "#$delta"` for efficient bulk operations
- **Mixed operations**: Combine create, update, and delete operations in a single request
- **Removal tracking**: Use `@removed` annotation to track deleted mappings

### Migration data handling
- **Group migration data**: Handle mail nicknames and other group-specific migration information
- **User migration data**: Manage user principal names and other user-specific migration information
- **Flexible mapping**: Support partial mappings and incremental updates

## API reference

### Resources

| Resource | Description |
|:---------|:------------|
| [sharePointGroupIdentityMapping](sharepointgroupidentitymapping.md) | Represents a cross-organization identity mapping for a group |
| [sharePointUserIdentityMapping](sharepointuseridentitymapping.md) | Represents a cross-organization identity mapping for a user |
| [sharePointIdentityMapping](sharepointidentitymapping.md) | Base type for SharePoint identity mappings |
| [sharePointIdentityMappingGroupMigrationData](sharepointidentitymappinggroupmigrationdata.md) | Migration-specific data for group mappings |
| [sharePointIdentityMappingUserMigrationData](sharepointidentitymappingusermigrationdata.md) | Migration-specific data for user mappings |

### APIs

| API | Description |
|:----|:------------|
| [Get sharePointGroupIdentityMapping](../api/sharepointgroupidentitymapping-get.md) | Retrieve a specific group identity mapping |
| [Update sharePointGroupIdentityMapping](../api/sharepointgroupidentitymapping-update.md) | Perform delta operations on group identity mappings |
| [Get sharePointUserIdentityMapping](../api/sharepointuseridentitymapping-get.md) | Retrieve a specific user identity mapping |
| [Update sharePointUserIdentityMapping](../api/sharepointuseridentitymapping-update.md) | Perform delta operations on user identity mappings |

### Enumerations

| Enumeration | Description |
|:------------|:------------|
| [sharePointIdentityMappingGroupType](enums.md#sharepointidentitymappinggrouptype-values) | Defines the types of groups that can be mapped |
| [sharePointIdentityMappingUserType](enums.md#sharepointidentitymappingusertype-values) | Defines the types of users that can be mapped |

## See also

- [SharePoint migration API overview](sharepointmigration-api-overview.md)
- [Microsoft Graph permissions reference](/graph/permissions-reference)
- [Microsoft Graph API best practices](/graph/best-practices-concept)