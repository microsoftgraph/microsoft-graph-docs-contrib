---
title: "containerEvidence resource type"
description: "Represents a container that runs within a Kubernetes pod context or on Docker."
author: "MSRonBorysowski"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# containerEvidence resource type

Namespace: microsoft.graph.security

Represents a container that runs within a Kubernetes pod context or on Docker.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|args|String collection|The list of arguments.|
|command|String collection|The list of commands.|
|containerId|String|The container ID.|
|createdDateTime|DateTimeOffset|The date and time when the evidence was created and added to the alert. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [alertEvidence](../resources/security-alertevidence.md). |
|image|[microsoft.graph.security.containerImageEvidence](./security-containerimageevidence.md)|The image used to run the container.|
|isPrivileged|Boolean|The privileged status.|
|name|String|The container name.|
|pod|[microsoft.graph.security.kubernetesPodEvidence](./security-kubernetespodevidence.md)|The pod this container belongs to.|
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
  "@odata.type": "microsoft.graph.security.containerEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.containerEvidence",
  "args": ["String"],
  "command": ["String"],
  "containerId": "String",
  "createdDateTime": "String (timestamp)",
  "image": {
    "@odata.type": "microsoft.graph.security.containerImageEvidence"
  },
  "isPrivileged": "Boolean",
  "name": "String",
  "pod": {
    "@odata.type": "microsoft.graph.security.kubernetesPodEvidence"
  },
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": ["String"],
  "tags": ["String"],
  "verdict": "String"
}
```
