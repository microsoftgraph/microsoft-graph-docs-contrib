---
title: "impactedMailboxAsset resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# impactedMailboxAsset resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.security.impactedAsset](../resources/security-impactedasset.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|identifier|microsoft.graph.security.mailboxAssetIdentifier|**TODO: Add Description**.The possible values are: `accountUpn`, `fileOwnerUpn`, `initiatingProcessAccountUpn`, `lastModifyingAccountUpn`, `targetAccountUpn`, `senderFromAddress`, `senderDisplayName`, `recipientEmailAddress`, `senderMailFromAddress`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

