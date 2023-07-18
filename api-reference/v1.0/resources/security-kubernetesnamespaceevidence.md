---
title: "kubernetesNamespaceEvidence resource type"
description: "Represents a Kubernetes namespace entity."
author: "MSRonBorysowski"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# kubernetesNamespaceEvidence resource type

Namespace: microsoft.graph.security

Represents a Kubernetes namespace entity.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|cluster|[microsoft.graph.security.kubernetesClusterEvidence](./security-kubernetesclusterevidence.md)|The namespace cluster.|
|createdDateTime|DateTimeOffset|The date and time when the evidence was created and added to the alert. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [alertEvidence](../resources/security-alertevidence.md). |
|labels|[microsoft.graph.security.dictionary](./security-dictionary.md)|The labels for the Kubernetes pod.|
|name|String|The namespace name.|
|remediationStatus|[microsoft.graph.security.evidenceRemediationStatus](../resources/security-alertevidence.md#evidenceremediationstatus-values)|Status of the remediation action taken. The possible values are: `none`, `remediated`, `prevented`, `blocked`, `notFound`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|remediationStatusDetails|String|Details about the remediation status. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|roles|[microsoft.graph.security.evidenceRole](../resources/security-alertevidence.md#evidencerole-values) collection|One or more roles that an evidence entity represents in an alert. For example, an IP address that is associated with an attacker has the evidence role `Attacker`. Possible values are: `unknown`, `contextual`, `scanned`, `source`, `destination`, `created`, `added`, `compromised`, `edited`, `attacked`, `attacker`, `commandAndControl`, `loaded`, `suspicious`, `policyViolator`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|tags|String collection|Array of custom tags associated with an evidence instance. For example, to denote a group of devices or high value assets. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|verdict|[microsoft.graph.security.evidenceVerdict](../resources/security-alertevidence.md#evidenceverdict-values)|The decision reached by automated investigation. The possible values are: `unknown`, `suspicious`, `malicious`, `noThreatsFound`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.kubernetesNamespaceEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.kubernetesNamespaceEvidence",
  "cluster": {
    "@odata.type": "microsoft.graph.security.kubernetesClusterEvidence"
  },
  "createdDateTime": "String (timestamp)",
  "labels": {
    "@odata.type": "microsoft.graph.security.dictionary"
  },
  "name": "String",
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": ["String"],
  "tags": ["String"],
  "verdict": "String"
}
```
