---
title: "alert resource type"
description: "Represents potential security issues within a customer's tenant that Microsoft 365 Defender have identified."
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# alert resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This resource corresponds to the latest generation of alerts in the Microsoft Graph security API, representing potential security issues within a customer's tenant that Microsoft 365 Defender, or a security provider integrated with Microsoft 365 Defender, has identified.

When detecting a threat, a security provider creates an alert in the system. Microsoft 365 Defender pulls this alert data from the security provider, and consumes the alert data to return valuable clues in an [alert](security-alert.md) resource about any related attack, impacted assets, and associated [evidence](security-alertevidence.md). It automatically correlates other alerts with the same attack techniques or the same attacker into an [incident](security-incident.md) to provide a broader context of an attack. Aggregating alerts in this manner makes it easy for analysts to collectively investigate and respond to threats.

[!INCLUDE [alerts-callout-two-types](../includes/alerts-callout-two-types.md)]

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List alerts_v2](../api/security-list-alerts_v2.md)|[microsoft.graph.security.alert](security-alert.md) collection|Get a list of [alert](../resources/security-alert.md) resources that have been created to track suspicious activities in an organization.|
|[Get alert](../api/security-alert-get.md)|[microsoft.graph.security.alert](security-alert.md)|Get the properties of an [alert](../resources/security-alert.md) object in an organization based on the specified alert **id** property.|
|[Update alert](../api/security-alert-update.md)|[microsoft.graph.security.alert](../resources/security-alert.md)|Update the properties of an [alert](../resources/security-alert.md) object in an organization based on the specified alert **id** property.|
|[Create comment for alert](../api/security-alert-post-comments.md)| [alertComment](../resources/security-alertcomment.md) | Create a comment for an existing [alert](../resources/security-alert.md) based on the specified alert **id** property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actorDisplayName|String|The adversary or activity group that is associated with this alert.|
|alertWebUrl|String|URL for the alert page in the Microsoft 365 Defender portal.|
|assignedTo|String|Owner of the **alert**, or null if no owner is assigned.|
|category|String|The attack kill-chain category that the alert belongs to. Aligned with the MITRE ATT&CK framework.|
|classification|[microsoft.graph.security.alertClassification](#alertclassification-values)|Specifies whether the alert represents a true threat. Possible values are: `unknown`, `falsePositive`, `truePositive`, `benignPositive`, `unknownFutureValue`.|
|comments|[microsoft.graph.security.alertComment](security-alertComment.md) collection|Array of comments created by the Security Operations (SecOps) team during the alert management process.|
|createdDateTime|DateTimeOffset|Time when Microsoft 365 Defender created the alert.|
|description|String|String value describing each alert.|
|detectionSource|[microsoft.graph.security.detectionSource](#detectionsource-values)|Detection technology or sensor that identified the notable component or activity.|
|detectorId|String|The ID of the detector that triggered the alert.|
|determination|[microsoft.graph.security.alertDetermination](#alertdetermination-values)|Specifies the result of the investigation, whether the alert represents a true attack and if so, the nature of the attack. Possible values are: `unknown`, `apt`, `malware`, `securityPersonnel`, `securityTesting`, `unwantedSoftware`, `other`, `multiStagedAttack`, `compromisedUser`, `phishing`, `maliciousUserActivity`, `clean`, `insufficientData`, `confirmedUserActivity`, `lineOfBusinessApplication`, `unknownFutureValue`.|
|evidence|[microsoft.graph.security.alertEvidence](security-alertEvidence.md) collection|Collection of evidence related to the alert.|
|firstActivityDateTime|DateTimeOffset|The earliest activity associated with the alert.|
|id|String|Unique identifier to represent the **alert** resource.|
|incidentId|String|Unique identifier to represent the [incident](security-incident.md) this **alert** resource is associated with.|
|incidentWebUrl|String|URL for the incident page in the Microsoft 365 Defender portal.|
|lastActivityDateTime|DateTimeOffset|The oldest activity associated with the alert.|
|lastUpdateDateTime|DateTimeOffset|Time when the alert was last updated at Microsoft 365 Defender.|
|mitreTechniques|Collection(Edm.String)|The attack techniques, as aligned with the MITRE ATT&CK framework.|
|providerAlertId|String|The ID of the alert as it appears in the security provider product that generated the alert.|
|recommendedActions|String|Recommended response and remediation actions to take in the event this alert was generated.|
|resolvedDateTime|DateTimeOffset|Time when the alert was resolved.|
|serviceSource|[microsoft.graph.security.serviceSource](#servicesource-values)|The service or product that created this alert. Possible values are: `microsoftDefenderForEndpoint`, `microsoftDefenderForIdentity`, `microsoftCloudAppSecurity`, `microsoftDefenderForOffice365`, `microsoft365Defender`, `aadIdentityProtection`, `appGovernance`, `dataLossPrevention`.|
|severity|[microsoft.graph.security.alertSeverity](#alertseverity-values)|Indicates the possible impact on assets. The higher the severity the bigger the impact. Typically higher severity items require the most immediate attention. Possible values are: `unknown`, `informational`, `low`, `medium`, `high`, `unknownFutureValue`.|
|status|[microsoft.graph.security.alertStatus](#alertstatus-values)|The status of the alert. Possible values are: `new`, `inProgress`, `resolved`, `unknownFutureValue`.|
|tenantId|String|The Azure Active Directory tenant the alert was created in.|
|threatDisplayName|String|The threat associated with this alert.|
|threatFamilyName|String|Threat family associated with this alert.|
|title|String|Brief identifying string value describing the alert.|

### alertClassification values 

| Member                             | Description                                                                                                                         |
| :----------------------------------| :---------------------------------------------------------------------------------------------------------------------------------- |
| unknown		                     | The alert isn't classified yet.																				                       |
| falsePositive                      | The alert is a false positive and didn't detect malicious activity.                                                                 |
| truePositive                       | The alert is true positive and detected malicious activity.                                                                         |
| informationalExpectedActivity      | The alert is benign positive and detected potentially malicious activity by a trusted/internal user, for example, security testing. |
| unknownFutureValue                 | Evolvable enumeration sentinel value. Do not use.                                                                                   |

### alertDetermination values 

| Member                     | Description                                                                                                                  |
| :--------------------------| :--------------------------------------------------------------------------------------------------------------------------- |
| unknown		             | No determination value was set yet.                                                                                          |
| apt			             | A true positive alert that detected an advanced persistent threat.                                                           |
| malware                    | A true positive alert that detected malicious software.                                                                      |
| securityPersonnel          | A true positive alert that detected valid suspicious activity that was performed by someone on the customer's security team. |
| securityTesting            | The alert detected valid suspicious activity that was performed as part of a known security testing.                         |
| unwantedSoftware           | The alert detected unwanted software.                                                                                        |
| multiStagedAttack          | A true positive alert that detected multiple kill-chain attack stages.                                                       |
| compromisedAccount         | A true positive alert that detected that the intended user's credentials were compromised or stolen.                         |
| phishing                   | A true positive alert that detected a phishing email.                                                                        |
| maliciousUserActivity      | A true positive alert that detected that the logged-on user performs malicious activities.                                   |
| notMalicious               | A false alert, no suspicious activity.                                                                                       |
| notEnoughDataToValidate    | A false alert, without enough information to prove otherwise.                                                                |
| confirmedActivity          | The alert caught a true suspicious activity that is considered OK because it is a known user activity.                       |
| lineOfBusinessApplication  | The alert caught a true suspicious activity that is considered OK because it is a known and confirmed internal application.  |
| other                      | Other determination.                                                                                                         |
| unknownFutureValue         | Evolvable enumeration sentinel value. Do not use.                                                                            |

### alertSeverity values 

| Member                     | Description                                                                                                                  |
| :--------------------------| :--------------------------------------------------------------------------------------------------------------------------- |
| unknown		     | Unknown severity.       |
| informational		 | Alerts that may not be actionable or considered harmful to the network but can drive organizational security awareness on potential security issues.     |
| low                | Alerts on threats associated with prevalent malware. For example, hack-tools, non-malware hack tools, such as running exploration commands and clearing logs, that often don't indicate an advanced threat that targets the organization. It can also come from an isolated security tool that is tested by a user in your organization.  |
| medium             | Alerts generated from detections and response post-breach behaviors that might be a part of an advanced persistent threat (APT). This includes observed behaviors typical of attack stages, anomalous registry change, execution of suspicious files, and so forth. Although some might be due to internal security testing, they are valid detections and require investigation as they may be a part of an advanced attack. |
| high               | Alerts commonly seen associated with advanced persistent threats (APT). These alerts indicate a high risk because of the severity of damage they can inflict on assets. Some examples are: credential theft tools activities, ransomware activities not associated with any group, tampering with security sensors, or any malicious activities indicative of a human adversary. |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use. |


### alertStatus values 

| Member              | Description                                           |
| :-------------------| :---------------------------------------------------- |
| unknown		      | Unknown status. 							          |
| new                 | New alert.                                            |
| inProgress          | The alert is in mitigation progress.                  |
| resolved            | The alert is in resolved state.                       |
| unknownFutureValue  | Evolvable enumeration sentinel value. Do not use.     |


### serviceSource values 

| Value                        | Description                                    |
| :----------------------------| :----------------------------------------------|
| unknown                      | Unknown service source.                        |
| microsoftDefenderForEndpoint | Microsoft Defender for Endpoint.               |
| microsoftDefenderForIdentity | Microsoft Defender for Identity.               |
| microsoftDefenderForCloudApps| Microsoft Defender for Cloud Apps.             |
| microsoftDefenderForOffice365| Microsoft Defender For Office365.              |
| microsoft365Defender         | Microsoft 365 Defender.                        |
| microsoftAppGovernance       | Microsoft app governance.                      |
| microsoftDataLossPrevention  | Microsoft Purview Data Loss Prevention.        |
| unknownFutureValue           | Evolvable enumeration sentinel value. Do not use.|


### detectionSource values 

| Value                        | Description                                    |
| :----------------------------| :----------------------------------------------|
| unknown                        | Unknown detection source.                                    |
| microsoftDefenderForEndpoint   | Microsoft Defender For Endpoint.                             |
| antivirus                      | Antivirus software.                                          |
| smartScreen                    | Microsoft Defender SmartScreen.                              |
| customTi                       | Custom threat intelligence.                                  |
| microsoftDefenderForOffice365  | Microsoft Defender for Office 365.                           |
| automatedInvestigation         | Automated investigation.                                     |
| microsoftThreatExperts         | Microsoft Threat Experts.                                    |
| customDetection                | Custom detection.                                            |
| microsoftDefenderForIdentity   | Microsoft Defender for Identity.                             |
| cloudAppSecurity               | Cloud app security.                                          |
| microsoft365Defender           | Microsoft 365 Defender.                                      |
| azureAdIdentityProtection      | Azure Active Directory Identity Protection.                  |
| manual                         | Manual detection.                                            |
| microsoftDataLossPrevention    | Microsoft Purview Data Loss Prevention.                      |
| appGovernancePolicy            | App governance policy.                                       |
| appGovernanceDetection         | App governance detection.                                    |
| unknownFutureValue             | Evolvable enumeration sentinel value. Do not use.            |


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
  "id": "String (identifier)",
  "providerAlertId": "String",
  "incidentId": "String",
  "status": "String",
  "severity": "String",
  "classification": "String",
  "determination": "String",
  "serviceSource": "String",
  "detectionSource": "String",
  "detectorId": "String",
  "tenantId": "String",
  "title": "String",
  "description": "String",
  "recommendedActions": "String",
  "category": "String",
  "assignedTo": "String",
  "alertWebUrl": "String",
  "incidentWebUrl": "String",
  "actorDisplayName": "String",
  "threatDisplayName": "String",
  "threatFamilyName": "String",
  "mitreTechniques": [
    "String"
  ],
  "createdDateTime": "String (timestamp)",
  "lastUpdateDateTime": "String (timestamp)",
  "resolvedDateTime": "String (timestamp)",
  "firstActivityDateTime": "String (timestamp)",
  "lastActivityDateTime": "String (timestamp)",
  "comments": [
    {
      "@odata.type": "microsoft.graph.security.alertComment"
    }
  ],
  "evidence": [
    {
      "@odata.type": "microsoft.graph.security.alertEvidence"
    }
  ]
}
```

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->