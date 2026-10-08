---
title: "sasTokenEvidence resource type"
description: "Represents a Shared Access Signature (SAS) token entity for a storage container."
author: "Lirlev48"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/07/2026
toc.title: "SAS token evidence"
---

# sasTokenEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Shared Access Signature (SAS) token entity for a storage container.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties

|Property|Type|Description|
|:-------|:---|:----------|
|allowedIpAddresses|String|All IP addresses that are accessible with this SAS. The default value is `Allows all IP addresses`.|
|allowedResourceTypes|String collection|All of the resource types accessible with this SAS.|
|allowedServices|String collection|All of the services that are accessible with this SAS.|
|createdDateTime|DateTimeOffset|The date and time when the evidence was created and added to the alert. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024 is `2024-01-01T00:00:00Z`. Inherited from [alertEvidence](security-alertevidence.md).|
|detailedRoles|String collection|Detailed description of the entity role or roles in an alert. Values are free-form. Inherited from [alertEvidence](security-alertevidence.md).|
|expiryDateTime|DateTimeOffset|The SAS expiration time. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024 is `2024-01-01T00:00:00Z`.|
|permissions|String collection|All of the permissions granted to this SAS.|
|protocol|String|The protocol that is allowed for the SAS.|
|remediationStatus|[microsoft.graph.security.evidenceRemediationStatus](security-alertevidence.md#evidenceremediationstatus-values)|Status of the remediation action taken. The possible values are: `none`, `remediated`, `prevented`, `blocked`, `notFound`, `unknownFutureValue`, `active`, `pendingApproval`, `declined`, `unremediated`, `running`, `partiallyRemediated`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `active`, `pendingApproval`, `declined`, `unremediated`, `running`, `partiallyRemediated`. Inherited from [alertEvidence](security-alertevidence.md).|
|remediationStatusDetails|String|Details about the remediation status. Inherited from [alertEvidence](security-alertevidence.md).|
|roles|[microsoft.graph.security.evidenceRole](security-alertevidence.md#evidencerole-values) collection|The role or roles that an evidence entity represents in an alert, for example, an IP address that is associated with an attacker has the evidence role **Attacker**. Inherited from [alertEvidence](security-alertevidence.md).|
|signatureHash|String|The SAS signature hash, which is the unique identifier for the SAS.|
|signedWith|String|The storage key used to generate the SAS.|
|startDateTime|DateTimeOffset|The SAS activation time. This property can be `null`. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024 is `2024-01-01T00:00:00Z`.|
|storageResource|[microsoft.graph.security.azureResourceEvidence](security-azureresourceevidence.md)|A link to the storage resource for this SAS.|
|tags|String collection|Array of custom tags associated with an evidence instance, for example, to denote a group of devices and high-value assets. Inherited from [alertEvidence](security-alertevidence.md).|
|verdict|[microsoft.graph.security.evidenceVerdict](security-alertevidence.md#evidenceverdict-values)|The decision reached by automated investigation. The possible values are: `unknown`, `suspicious`, `malicious`, `noThreatsFound`, `unknownFutureValue`. Inherited from [alertEvidence](security-alertevidence.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.sasTokenEvidence",
  "baseType": "microsoft.graph.security.alertEvidence"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.security.sasTokenEvidence",
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
  "signatureHash": "String",
  "allowedServices": [
    "String"
  ],
  "allowedResourceTypes": [
    "String"
  ],
  "permissions": [
    "String"
  ],
  "startDateTime": "String (timestamp)",
  "expiryDateTime": "String (timestamp)",
  "allowedIpAddresses": "String",
  "signedWith": "String",
  "protocol": "String",
  "storageResource": {
    "@odata.type": "microsoft.graph.security.azureResourceEvidence"
  }
}
```
