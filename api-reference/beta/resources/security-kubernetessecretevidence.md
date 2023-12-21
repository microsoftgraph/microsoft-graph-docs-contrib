---
title: "kubernetesSecretEvidence resource type"
description: "Represents a Kubernetes secret entity."
author: "MSRonBorysowski"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# kubernetesSecretEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Kubernetes secret entity.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties

|Property|Type| Description                                                                                                                                                                                                                                                                                                                               |
|:---|:---|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|createdDateTime|DateTimeOffset| The date and time when the evidence was created and added to the alert. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [alertEvidence](../resources/security-alertevidence.md).              |
|name|String| The secret name.                                                                                                                                                                                                                                                                                                                          |
|namespace|[microsoft.graph.security.kubernetesNamespaceEvidence](./security-kubernetesnamespaceevidence.md)| The secret namespace.                                                                                                                                                                                                                                                                                                                     |
|remediationStatus|[microsoft.graph.security.evidenceRemediationStatus](../resources/security-alertevidence.md#evidenceremediationstatus-values)| Status of the remediation action taken. The possible values are: `none`, `remediated`, `prevented`, `blocked`, `notFound`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).                                                                                                                  |
|remediationStatusDetails|String| Details about the remediation status. Inherited from [alertEvidence](../resources/security-alertevidence.md).                                                                                                                                                                                                                             |
|roles|[microsoft.graph.security.evidenceRole](../resources/security-alertevidence.md#evidencerole-values) collection| One or more roles that an evidence entity represents in an alert. For example, an IP address that is associated with an attacker has the evidence role `Attacker`. Possible values are: `unknown`, `contextual`, `scanned`, `source`, `destination`, `created`, `added`, `compromised`, `edited`, `attacked`, `attacker`, `commandAndControl`, `loaded`, `suspicious`, `policyViolator`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).       |
|secretType|String| The secret type can include both built-in types and custom ones. Examples of built-in types are: `Opaque`, `kubernetes.io/service-account-token`, `kubernetes.io/dockercfg`, `kubernetes.io/dockerconfigjson`, `kubernetes.io/basic-auth`, `kubernetes.io/ssh-auth`, `kubernetes.io/tls`, `bootstrap.kubernetes.io/token`.|
|tags|String collection| Array of custom tags associated with an evidence instance. For example, to denote a group of devices or high value assets. Inherited from [alertEvidence](../resources/security-alertevidence.md).                                                                                                                                        |
|verdict|[microsoft.graph.security.evidenceVerdict](../resources/security-alertevidence.md#evidenceverdict-values)| The decision reached by automated investigation. The possible values are: `unknown`, `suspicious`, `malicious`, `noThreatsFound`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).                                                                                                           |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.kubernetesSecretEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.kubernetesSecretEvidence",
  "createdDateTime": "String (timestamp)",
  "name": "String",
  "namespace": {
    "@odata.type": "microsoft.graph.security.kubernetesNamespaceEvidence"
  },
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": ["String"],
  "secretType": "String",
  "tags": ["String"],
  "verdict": "String"
}
```
