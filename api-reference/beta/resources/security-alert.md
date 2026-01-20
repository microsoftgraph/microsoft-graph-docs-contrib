---
title: "alert resource type"
description: "Represents potential security issues within a customer's tenant that Microsoft 365 Defender identified."
ms.date: 01/08/2026
author: "BenAlfasi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# alert resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents potential security issues within a customer's tenant that Microsoft 365 Defender identified. These issues are identified by either Microsoft 365 Defender or a security provider integrated with Microsoft 365 Defender. This resource corresponds to the latest generation of alerts in the Microsoft Graph security API. 

Security providers create an alert in the system when they detect a threat. Microsoft 365 Defender pulls this alert data from the security provider, and consumes the alert data to return valuable clues in an [alert](security-alert.md) resource about any related attack, impacted assets, and associated [evidence](security-alertevidence.md). It automatically correlates other alerts with the same attack techniques or the same attacker into an [incident](security-incident.md) to provide a broader context of an attack. Aggregating alerts in this manner makes it easy for analysts to collectively investigate and respond to threats.

[!INCLUDE [alerts-callout-two-types](../includes/alerts-callout-two-types.md)]

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-list-alerts_v2.md)|[microsoft.graph.security.alert](security-alert.md) collection|Get a list of [alert](../resources/security-alert.md) resources that track suspicious activities in an organization.|
|[Get](../api/security-alert-get.md)|[microsoft.graph.security.alert](security-alert.md)|Get the properties of an [alert](../resources/security-alert.md) object in an organization based on the specified alert **ID** property.|
|[Update](../api/security-alert-update.md)|[microsoft.graph.security.alert](../resources/security-alert.md)|Update the properties of an [alert](../resources/security-alert.md) object in an organization based on the specified alert **ID** property.|
|[Create comment](../api/security-alert-post-comments.md)| [alertComment](../resources/security-alertcomment.md) | Create a comment for an existing [alert](../resources/security-alert.md) based on the specified alert **ID** property.|

## Properties

