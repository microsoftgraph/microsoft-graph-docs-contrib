---
title: "Use the SharePoint cross-tenant migration API (preview)"
description: "Learn how to use the SharePoint cross-tenant migration APIs in Microsoft Graph to perform identity mapping operations during tenant-to-tenant migrations."
author: "hongyangwan"
ms.date: 11/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: conceptualPageType
---

# Use the SharePoint cross-tenant migration API (preview)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The SharePoint cross-tenant migration APIs enable organizations to manage identity mappings during tenant-to-tenant migrations. These APIs map user and group identities between source and target organizations.

## Common use cases

The Microsoft Graph API provides methods that support the common use cases for SharePoint cross-tenant migration.

| Use cases | REST resources |
| :--- | :--- |
|Retrieve a specific group identity mapping and perform delta operations on group identity mappings|[sharePointGroupIdentityMapping](sharepointgroupidentitymapping.md)|
|Retrieve a specific user identity mapping and perform delta operations on user identity mappings|[sharePointUserIdentityMapping](sharepointuseridentitymapping.md)|

## Next steps

Use the Microsoft Graph API to manage identity mappings during tenant-to-tenant migrations. To learn more:

- Explore the resources and methods that are most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
