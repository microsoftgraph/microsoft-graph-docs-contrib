---
title: "usageRights enum type"
description: "Represents the specific usage rights granted by Azure Information Protection templates or sensitivity labels."
author: "ArunGedela"
ms.date: 04/21/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: enumPageType
---

# usageRights enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the specific usage rights granted by Azure Information Protection templates or sensitivity labels. These rights define what actions a user can perform on protected content.

For more information, see [Configure usage rights for Azure Information Protection](/azure/information-protection/configure-usage-rights).

## Members

| Member      | Value | Description                                                                                   | Common roles mapping |
| :---------- | :---- | :-------------------------------------------------------------------------------------------- | :------------------- |
| VIEW        | 0     | Allows the user to open and read the protected content. Required for almost all other rights. | All                  |
| EDIT        | 1     | Allows the user to modify the content.                                          | Reviewer, Co-Author, Co-Owner, Owner |
| DOCEDIT     | 2     | Allows the user to modify the content (often synonymous with EDIT).              | Reviewer, Co-Author, Co-Owner, Owner |
| PRINT       | 3     | Allows the user to print the content.                                            | Reviewer, Co-Author, Co-Owner, Owner |
| EXTRACT     | 4     | Allows the user to copy content from the protected document.                     | Co-Author, Co-Owner, Owner |
| EXPORT      | 5     | Allows the user to save the content in an unprotected format or remove protection.  | Co-Owner, Owner    |
| FORWARD     | 6     | Allows the user to forward protected email.                       | Co-Author, Co-Owner, Owner |
| REPLY       | 7     | Allows the user to reply to protected email.                                                  | Reviewer, Co-Author, Co-Owner, Owner |
| REPLYALL    | 8     | Allows the user to reply-all to protected email.                                | Reviewer, Co-Author, Co-Owner, Owner |
| COMMENT     | 9     | Allows the user to add comments to the content (specific to certain applications).            | Reviewer, Co-Author, Co-Owner, Owner |
| VIEWRIGHTSDATA | 10   | Allows the user to view the permissions applied to the content.                  | All                  |
| EDITRIGHTSDATA | 11   | Allows the user to change the permissions applied to the content.    | Co-Owner, Owner    |
| OWNER       | 12    | Grants the user all rights, including the ability to change permissions.                      | Owner                |
| OBJMODEL    | 13    | Allows programmatic access to the content (for example, via application add-ins).       | All                  |
| UNKNOWN     | 14    | An unknown or unsupported right.                                                              | N/A                  |
| ACCESSDENIED| 15    | Indicates the user was explicitly denied access (typically returned as an error, not a right).| N/A                  |
| EXCEPTION   | 16    | Indicates an error occurred while retrieving rights.                                          | N/A                  |
| USERDEFINEDPROTECTIONTYPENOTSUPPORTEDEXCEPTION | 17 | Error: Rights check failed because the label uses user-defined permissions (UDP). | N/A                  |
| ENCRYPTEDPROTECTIONTYPENOTSUPPORTEDEXCEPTION   | 18 | Error: Rights check failed because the label uses unsupported encryption (for example, DKE). | N/A                  |
| PURVIEWCLAIMSCHALLENGENOTSUPPORTEDEXCEPTION    | 19 | Error: Rights check requires Conditional Access claims challenge, not supported by the caller. | N/A                  |

**Note:** The numeric values are provided for reference but applications should rely on the string representation of the enum members. Exception values (`ACCESSDENIED`, `EXCEPTION`, etc.) are typically returned in error scenarios, not as part of a successful rights collection.

## JSON representation

The following JSON representation shows the enum type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.usageRight"
} -->
```json
{
  "@odata.type": "#microsoft.graph.usageRight"
}
```
