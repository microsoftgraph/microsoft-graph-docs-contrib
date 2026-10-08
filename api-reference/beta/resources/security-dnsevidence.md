---
title: "dnsEvidence resource type"
description: "Represents a DNS that is reported in the alert as evidence."
author: "OfirBelenky"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/07/2026
---

# dnsEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a DNS that is reported in the alert as evidence.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties

|Property|Type|Description|
|:------------|:-------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------|
|createdDateTime|DateTimeOffset|The date and time when the evidence was created and added to the alert. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024 is `2024-01-01T00:00:00Z`. Inherited from [alertEvidence](security-alertevidence.md).|
|detailedRoles|String collection|Detailed description of the entity role or roles in an alert. Values are free-form. Inherited from [alertEvidence](security-alertevidence.md).|
|dnsServerIp|[microsoft.graph.security.ipEvidence](security-ipevidence.md)|An IP entity that represents the DNS server that resolves the request.|
|domainName|String|The name of the DNS record associated with the alert.|
|hostIpAddress|[microsoft.graph.security.ipEvidence](security-ipevidence.md)|An IP entity that represents the DNS request client.|
|ipAddresses|[microsoft.graph.security.ipEvidence](security-ipevidence.md) collection|IP entities that represent the resolved IP addresses.|
|remediationStatus|[microsoft.graph.security.evidenceRemediationStatus](security-alertevidence.md#evidenceremediationstatus-values)|Status of the remediation action taken. The possible values are: `none`, `remediated`, `prevented`, `blocked`, `notFound`, `unknownFutureValue`, `active`, `pendingApproval`, `declined`, `unremediated`, `running`, `partiallyRemediated`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `active`, `pendingApproval`, `declined`, `unremediated`, `running`, `partiallyRemediated`. Inherited from [alertEvidence](security-alertevidence.md).|
|remediationStatusDetails|String|Details about the remediation status. Inherited from [alertEvidence](security-alertevidence.md).|
|roles|[microsoft.graph.security.evidenceRole](security-alertevidence.md#evidencerole-values) collection|The role or roles that an evidence entity represents in an alert, for example, an IP address that is associated with an attacker has the evidence role **Attacker**. Inherited from [alertEvidence](security-alertevidence.md).|
|tags|String collection|Array of custom tags associated with an evidence instance, for example, to denote a group of devices and high-value assets. Inherited from [alertEvidence](security-alertevidence.md).|
|verdict|[microsoft.graph.security.evidenceVerdict](security-alertevidence.md#evidenceverdict-values)|The decision reached by automated investigation. The possible values are: `unknown`, `suspicious`, `malicious`, `noThreatsFound`, `unknownFutureValue`. Inherited from [alertEvidence](security-alertevidence.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.dnsEvidence",
  "baseType": "microsoft.graph.security.alertEvidence"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.security.dnsEvidence",
  "createdDateTime": "String (timestamp)",
  "verdict": "String",
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": [
    "String"
  ],
  "detailedRoles": [
    "String"
  ],
  "tags": [
    "String"
  ],
  "domainName": "String",
  "ipAddresses": [
    {
      "@odata.type": "microsoft.graph.security.ipEvidence"
    }
  ],
  "dnsServerIp": {
    "@odata.type": "microsoft.graph.security.ipEvidence"
  },
  "hostIpAddress": {
    "@odata.type": "microsoft.graph.security.ipEvidence"
  }
}
```
