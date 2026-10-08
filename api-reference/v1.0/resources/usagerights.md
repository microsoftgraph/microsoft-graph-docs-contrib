---
title: "usageRights enum type"
description: "Enumerates a user's usage rights when content is protected with a sensitivity label."
author: "zhengnlu"
ms.date: 02/20/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: enumPageType
---

# usageRights enum type

Namespace: microsoft.graph

Enumerates a user's usage rights when content is protected with a sensitivity label. These rights define the actions a user is permitted to perform on labeled content. This object is a flags enum that allows multiple values to be returned. For example, `viewRightsData,editRightsData`. 

## Members

> Note: The numeric values shown here reflect the service's internal **flags enum** (bit flags / powers of two) and are included for completeness.  
> In API responses, callers typically see **a list of right names (strings)** (for example, `["view","print"]`) rather than a single combined numeric value.

| Member                                         | Description                                                                                 |
| :--------------------------------------------- | :------------------------------------------------------------------------------------------ |
| unknown                                        | Represents an unknown or undefined usage right. For example, when there's a service outage. |
| docEdit                                        | Represents the right to edit the document (Full Edit Rights).                               |
| edit                                           | Represents the right to edit the content.                                                   |
| comment                                        | Represents the right to add comments to the content.                                        |
| export                                         | Represents the right to export the content.                                                 |
| forward                                        | Represents the right to forward the content.                                                |
| owner                                          | Represents the owner right, typically implying full control.                                |
| print                                          | Represents the right to print the content.                                                  |
| reply                                          | Represents the right to reply to the content (for example, email reply).                    |
| replyAll                                       | Represents the right to reply-all to the content (for example, email reply all).            |
| view                                           | Represents the right to view or read the content.                                           |
| extract                                        | Represents the right to extract content (for example, copy/paste, summarize).               |
| viewRightsData                                 | Represents the right to view rights management data associated with the content.            |
| editRightsData                                 | Represents the right to edit rights management data associated with the content.            |
| objModel                                       | Represents the right to access the object model of the content.                             |
| accessDenied                                   | Represents an explicit denial of access.                                                    |
| userDefinedProtectionTypeNotSupportedException | Represents an exception indicating user-defined protection type is not supported.           |
| encryptedProtectionTypeNotSupportedException   | Represents an exception indicating encrypted protection type is not supported.              |
| purviewClaimsChallengeNotSupportedException    | Represents an exception indicating Purview claims challenge is not supported.               |
| exception                                      | Represents a general exception condition.                                                   |
| labelNotFoundException                         | Represents a label with no protection settings, so there are no usage rights to evaluate.   |
| unknownFutureValue                             | This value is set to allow future additions to the enum. Do not use in your app.            |

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