---
title: "mailboxConfigurationEvidence resource type"
description: "Represents a mailbox configuration entity that is reported as part of the security detection alert."
ms.date: 11/19/2025
author: "t-hareldamti"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# mailboxConfigurationEvidence resource type

Namespace: microsoft.graph.security

Represents a mailbox configuration entity that is reported as part of the security detection alert.

Inherits from [alertEvidence](../resources/security-alertevidence.md), which represents evidence related to an [alert](security-alert.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configurationId|String|The unique identifier of the mailbox configuration.|
|configurationType|microsoft.graph.security.mailboxConfigurationType|The type of mailbox configuration. The possible values are: `mailForwardingRule`, `owaSettings`, `ewsSettings`, `mailDelegation`, `userInboxRule`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|The date and time when the evidence was created and added to the alert. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|detailedRoles|String collection|Detailed roles of the evidence in the alert. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|displayName|String|The display name of the mailbox.|
|externalDirectoryObjectId|Guid|The external directory object identifier of the mailbox.|
|mailboxPrimaryAddress|String|The primary email address of the mailbox.|
|remediationStatus|[microsoft.graph.security.evidenceRemediationStatus](../resources/security-alertevidence.md#evidenceremediationstatus-values)|The status of the remediation action taken. The possible values are: `none`, `remediated`, `prevented`, `blocked`, `notFound`, `active`, `pendingApproval`, `declined`, `notRemediated`, `running`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|remediationStatusDetails|String|Details about the remediation status. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|roles|[microsoft.graph.security.evidenceRole](../resources/security-alertevidence.md#evidencerole-values) collection|One or more roles that an evidence entity represents in an alert. For example, an IP address that is associated with an attacker has the evidence role `Attacker`. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|tags|String collection|Array of custom tags associated with an evidence instance. For example, to denote a group of devices or high value assets. Inherited from [alertEvidence](../resources/security-alertevidence.md).|
|upn|String|The user principal name (UPN) of the mailbox.|
|verdict|[microsoft.graph.security.evidenceVerdict](../resources/security-alertevidence.md#evidenceverdict-values)|The decision reached by automated investigation. The possible values are: `unknown`, `suspicious`, `malicious`, `noThreatsFound`, `unknownFutureValue`. Inherited from [alertEvidence](../resources/security-alertevidence.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mailboxConfigurationEvidence",
  "baseType": "microsoft.graph.security.alertEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mailboxConfigurationEvidence",
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
  "configurationType": "String",
  "mailboxPrimaryAddress": "String",
  "displayName": "String",
  "upn": "String",
  "configurationId": "String",
  "externalDirectoryObjectId": "String"
}
```
