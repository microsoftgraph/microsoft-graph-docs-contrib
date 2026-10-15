---
title: "provenanceChainStatus resource type"
description: "Represents the integrity status of a credential's chain of trust."
author: "tilarso_microsoft"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 10/15/2026
---

# provenanceChainStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the integrity status of the chain of trust for a [credentialProvenance](../resources/credentialprovenance.md) object.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| breakDetectedAtDateTime | DateTimeOffset | The date and time when the service detected that the chain of trust was broken. |
| breakReason | [chainBreakReason](../resources/enums.md#chainbreakreason-values) | The reason the chain of trust was broken. The possible values are: `none`, `idvRevoked`, `sourceCredentialRevoked`, `unknownFutureValue`. |
| breakSource | [chainBreakSource](../resources/enums.md#chainbreaksource-values) | The source that detected or initiated the chain break. The possible values are: `none`, `identityProtection`, `adminAction`, `system`, `unknownFutureValue`. |
| state | [chainState](../resources/enums.md#chainstate-values) | The current state of the chain of trust. The possible values are: `intact`, `broken`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.provenanceChainStatus"
}-->

```json
{
  "@odata.type": "#microsoft.graph.provenanceChainStatus",
  "breakDetectedAtDateTime": "String (timestamp)",
  "breakReason": "String",
  "breakSource": "String",
  "state": "String"
}
```
