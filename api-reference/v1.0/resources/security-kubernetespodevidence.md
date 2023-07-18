---
title: "kubernetesPodEvidence resource type"
description: "Represents a Kubernetes pod entity."
author: "MSRonBorysowski"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# kubernetesPodEvidence resource type

Namespace: microsoft.graph.security

Represents a Kubernetes pod entity.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties

|Property|Type| Description                                                                                                                                                                                                                                                                                                                 |
|:---|:---|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|containers|[microsoft.graph.security.containerEvidence](./security-containerevidence.md) collection| The list of pod containers which are not _init_ or _ephemeral_ containers.                                                                                                                                                                                                                                                       |
|controller|[microsoft.graph.security.kubernetesControllerEvidence](./security-kubernetescontrollerevidence.md)| The pod controller.                                                                                                                                                                                                                                                                                                         |
|createdDateTime|DateTimeOffset| The date and time when the evidence was created and added to the alert. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|ephemeralContainers|[microsoft.graph.security.containerEvidence](./security-containerevidence.md) collection| The list of pod _ephemeral_ containers.                                                                                                                                                                                                                                                                                          |
|initContainers|[microsoft.graph.security.containerEvidence](./security-containerevidence.md) collection| The list of pod _init_ containers.                                                                                                                                                                                                                                                                                               |
|labels|[microsoft.graph.security.dictionary](./security-dictionary.md)| The pod labels.                                                                                                                                                                                                                                                                                                             |
|name|String| The pod name.                                                                                                                                                                                                                                                                                                               |
|namespace|[microsoft.graph.security.kubernetesNamespaceEvidence](./security-kubernetesnamespaceevidence.md)| The pod namespace.                                                                                                                                                                                                                                                                                                          |
|podIp|[microsoft.graph.security.ipEvidence](./security-ipevidence.md)| The pod IP.                                                                                                                                                                                                                                                                                                                 |
|remediationStatus|[microsoft.graph.security.evidenceRemediationStatus](../resources/security-alertevidence.md#evidenceremediationstatus-values)| Status of the remediation action taken. The possible values are: `none`, `remediated`, `prevented`, `blocked`, `notFound`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).                                                                                                    |
|remediationStatusDetails|String| Details about the remediation status. Inherited from [alertEvidence](../resources/security-alertevidence.md).                                                                                                                                                                                                               |
|roles|[microsoft.graph.security.evidenceRole](../resources/security-alertevidence.md#evidencerole-values) collection| One or more roles that an evidence entity represents in an alert. For example, an IP address that is associated with an attacker has the evidence role `Attacker`. Possible values are: `unknown`, `contextual`, `scanned`, `source`, `destination`, `created`, `added`, `compromised`, `edited`, `attacked`, `attacker`, `commandAndControl`, `loaded`, `suspicious`, `policyViolator`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).                                                                                  |
|serviceAccount|[microsoft.graph.security.kubernetesServiceAccountEvidence](./security-kubernetesserviceaccountevidence.md)| The pod service account.                                                                                                                                                                                                                                                                                                    |
|tags|String collection| Array of custom tags associated with an evidence instance. For example, to denote a group of devices or high value assets. Inherited from [alertEvidence](../resources/security-alertevidence.md).                                                                                                                          |
|verdict|[microsoft.graph.security.evidenceVerdict](../resources/security-alertevidence.md#evidenceverdict-values)| The decision reached by automated investigation. The possible values are: `unknown`, `suspicious`, `malicious`, `noThreatsFound`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).                                                                                             |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.kubernetesPodEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.kubernetesPodEvidence",
  "containers": [{
    "@odata.type": "microsoft.graph.security.containerEvidence"
  }],
  "controller": {
    "@odata.type": "microsoft.graph.security.kubernetesControllerEvidence"
  },
  "createdDateTime": "String (timestamp)",
  "ephemeralContainers": [{
    "@odata.type": "microsoft.graph.security.containerEvidence"
  }],
  "initContainers": [{
    "@odata.type": "microsoft.graph.security.containerEvidence"
  }],
  "labels": {
    "@odata.type": "microsoft.graph.security.dictionary"
  },
  "name": "String",
  "namespace": {
    "@odata.type": "microsoft.graph.security.kubernetesNamespaceEvidence"
  },
  "podIp": {
    "@odata.type": "microsoft.graph.security.ipEvidence"
  },
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": ["String"],
  "serviceAccount": {
    "@odata.type": "microsoft.graph.security.kubernetesServiceAccountEvidence"
  },
  "tags": ["String"],
  "verdict": "String"
}
```
