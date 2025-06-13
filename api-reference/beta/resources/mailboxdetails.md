---
title: "mailboxDetails resource type"
description: "Represents details about a mailbox, including its unique directory identifier and associated email address."
author: "MSGraphDocsvTeam"
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: resourcePageType
---

# mailboxDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details about a [mailbox](./mailbox.md), including its unique directory identifier and associated email address.

Mailboxes are associated with bookable Places V3 objects such as [desks](./desk.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|emailAddress|String|The primary SMTP address associated with the mailbox.|
|externalDirectoryObjectId|String|The unique identifier of the mailbox in the external directory (such as Azure Active Directory).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mailboxDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mailboxDetails",
  "externalDirectoryObjectId": "String",
  "emailAddress": "String"
}
```

