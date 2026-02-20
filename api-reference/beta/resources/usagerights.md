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

Enumerates a user's usage rights when content is protected with a sensitivity label. These rights define the actions a user is permitted to perform on labeled content. This object is a flags enum that allows multiple values to be returned. For example, `viewRightsData,editRightsData`. 

## Members

> Note: The numeric values shown here reflect the service's internal **flags enum** (bit flags / powers of two) and are included for completeness.  
> In API responses, callers typically see **a list of right names (strings)** (for example, `["view","print"]`) rather than a single combined numeric value.

| Member | Value | Description |
| :----- | ----: | :---------- |
| unknown | 1 | Represents an unknown or undefined usage right. For example, when there's a service outage. |
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
| labelNotFoundException | 1048576 | Represents a label with no protection settings, so there are no usage rights to evaluate. |
| unknownFutureValue | 2097152 | The action was set, to keep the enum evolvable, for future values in API response. |

### Note
This enum is defined as a bitmask (flags): each value represents a single usage right and is assigned a power-of-two value (1, 2, 4, 8, …). RMS may return a single integer that combines multiple rights by OR’ing these values together.

However, in our PICS Tier 2 Get Label Rights API, we do not return the combined bitmask integer. Instead, we return the expanded list of individual rights. The numeric values below are provided for reference/debugging only (to help interpret RMS responses or logs).

```
// Each enum value represents a single permission (flags)
UsageRights.Unknown = 1;   // 0001
UsageRights.DocEdit = 2;   // 0010
UsageRights.View    = 4;   // 0100

// RMS-style: combine multiple rights using bitwise OR (|)
UsageRights rights = UsageRights.Unknown | UsageRights.DocEdit;

// Check whether a specific right is included using bitwise AND (&)
bool canEdit = (rights & UsageRights.DocEdit) == UsageRights.DocEdit;
bool canView = (rights & UsageRights.View) == UsageRights.View;
```

In the example above, Unknown | DocEdit produces a single value that contains both permissions. Bitwise AND (&) is used to test whether a particular right is present in the combined value.
```
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
```