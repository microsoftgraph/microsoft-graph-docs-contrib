---
title: "usageRights enum type"
description: "Enumerates a user's usage rights when content is protected with a sensitivity label."
author: "zhengnlu"
ms.date: 01/05/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: enumPageType
---

# usageRights enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Enumerates a user's usage rights when content is protected with a sensitivity label. These rights define the actions a user is permitted to perform on labeled content.

This is a **flags enum** (`IsFlags="true"`). Multiple rights can be combined in a single value.

## Members

> Note: Because this is a flags enum, the **Value** column represents bit flags (powers of two). A single rights set can include multiple members by combining values.

| Member | Value | Description |
| :----- | ----: | :---------- |
| unknown | 1 | Represents an unknown or undefined usage right. |
| docEdit | 2 | Represents the right to edit the document (Full Edit Rights). |
| edit | 4 | Represents the right to edit the content. |
| comment | 8 | Represents the right to add comments to the content. |
| export | 16 | Represents the right to export the content. |
| forward | 32 | Represents the right to forward the content. |
| owner | 64 | Represents the owner right, typically implying full control. |
| print | 128 | Represents the right to print the content. |
| reply | 256 | Represents the right to reply to the content (for example, email reply). |
| replyAll | 512 | Represents the right to reply-all to the content (for example, email reply all). |
| view | 1024 | Represents the right to view or read the content. |
| extract | 2048 | Represents the right to extract content (for example, copy/paste, summarize). |
| viewRightsData | 4096 | Represents the right to view rights management data associated with the content. |
| editRightsData | 8192 | Represents the right to edit rights management data associated with the content. |
| objModel | 16384 | Represents the right to access the object model of the content. |
| accessDenied | 32768 | Represents an explicit denial of access. |
| userDefinedProtectionTypeNotSupportedException | 65536 | Represents an exception indicating user-defined protection type is not supported. |
| encryptedProtectionTypeNotSupportedException | 131072 | Represents an exception indicating encrypted protection type is not supported. |
| purviewClaimsChallengeNotSupportedException | 262144 | Represents an exception indicating Purview claims challenge is not supported. |
| exception | 524288 | Represents a general exception condition. |
| labelNotFoundException | 1048576 | Represents label not found exception condition. |
| unknownFutureValue | 2097152 | Represents a sentinel value used to keep the enum evolvable for future values. |

## JSON representation

The following JSON representation shows the enum type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.usageRights"
} -->
```json
{
  "@odata.type": "#microsoft.graph.usageRights"
}
