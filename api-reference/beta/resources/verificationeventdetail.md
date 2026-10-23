---
title: "verificationEventDetail resource type"
description: "Represents the verification facts recorded for an identity verification event."
author: "tilarso"
ms.date: 10/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# verificationEventDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the verification facts recorded for an [identityVerificationEvent](../resources/identityverificationevent.md), including the provider, credential identifiers, and timestamps.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|expiresDateTime|DateTimeOffset|The date and time when this verification expires, in ISO 8601 format. Must be after **verifiedDateTime**. Compare this value with the current time to determine expiry. Immutable.|
|externalCredentialId|String|The unique credential reference in URN format, such as `urn:pic:73b78a00-5b9e-4f8c-85dd-b60a08dc1123`. Used for deduplication so repeated presentation of the same credential produces one event. Maximum 256 characters. Immutable.|
|issuedDateTime|DateTimeOffset|The date and time when the provider issued the underlying credential, in ISO 8601 format. Must not be in the future. Distinct from **verifiedDateTime**. Optional. Immutable.|
|source|String|The verification provider or attestation authority, such as `Contoso Identity Services`. May be `null` when **state** is `issued`. Maximum 200 characters. Immutable.|
|state|[verificationState](../resources/enums.md#verificationstate-values)|The verification state of the event. The possible values are: `unverified`, `verified`, `revoked`, `suspended`, `issued`, `blocked`, `unknownFutureValue`. The service accepts only `issued` and `verified` on writes. The only caller-driven state transition is from `issued` to `verified`; other transitions are rejected. This property can't be updated through PATCH.|
|verifiedDateTime|DateTimeOffset|The date and time when identity verification was performed, in ISO 8601 format. Must not be in the future. May be `null` when **state** is `issued`. Immutable.|
|verifiedIdProfileId|String|The identifier of the verified identity profile in the provider's system, in UUID format. Immutable.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.verificationEventDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.verificationEventDetail",
  "state": "String",
  "verifiedIdProfileId": "String",
  "externalCredentialId": "String",
  "source": "String",
  "issuedDateTime": "String (timestamp)",
  "verifiedDateTime": "String (timestamp)",
  "expiresDateTime": "String (timestamp)"
}
```
