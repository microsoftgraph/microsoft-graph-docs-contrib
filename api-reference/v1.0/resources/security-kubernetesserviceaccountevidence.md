---
title: "kubernetesServiceAccountEvidence resource type"
description: "Represents a Kubernetes service account entity."
author: "MSRonBorysowski"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# kubernetesServiceAccountEvidence resource type

Namespace: microsoft.graph.security

Represents a Kubernetes service account entity.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the evidence was created and added to the alert. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [alertEvidence](../resources/security-alertevidence.md). |
|name|String|The service account name.|
|namespace|[microsoft.graph.security.kubernetesNamespaceEvidence](./security-kubernetesnamespaceevidence.md)|The service account namespace.|
|remediationStatus|[microsoft.graph.security.evidenceRemediationStatus](../resources/security-alertevidence.md#evidenceremediationstatus-values)|Status of the remediation action taken. The possible values are: `none`, `remediated`, `prevented`, `blocked`, `notFound`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|remediationStatusDetails|String|Details about the remediation status. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|roles|[microsoft.graph.security.evidenceRole](../resources/security-alertevidence.md#evidencerole-values) collection|One or more roles that an evidence entity represents in an alert. For example, an IP address that is associated with an attacker has the evidence role `Attacker`. Possible values are: `unknown`, `contextual`, `scanned`, `source`, `destination`, `created`, `added`, `compromised`, `edited`, `attacked`, `attacker`, `commandAndControl`, `loaded`, `suspicious`, `policyViolator`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|tags|String collection|Array of custom tags associated with an evidence instance. For example, to denote a group of devices or high value assets. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|verdict|[microsoft.graph.security.evidenceVerdict](../resources/security-alertevidence.md#evidenceverdict-values)|The decision reached by automated investigation. The possible values are: `unknown`, `suspicious`, `malicious`, `noThreatsFound`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.kubernetesServiceAccountEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.kubernetesServiceAccountEvidence",
  "createdDateTime": "String (timestamp)",
  "name": "String",
  "namespace": {
    "@odata.type": "microsoft.graph.security.kubernetesNamespaceEvidence"
  },
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": ["String"],
  "tags": ["String"],
  "verdict": "String"
}
```
