---
title: "impactedMailboxAsset resource type"
description: "Represents a mailbox that was identified in an alert triggered by a custom detection rule."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# impactedMailboxAsset resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a mailbox that was identified in an alert triggered by a [custom detection rule](../resources/security-detectionrule.md).

Inherits from [microsoft.graph.security.impactedAsset](../resources/security-impactedasset.md).

## Properties
| Property   | Type                                                                                                            | Description                                                                                                                                                                                                                                                                                              |
|:-----------|:----------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| identifier | [microsoft.graph.security.mailboxAssetIdentifier](../resources/enums-security.md#mailboxassetidentifier-values) | Unique identifier for the impacted mailbox asset. The possible values are: `accountUpn`, `fileOwnerUpn`, `initiatingProcessAccountUpn`, `lastModifyingAccountUpn`, `targetAccountUpn`, `senderFromAddress`, `senderDisplayName`, `recipientEmailAddress`, `senderMailFromAddress`, `unknownFutureValue`. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.impactedMailboxAsset"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.impactedMailboxAsset",
  "identifier": "String"
}
```

