---
title: "credentialProvenance resource type"
description: "Represents the provenance and trust classification of an authentication method."
author: "tilarso"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 10/15/2026
---

# credentialProvenance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the provenance and trust classification of an authentication method.

Credential provenance is recorded during credential registration and supports administrative attestation. The service computes the trust classification and records the actor that established the provenance.

To apply an administrative attestation, call the `attestProvenance` action on the authentication method with an **attestationReason** and **verificationEventId**. The action supports delegated and application callers with the `CredentialProvenance.ReadWrite.All` permission and returns the updated **credentialProvenance** object. Classification, actor information, and timestamps are managed by the service.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| assertedBy | [provenanceAssertedBy](../resources/provenanceassertedby.md) | Identifies the actor that established the provenance. This property is computed by the service. |
| assertions | [provenanceAssertion](../resources/provenanceassertion.md) collection | The assertions that support the credential's provenance classification. |
| chainStatus | [provenanceChainStatus](../resources/provenancechainstatus.md) | The current integrity status of the credential's chain of trust. |
| classification | [provenanceClassification](../resources/enums.md#provenanceclassification-values) | The service-computed trust classification. The possible values are: `highAssurance`, `mediumAssurance`, `lowAssurance`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.credentialProvenance"
}-->

```json
{
  "@odata.type": "#microsoft.graph.credentialProvenance",
  "assertedBy": {
    "@odata.type": "microsoft.graph.provenanceAssertedBy"
  },
  "assertions": [
    {
      "@odata.type": "microsoft.graph.provenanceAssertion"
    }
  ],
  "chainStatus": {
    "@odata.type": "microsoft.graph.provenanceChainStatus"
  },
  "classification": "String"
}
```
