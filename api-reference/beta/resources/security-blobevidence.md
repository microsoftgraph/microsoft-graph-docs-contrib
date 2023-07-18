---
title: "blobEvidence resource type"
description: "Represents a storage blob."
author: "MSRonBorysowski"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# blobEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a storage blob.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties

| Property                 | Type                                                                                                                          | Description                                                                                                                                                                                                                                                                                                                  |
|:-------------------------|:------------------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| blobContainer            | [microsoft.graph.security.blobContainerEvidence](./security-blobcontainerevidence.md)                                         | The container which the blob belongs to.                                                                                                                                                                                                                                                                                     |
| createdDateTime          | DateTimeOffset                                                                                                                | The date and time when the evidence was created and added to the alert. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [alertEvidence](../resources/security-alertevidence.md). |
| etag                     | String                                                                                                                        | The Etag associated with this blob.                                                                                                                                                                                                                                                                                          |
| fileHashes               | [microsoft.graph.security.fileHash](./security-filehash.md) collection                                                        | The file hashes associated with this blob.                                                                                                                                                                                                                                                                                   |
| name                     | String                                                                                                                        | The name of the blob.                                                                                                                                                                                                                                                                                                        |
| remediationStatus        | [microsoft.graph.security.evidenceRemediationStatus](../resources/security-alertevidence.md#evidenceremediationstatus-values) | Status of the remediation action taken. The possible values are: `none`, `remediated`, `prevented`, `blocked`, `notFound`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).                                                                                                     |
| remediationStatusDetails | String                                                                                                                        | Details about the remediation status. Inherited from [alertEvidence](../resources/security-alertevidence.md).                                                                                                                                                                                                                |
| roles                    | [microsoft.graph.security.evidenceRole](../resources/security-alertevidence.md#evidencerole-values) collection                | One or more roles that an evidence entity represents in an alert. For example, an IP address that is associated with an attacker has the evidence role `Attacker`. Possible values are: `unknown`, `contextual`, `scanned`, `source`, `destination`, `created`, `added`, `compromised`, `edited`, `attacked`, `attacker`, `commandAndControl`, `loaded`, `suspicious`, `policyViolator`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).                                                                                   |
| tags                     | String collection                                                                                                             | Array of custom tags associated with an evidence instance. For example, to denote a group of devices or high value assets. Inherited from [alertEvidence](../resources/security-alertevidence.md).                                                                                                                           |
| url                      | String                                                                                                                        | The full URL representation of the blob.                                                                                                                                                                                                                                                                                     |
| verdict                  | [microsoft.graph.security.evidenceVerdict](../resources/security-alertevidence.md#evidenceverdict-values)                     | The decision reached by automated investigation. The possible values are: `unknown`, `suspicious`, `malicious`, `noThreatsFound`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).                                                                                              |


## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.blobEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.blobEvidence",
  "blobContainer": {
    "@odata.type": "microsoft.graph.security.blobContainerEvidence"
  },
  "createdDateTime": "String (timestamp)",
  "etag": "String",
  "fileHashes": [{
    "@odata.type": "microsoft.graph.security.fileHash"
  }],
  "name": "String",
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": ["String"],
  "tags": ["String"],
  "url": "String",
  "verdict": "String"
}
```