|Property|Type| Description|
|:---|:---|:---|
|actorDisplayName|String| The adversary or activity group that is associated with this alert.|
|additionalData|microsoft.graph.security.dictionary| A collection of other alert properties, including user-defined properties. Any custom details defined in the alert, and any dynamic content in the alert details, are stored here. |
|alertPolicyId|String| The ID of the policy that generated the alert, and populated when there is a specific policy that generated the alert, whether configured by a customer or a built-in policy.|
|alertWebUrl|String| URL for the Microsoft 365 Defender portal alert page.|
|assignedTo|String| Owner of the **alert**, or null if no owner is assigned.|
|category|String| The attack kill-chain category that the alert belongs to. Aligned with the MITRE ATT&CK framework.|
|classification|[microsoft.graph.security.alertClassification](#alertclassification-values)| Specifies whether the alert represents a true threat. The possible values are: `unknown`, `falsePositive`, `truePositive`, `informationalExpectedActivity`, `unknownFutureValue`.|
|comments|[microsoft.graph.security.alertComment](security-alertComment.md) collection| Array of comments created by the Security Operations (SecOps) team during the alert management process.|
|createdDateTime|DateTimeOffset| Time when Microsoft 365 Defender created the alert.|
|customDetails|microsoft.graph.security.dictionary| User defined custom fields with string values. |
|description|String| String value describing each alert.|
|detectionSource|[microsoft.graph.security.detectionSource](../resources/security-detectionsource.md)| Detection technology or sensor that identified the notable component or activity.|
|detectorId|String| The ID of the detector that triggered the alert.|
|productName|String| The name of the product which published this alert.|
|determination|[microsoft.graph.security.alertDetermination](#alertdetermination-values)| Specifies the result of the investigation, whether the alert represents a true attack, and if so, the nature of the attack. The possible values are: `unknown`, `apt`, `malware`, `securityPersonnel`, `securityTesting`, `unwantedSoftware`, `other`, `multiStagedAttack`, `compromisedAccount`, `phishing`, `maliciousUserActivity`, `notMalicious`, `notEnoughDataToValidate`, `confirmedUserActivity`, `lineOfBusinessApplication`, `unknownFutureValue`.|
|evidence|[microsoft.graph.security.alertEvidence](security-alertEvidence.md) collection| Collection of evidence related to the alert.|
|firstActivityDateTime|DateTimeOffset| The earliest activity associated with the alert.|
|id|String| Unique identifier to represent the **alert** resource.|
|incidentId|String| Unique identifier to represent the [incident](security-incident.md) this **alert** resource is associated with.|
|incidentWebUrl|String| URL for the incident page in the Microsoft 365 Defender portal. |
|investigationState|[microsoft.graph.security.investigationState](#investigationstate-values)| Information on the current status of the investigation. The possible values are: `unknown`, `terminated`, `successfullyRemediated`, `benign`, `failed`, `partiallyRemediated`, `running`, `pendingApproval`, `pendingResource`, `queued`, `innerFailure`, `preexistingAlert`, `unsupportedOs`, `unsupportedAlertType`, `suppressedAlert`, `partiallyInvestigated`, `terminatedByUser`, `terminatedBySystem`, `unknownFutureValue`.|
|lastActivityDateTime|DateTimeOffset| The oldest activity associated with the alert.|
|lastUpdateDateTime|DateTimeOffset| Time when the alert was last updated at Microsoft 365 Defender.|
|mitreTechniques|Collection(Edm.String)| The attack techniques, as aligned with the MITRE ATT&CK framework.|
|providerAlertId|String| The ID of the alert as it appears in the security provider product that generated the alert.|
|recommendedActions|String| Recommended response and remediation actions to take in the event this alert was generated.|
|resolvedDateTime|DateTimeOffset| Time when the alert was resolved.|
|serviceSource|microsoft.graph.security.serviceSource| The service or product that created this alert. The possible values are: `unknown`, `microsoftDefenderForEndpoint`, `microsoftDefenderForIdentity`, `microsoftDefenderForCloudApps`, `microsoftDefenderForOffice365`, `microsoft365Defender`, `azureAdIdentityProtection`, `microsoftAppGovernance`, `dataLossPrevention`, `unknownFutureValue`, `microsoftDefenderForCloud`, `microsoftSentinel`, `microsoftThreatIntelligence`. Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `microsoftDefenderForCloud`, `microsoftSentinel`, `microsoftThreatIntelligence`. <br/><br/>`azureAdIdentityProtection` refers to **Microsoft Entra ID Protection** and `dataLossPrevention` refers to **Microsoft Purview Data Loss Prevention**.|
|severity|[microsoft.graph.security.alertSeverity](#alertseverity-values)| Indicates the possible impact on assets. The higher the severity the bigger the impact. Typically higher severity items require the most immediate attention. The possible values are: `unknown`, `informational`, `low`, `medium`, `high`, `unknownFutureValue`.|
|status|microsoft.graph.security.alertStatus| The status of the alert. The possible values are: `unknown` (Unknown status), `new` (New alert), `inProgress` (The alert is in mitigation progress), `resolved` (The alert is in the resolved state), `unknownFutureValue` (Evolvable enumeration sentinel value. Don't use).|
|tenantId|String| The Microsoft Entra tenant the alert was created in.|
|threatDisplayName|String| The threat associated with this alert.|
|threatFamilyName|String| Threat family associated with this alert.|
|title|String| Brief identifying string value describing the alert.|
|systemTags|String collection| The system tags associated with the alert.|

### alertClassification values

| Member                             | Description                                                                                                                         |
| :----------------------------------| :---------------------------------------------------------------------------------------------------------------------------------- |
| unknown                       | The alert isn't classified yet.                                           |
| falsePositive                      | The alert is a false positive and didn't detect malicious activity.                                                                 |
| truePositive                       | The alert is true positive and detects malicious activity.                                                                         |
| informationalExpectedActivity      | The alert is benign positive and detected potentially malicious activity by a trusted/internal user, for example, security testing. |
| unknownFutureValue                 | Evolvable enumeration sentinel value. Don't use.                                                                                   |

### alertDetermination values

| Member                     | Description                                                                                                                  |
| :--------------------------| :--------------------------------------------------------------------------------------------------------------------------- |
| unknown               | No determination value was set yet.                                                                                          |
| apt                | A true positive alert that detected an advanced persistent threat.                                                           |
| malware                    | A true positive alert that detects malicious software.                                                                      |
| securityPersonnel          | A true positive alert that detected valid suspicious activity performed by someone on the customer's security team. |
| securityTesting            | The alert detected valid suspicious activity that was performed as part of a known security testing.                         |
| unwantedSoftware           | The alert detected unwanted software.                                                                                        |
| other                      | Other determination.                                                                                                         |
| multiStagedAttack          | A true positive alert that detected multiple kill-chain attack stages.                                                       |
| compromisedAccount         | A true positive alert that detected that the intended user's credentials were compromised or stolen.                         |
| phishing                   | A true positive alert that detected a phishing email.                                                                        |
| maliciousUserActivity      | A true positive alert that detects that the logged-on user performs malicious activities.                                   |
| notMalicious               | A false alert, no suspicious activity.                                                                                       |
| notEnoughDataToValidate    | A false alert, without enough information to prove otherwise.                                                                |
| confirmedActivity          | The alert caught a true suspicious activity that is considered OK because it's a known user activity.                       |
| lineOfBusinessApplication  | The alert caught a true suspicious activity that is considered OK because it's a known and confirmed internal application.  |
| unknownFutureValue         | Evolvable enumeration sentinel value. Don't use.                                                                            |

### investigationState values

| Member                 | Description                                                                 |
|:-----------------------|:----------------------------------------------------------------------------|
| unknown                | Unknown investigation state.                                                |
| terminated             | Investigation was terminated before completion.                             |
| successfullyRemediated | Investigation completed successfully with all remediation actions performed. |
| benign                 | Investigation completed without any remediation attempts.                   |
| failed                 | A problem interrupted the investigation and now it can't be completed.     |
| partiallyRemediated    | Investigation completed with some remediation plans successfully performed. |
| running                | Investigation is currently ongoing.                                         |
| pendingApproval        | Investigation paused; some actions require user review and approval.        |
| pendingResource        | Investigation is paused until required resources are available.        |
| queued                 | Investigation is queued and waiting to start.                                      |
| innerFailure           | Investigation encountered an internal system failure.                       |
| preexistingAlert       | Investigation wasn't started because a similar alert already exists.       |
| unsupportedOs          | Investigation can't proceed because the operating system isn't supported. |
| unsupportedAlertType   | Investigation can't proceed because the alert type isn't supported.       |
| suppressedAlert        | Investigation was suppressed based on configured rules or policies.         |
| partiallyInvestigated  | Investigation was partially completed.                                      |
| terminatedByUser       | Investigation was stopped by the user before it was completed.              |
| terminatedBySystem     | Investigation was stopped by the system before it was completed.               |
| unknownFutureValue     | Evolvable enumeration sentinel value. Don't use.                            |

### alertSeverity values

| Member                     | Description                                                                                                                  |
| :--------------------------| :--------------------------------------------------------------------------------------------------------------------------- |
| unknown       | Unknown severity.       |
| informational   | Alerts that might not be actionable or considered harmful to the network but can drive organizational security awareness on potential security issues.     |
| low                | Alerts on threats associated with prevalent malware. For example, hack tools, and nonmalware hack tools, such as running exploration commands and clearing logs, that often don't indicate an advanced threat that targets the organization. It can also come from an isolated security tool that a user in your organization is testing.  |
| medium             | Alerts generated from detections and response post-breach behaviors that might be a part of an advanced persistent threat (APT). These alerts include observed behaviors typical of attack stages, anomalous registry change, execution of suspicious files, and so forth. Although some might be due to internal security testing, they're valid detections and require investigation as they might be a part of an advanced attack. |
| high               | Alerts commonly seen associated with advanced persistent threats (APT). These alerts indicate a high risk because of the severity of damage they can inflict on assets. Some examples are: credential theft tools activities, ransomware activities not associated with any group, tampering with security sensors, or any malicious activities indicative of a human adversary. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.alert",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.security.alert",
  "actorDisplayName": "String",
  "additionalData": {"@odata.type": "microsoft.graph.security.dictionary"},
  "alertWebUrl": "String",
  "assignedTo": "String",
  "category": "String",
  "classification": "String",
  "comments": [{"@odata.type": "microsoft.graph.security.alertComment"}],
  "createdDateTime": "String (timestamp)",
  "customDetails": {"@odata.type": "microsoft.graph.security.dictionary"},
  "description": "String",
  "detectionSource": "String",
  "detectorId": "String",
  "determination": "String",
  "evidence": [{"@odata.type": "microsoft.graph.security.alertEvidence"}],
  "firstActivityDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "incidentId": "String",
  "incidentWebUrl": "String",
  "investigationState": "String",
  "lastActivityDateTime": "String (timestamp)",
  "lastUpdateDateTime": "String (timestamp)",
  "mitreTechniques": ["String"],
  "productName": "String",
  "providerAlertId": "String",
  "recommendedActions": "String",
  "resolvedDateTime": "String (timestamp)",
  "serviceSource": "String",
  "severity": "String",
  "status": "String",
  "systemTags" : ["String"],
  "tenantId": "String",
  "threatDisplayName": "String",
  "threatFamilyName": "String",
  "title": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->
