---
title: "kubernetesServiceEvidence resource type"
description: "Represents a Kubernetes service entity."
author: "MSRonBorysowski"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# kubernetesServiceEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents Kubernetes service entity.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|clusterIP|[microsoft.graph.security.ipEvidence](./security-ipevidence.md)|The service cluster IP.|
|createdDateTime|DateTimeOffset|The date and time when the evidence was created and added to the alert. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [alertEvidence](../resources/security-alertevidence.md). |
|externalIPs|[microsoft.graph.security.ipEvidence](./security-ipevidence.md) collection|The service external IPs.|
|labels|[microsoft.graph.security.dictionary](./security-dictionary.md)|The service labels.|
|name|String|The service name.|
|namespace|[microsoft.graph.security.kubernetesNamespaceEvidence](./security-kubernetesnamespaceevidence.md)|The service namespace.|
|remediationStatus|[microsoft.graph.security.evidenceRemediationStatus](../resources/security-alertevidence.md#evidenceremediationstatus-values)|Status of the remediation action taken. The possible values are: `none`, `remediated`, `prevented`, `blocked`, `notFound`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|remediationStatusDetails|String|Details about the remediation status. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|roles|[microsoft.graph.security.evidenceRole](../resources/security-alertevidence.md#evidencerole-values) collection|One or more roles that an evidence entity represents in an alert. For example, an IP address that is associated with an attacker has the evidence role `Attacker`. Possible values are: `unknown`, `contextual`, `scanned`, `source`, `destination`, `created`, `added`, `compromised`, `edited`, `attacked`, `attacker`, `commandAndControl`, `loaded`, `suspicious`, `policyViolator`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|selector|[microsoft.graph.security.dictionary](./security-dictionary.md)|The service selector.|
|servicePorts|[microsoft.graph.security.kubernetesServicePort](./security-kubernetesserviceport.md) collection|The list of service ports.|
|serviceType|[microsoft.graph.security.kubernetesServiceType](#kubernetesservicetype-values)|The service type.|
|tags|String collection|Array of custom tags associated with an evidence instance. For example, to denote a group of devices or high value assets. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|verdict|[microsoft.graph.security.evidenceVerdict](../resources/security-alertevidence.md#evidenceverdict-values)|The decision reached by automated investigation. The possible values are: `unknown`, `suspicious`, `malicious`, `noThreatsFound`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).|

### kubernetesServiceType values 

| Member                     | Description                                      |
| :--------------------------| :------------------------------------------------|
| unknown                    | An unknown service type for forward compatibily. |
| clusterIP                  | Cluster IP type of the service.                  |
| externalName               | External name type of the service.               |
| nodePort                   | Node port type of the service.                   |
| loadBalancer               | Load balancer type of the service.               |
| unknownFutureValue         | Evolvable enumeration sentinel value. Do not use.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.kubernetesServiceEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.kubernetesServiceEvidence",
  "clusterIP": {
    "@odata.type": "microsoft.graph.security.ipEvidence"
  },
  "createdDateTime": "String (timestamp)",
  "externalIPs": [{
    "@odata.type": "microsoft.graph.security.ipEvidence"
  }],
  "labels": {
    "@odata.type": "microsoft.graph.security.dictionary"
  },
  "name": "String",
  "namespace": {
    "@odata.type": "microsoft.graph.security.kubernetesNamespaceEvidence"
  },
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": ["String"],
  "selector": {
    "@odata.type": "microsoft.graph.security.dictionary"
  },
  "servicePorts": [{
    "@odata.type": "microsoft.graph.security.kubernetesServicePort"
  }],
  "serviceType": "String",
  "tags": ["String"],
  "verdict": "String"
}
```
