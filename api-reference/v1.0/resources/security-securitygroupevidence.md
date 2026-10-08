---
title: "securityGroupEvidence resource type"
description: "Represents a Microsoft Entra security group that is reported in an alert as evidence."
ms.date: 11/11/2022
author: "BenAlfasi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# securityGroupEvidence resource type

Namespace: microsoft.graph.security

Represents a Microsoft Entra security group that is reported in an [alert](../resources/security-alert.md) as evidence.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
| Property                  | Type   | Description															     |
|:--------------------------|:-------|:--------------------------------------------------------------------------|
| activeDirectoryObjectGuid | Guid   | The unique group identifier assigned by the on-premises Active Directory. |
| createdDateTime           | DateTimeOffset | The date and time when the evidence was created and added to the alert. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
| detailedRoles             | String collection | Detailed description of the entity role/s in an alert. Values are free-form.|
| displayName               | String | The name of the security group.											 |
| distinguishedName         | String | The distinguished name of the security group.							 |
| friendlyName              | String | The friendly name of the security group.									 |
| remediationStatus         | [microsoft.graph.security.evidenceRemediationStatus](../resources/security-alertevidence.md#evidenceremediationstatus-values)| Status of the remediation action taken. The possible values are: `none`, `remediated`, `prevented`, `blocked`, `notFound`, `unknownFutureValue`, `active`, `pendingApproval`, `declined`, `unremediated`, `running`, `partiallyRemediated`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `active`, `pendingApproval`, `declined`, `unremediated`, `running`, `partiallyRemediated`.|
| remediationStatusDetails  | String | Details about the remediation status.									 |
| roles                     | [microsoft.graph.security.evidenceRole](../resources/security-alertevidence.md#evidencerole-values) collection | The role/s that an evidence entity represents in an alert, for example, an IP address that is associated with an attacker has the evidence role **Attacker**.|
| securityGroupId           | String | Unique identifier of the security group.									 |
| sid                       | String | The security identifier of the group.									 |
| tags                      | String collection | Array of custom tags associated with an evidence instance, for example, to denote a group of devices, high-value assets, etc.|
| verdict                   | [microsoft.graph.security.evidenceVerdict](../resources/security-alertevidence.md#evidenceverdict-values) | The decision reached by automated investigation. The possible values are: `unknown`, `suspicious`, `malicious`, `noThreatsFound`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.securityGroupEvidence",
  "baseType": "microsoft.graph.security.alertEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.securityGroupEvidence",
  "activeDirectoryObjectGuid": "Guid",
  "createdDateTime": "String (timestamp)",
  "detailedRoles": ["String"],
  "displayName": "String",
  "distinguishedName": "String",
  "friendlyName": "String",
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": ["String"],
  "securityGroupId": "String",
  "sid": "String",
  "tags": ["String"],
  "verdict": "String"
}
```
