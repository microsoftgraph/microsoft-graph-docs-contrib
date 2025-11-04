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

The SharePoint cross-tenant migration APIs enable organizations to manage identity mappings during tenant-to-tenant migrations. These APIs map user and group identities between source and target organizations.

## API reference

### Resources

| Resource | Description |
|:---------|:------------|
| [sharePointGroupIdentityMapping](sharepointgroupidentitymapping.md) | Represents a cross-organization identity mapping for a group |
| [sharePointUserIdentityMapping](sharepointuseridentitymapping.md) | Represents a cross-organization identity mapping for a user |

### APIs

| API | Description |
|:----|:------------|
| [Get sharePointGroupIdentityMapping](../api/sharepointgroupidentitymapping-get.md) | Retrieve a specific group identity mapping |
| [Update sharePointGroupIdentityMapping](../api/sharepointgroupidentitymapping-update.md) | Perform delta operations on group identity mappings |
| [Get sharePointUserIdentityMapping](../api/sharepointuseridentitymapping-get.md) | Retrieve a specific user identity mapping |
| [Update sharePointUserIdentityMapping](../api/sharepointuseridentitymapping-update.md) | Perform delta operations on user identity mappings |