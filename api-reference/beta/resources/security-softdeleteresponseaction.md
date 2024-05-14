---
title: "softDeleteResponseAction resource type"
description: "Describes the soft delete response action, which moves the email message to a Deleted folder in the cloud but doesn't delete the email message permanently."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# softDeleteResponseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the soft delete response action, which moves the email message to a Deleted folder in the cloud but doesn't delete the email message permanently. Only administrators can perform this response action.

Inherits from [microsoft.graph.security.responseAction](../resources/security-responseaction.md).

## Properties
| Property   | Type                                                                                                          | Description                                                                                                                                                                                   |
|:-----------|:--------------------------------------------------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| identifier | [microsoft.graph.security.emailEntityIdentifier](../resources/enums-security.md#emailentityidentifier-values) | Unique identifier for the response action. Default is `networkMessageId`,`recipientEmailAddress`. The possible values are: `networkMessageId`, `recipientEmailAddress`, `unknownFutureValue`. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.softDeleteResponseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.softDeleteResponseAction",
  "identifier": "String"
}
```

