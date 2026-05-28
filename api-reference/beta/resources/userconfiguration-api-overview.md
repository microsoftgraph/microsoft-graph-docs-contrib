---
title: "Use the user configuration API in Microsoft Graph (preview)"
description: "Learn how to use the user configuration API in Microsoft Graph to store and retrieve per-folder configuration data in Exchange Online mailboxes."
ms.localizationpriority: high
author: "cparker-msft"
ms.subservice: "outlook"
doc_type: conceptualPageType
ms.date: 12/08/2025
---

# Use the user configuration API in Microsoft Graph (preview)

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The user configuration API in Microsoft Graph lets your application store and retrieve per-folder configuration data alongside the contents of an Exchange Online mailbox. A [userConfiguration](../resources/userconfiguration.md) object — also known as a folder associated item (FAI) — is associated with a specific [mailFolder](../resources/mailfolder.md) and identified by a key that is unique within that folder. Use these objects to store application state, settings, or other metadata that is scoped to a single folder rather than the mailbox as a whole.

The **userConfiguration** resource supports multiple payload styles so you can store the format that best fits your scenario:

- **binaryData**: arbitrary binary data.
- **xmlData**: serialized XML.
- **structuredData**: key-value pairs of supported data types, modeled by the [structuredDataEntry](../resources/structureddataentry.md) and [structuredDataEntryTypedValue](../resources/structureddataentrytypedvalue.md) complex types.

## How to use the user configuration API

The following steps describe a typical flow for working with user configuration objects in a mailbox:

1. Identify the [mailFolder](../resources/mailfolder.md) to associate the configuration object with. Use either the signed-in user (`/me/mailFolders/{mailFolderId}`) or a specific user (`/users/{usersId}/mailFolders/{mailFolderId}`).
2. [Create a userConfiguration](../api/mailsearchfolder-post-userconfigurations.md) under the target folder by posting a unique key and the payload data your app needs.
3. [Get the userConfiguration](../api/userconfiguration-get.md) when your app needs to read its stored data.
4. [Update the userConfiguration](../api/userconfiguration-update.md) to change one or more payload properties.
5. [Delete the userConfiguration](../api/userconfiguration-delete.md) when your app no longer needs it.

## Common use cases

| Use case | REST resource | See also |
|:---------|:--------------|:---------|
| Create a per-folder configuration object | [userConfiguration](../resources/userconfiguration.md) | [Create userConfiguration](../api/mailsearchfolder-post-userconfigurations.md) |
| Read a per-folder configuration object | [userConfiguration](../resources/userconfiguration.md) | [Get userConfiguration](../api/userconfiguration-get.md) |
| Update a per-folder configuration object | [userConfiguration](../resources/userconfiguration.md) | [Update userConfiguration](../api/userconfiguration-update.md) |
| Delete a per-folder configuration object | [userConfiguration](../resources/userconfiguration.md) | [Delete userConfiguration](../api/userconfiguration-delete.md) |
| Store key-value data in a configuration object | [structuredDataEntry](../resources/structureddataentry.md), [structuredDataEntryTypedValue](../resources/structureddataentrytypedvalue.md) | [userConfiguration](../resources/userconfiguration.md) |

## Next steps

Use the user configuration API in Microsoft Graph to store and retrieve per-folder configuration data in Exchange Online mailboxes. To learn more:

- Explore the [userConfiguration](../resources/userconfiguration.md) resource and its supported methods.
- Try the API in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

## Related content

[Overview of the user configuration API in Microsoft Graph (preview)](/graph/userconfiguration-concept-overview)
