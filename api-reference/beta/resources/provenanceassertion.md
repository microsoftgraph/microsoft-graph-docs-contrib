---
title: "provenanceAssertion resource type"
description: "Represents an assertion that contributes to an authentication method's credential provenance."
author: "tilarso"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 10/15/2026
---

# provenanceAssertion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an assertion that contributes to an authentication method's [credentialProvenance](../resources/credentialprovenance.md) classification.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| attestationReason | String | The reason supplied for a manual attestation. |
| eventDateTime | DateTimeOffset | The date and time of the provenance event represented by this assertion. |
| provenanceType | [provenanceAssertionType](../resources/enums.md#provenanceassertiontype-values) | The type of provenance assertion. The possible values are: `identityVerification`, `derivedFromCredential`, `manualAttestation`, `unknownFutureValue`. |
| sourceCredentialId | String | The identifier of the credential from which this credential was derived. |
| sourceCredentialType | String | The type of credential from which this credential was derived. |
| verificationEventId | String | The identifier of the [identityVerificationEvent](../resources/identityverificationevent.md) that supports this assertion. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.provenanceAssertion"
}-->

```json
{
  "@odata.type": "#microsoft.graph.provenanceAssertion",
  "attestationReason": "String",
  "eventDateTime": "String (timestamp)",
  "provenanceType": "String",
  "sourceCredentialId": "String",
  "sourceCredentialType": "String",
  "verificationEventId": "String"
}
```
