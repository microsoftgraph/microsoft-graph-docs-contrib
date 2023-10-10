---
title: "kubernetesClusterEvidence resource type"
description: "Represents a Kubernetes cluster."
author: "MSRonBorysowski"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# kubernetesClusterEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Kubernetes cluster.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties

|Property| Type                                                                                                                          | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|:---|:------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|cloudResource| [microsoft.graph.security.alertEvidence](./security-alertevidence.md)                                                         | The cloud identifier of the cluster. Can be either an [amazonResourceEvidence](../resources/security-amazonresourceevidence.md), [azureResourceEvidence](../resources/security-azureresourceevidence.md), or [googleCloudResourceEvidence](../resources/security-googlecloudresourceevidence.md) object.                                                                                                                                                                                                                                                                                                                                                        |
|createdDateTime| DateTimeOffset                                                                                                                | The date and time when the evidence was created and added to the alert. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [alertEvidence](../resources/security-alertevidence.md).                                                                                                                                                           |
|distribution| String                                                                                                                        | The distribution type of the cluster.                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|name| String                                                                                                                        | The cluster name.                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
|platform| [microsoft.graph.security.kubernetesPlatform](#kubernetesplatform-values)                                                     | The platform the cluster runs on. Possible values are: `unknown`, `aks`, `eks`, `gke`, `arc`, `unknownFutureValue`.                                                                                                                                                                                                                                                                                                                                                                    |
|remediationStatus| [microsoft.graph.security.evidenceRemediationStatus](../resources/security-alertevidence.md#evidenceremediationstatus-values) | Status of the remediation action taken. The possible values are: `none`, `remediated`, `prevented`, `blocked`, `notFound`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).                                                                                                                                                                                                                                                               |
|remediationStatusDetails| String                                                                                                                        | Details about the remediation status. Inherited from [alertEvidence](../resources/security-alertevidence.md).                                                                                                                                                                                                                                                                                                                                                                          |
|roles| [microsoft.graph.security.evidenceRole](../resources/security-alertevidence.md#evidencerole-values) collection                | One or more roles that an evidence entity represents in an alert. For example, an IP address that is associated with an attacker has the evidence role `Attacker`. Possible values are: `unknown`, `contextual`, `scanned`, `source`, `destination`, `created`, `added`, `compromised`, `edited`, `attacked`, `attacker`, `commandAndControl`, `loaded`, `suspicious`, `policyViolator`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md). |
|tags| String collection                                                                                                             | Array of custom tags associated with an evidence instance. For example, to denote a group of devices or high value assets. Inherited from [alertEvidence](../resources/security-alertevidence.md).                                                                                                                                                                                                                                                                                     |
|verdict| [microsoft.graph.security.evidenceVerdict](../resources/security-alertevidence.md#evidenceverdict-values)                     | The decision reached by automated investigation. The possible values are: `unknown`, `suspicious`, `malicious`, `noThreatsFound`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).                                                                                                                                                                                                                                                        |
|version| String                                                                                                                        | The kubernetes version of the cluster.                                                                                                                                                                                                                                                                                                                                                                                                                                                 |

### kubernetesPlatform values

| Member             | Description                                       |
|:-------------------| :------------------------------------------------ |
| unknown            | An unknown platform for forward compatibility.  |
| aks                | Azure Kubernetes Service.                       |
| eks                | Amazon Elastic Kubernetes Service.              |
| gke                | Google Kubernetes Engine.                       |
| arc                | Azure Arc-connected cluster.                    |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.kubernetesClusterEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.kubernetesClusterEvidence",
  "cloudResource": {
    "@odata.type": "microsoft.graph.security.alertEvidence"
  },
  "createdDateTime": "String (timestamp)",
  "distribution": "String",
  "name": "String",
  "platform": "String",
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": ["String"],
  "tags": ["String"],
  "verdict": "String",
  "version": "String"
}
```
