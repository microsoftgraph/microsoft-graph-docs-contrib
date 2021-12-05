---
title: "alert_v2 resource type"
description: "Represents potential security issues within a customer's tenant that Microsoft 365 Defender have identified."
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# alert_v2 resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents potential security issues within a customer's tenant that Microsoft 365 Defender have identified.
When a threat is detected, alerts are created in the system for an analyst to investigate. Alerts with the same attack techniques or attributed to the same attacker are aggregated into an entity called an [incident](incident.md). Aggregating alerts in this manner makes it easy for analysts to collectively investigate and respond to threats.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List alerts_v2](../api/security-list-alerts_v2.md)|[alert_v2](alert_v2.md) collection|Get a list of the [alert_v2](alert_v2.md) objects and their properties.|
|[Get alert_v2](../api/security-get-alert_v2.md)|[alert_v2](alert_v2.md)|Read the properties and relationships of an [alert_v2](alert_v2.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier to represent the alert.|
|providerAlertId|String|The ID of the alert as it appears in the provider product that generated the alert.|
|incidentId|String|Unique identifier to represent the [incident](incident.md) this alert is associated with.|
|status|[alertStatus_v2](#alertStatus_v2-values)|The status of the alert. Possible values are: `new`, `inProgress`, `resolved`, `unknownFutureValue`.|
|severity|[alertSeverity_v2](#alertSeverity_v2-values)|Indicates the possible impact on assets. The higher the severity the bigger the impact. Typically higher severity items require the most immediate attention. Possible values are: `unknown`, `informational`, `low`, `medium`, `high`, `unknownFutureValue`.|
|classification|[alertClassification_v2](#alertClassification_v2-values)|Specifies the classification of the alert. Possible values are: `unknown`, `falsePositive`, `truePositive`, `benignPositive`, `unknownFutureValue`.|
|determination|[alertDetermination_v2](#alertDetermination_v2-values)|Specifies the determination of the alert. Possible values are: `unknown`, `apt`, `malware`, `securityPersonnel`, `securityTesting`, `unwantedSoftware`, `other`, `multiStagedAttack`, `compromisedUser`, `phishing`, `maliciousUserActivity`, `clean`, `insufficientData`, `confirmedUserActivity`, `lineOfBusinessApplication`, `unknownFutureValue`.|
|serviceSource|[serviceSource](#serviceSource-values)|The product service that created this alert. Possible values are: `microsoftDefenderForEndpoint`, `microsoftDefenderForIdentity`, `microsoftCloudAppSecurity`, `microsoftDefenderForOffice365`, `microsoft365Defender`, `aadIdentityProtection`, `appGovernance`, `dataLossPrevention`.|
|detectorId|String|The ID of the detector that triggered the alert.|
|aadTenantId|String|The Azure Active Directory tenant the alert was created in.|
|title|String|Brief identifying string value describing the alert.|
|description|String|String value describing each alert.|
|category|String|The attack kill-chain category the alert belongs to. Aligned with the MITRE ATT&CK framework.|
|assignedTo|String|Owner of the incident, or null if no owner is assigned.|
|alertWebUrl|String|URL for the alert page in Microsoft 365 Defender portal.|
|incidentWebUrl|String|URL for the alert page in Microsoft 365 Defender portal.|
|actorDisplayName|String|The adversary, or activity group, that is associated with this alert.|
|threatDisplayName|String|The thread associated with this alert.|
|threatFamilyName|String|Threat family associated with this alert.|
|mitreTechniques|`Collection(Edm.String)`|The attack techniques, as aligned with the MITRE ATT&CK framework.|
|createdDateTime|DateTimeOffset|Time when the alert was created.|
|lastUpdateDateTime|DateTimeOffset|Time when the alert was last updated.|
|resolvedDateTime|DateTimeOffset|Time when the alert was resolved.|
|firstActivityDateTime|DateTimeOffset|The earliest activity associated with the alert.|
|lastActivityDateTime|DateTimeOffset|The oldest activity associated with the alert.|
|comments|[alertComment_v2](alertComment_v2.md)|Array of comments created by the Security Operations (SecOps) team during the alert management process.|

### alertClassification_v2 values 

| Member              | Description                                                                                                                         |
| :-------------------| :---------------------------------------------------------------------------------------------------------------------------------- |
| unknown		      | The alert isn't classified yet.																				                        |
| falsePositive       | The alert is a false positive and didn't detect malicious activity.                                                                 |
| truePositive        | The alert is true positive and detected malicious activity.                                                                         |
| benignPositive      | The alert is benign positive and detected potentially malicious activity by a trusted/internal user, for example, security testing. |
| unknownFutureValue  | Evolvable enumeration sentinel value. Do not use.                                                                                   |

### alertDetermination_v2 values 

| Member                     | Description                                                                                                                  |
| :--------------------------| :--------------------------------------------------------------------------------------------------------------------------- |
| unknown		             | No determination value was set yet.                                                                                          |
| apt			             | A true positive alert that detected an advanced persistent threat.                                                           |
| malware                    | A true positive alert that detected malicious software.                                                                      |
| securityPersonnel          | A true positive alert that detected valid suspicious activity that was performed by someone on the customer's security team. |
| securityTesting            | The alert detected valid suspicious activity that was performed as part of a known security testing.                         |
| unwantedSoftware           | The alert detected unwanted software.                                                                                        |
| multiStagedAttack          | A true positive alert that detected multiple kill-chain attack stages.                                                       |
| compromisedUser            | A true positive alert that detected that the intended user's credentials were compromised or stolen.                         |
| phishing                   | A true positive alert that detected a phishing email.                                                                        |
| maliciousUserActivity      | A true positive alert that detected that the logged-on user performs malicious activities.                                   |
| clean                      | A false alert, no suspicious activity.                                                                                       |
| insufficientData           | A false alert, without enough information to prove otherwise.                                                                |
| confirmedUserActivity      | The alert caught a true suspicious activity that is considered OK because it is a known user activity.                       |
| lineOfBusinessApplication  | The alert caught a true suspicious activity that is considered OK because it is a known and confirmed internal application.  |
| other                      | Other determination.                                                                                                         |
| unknownFutureValue         | Evolvable enumeration sentinel value. Do not use.                                                                            |

### alertSeverity_v2 values 

| Member                     | Description                                                                                                                  |
| :--------------------------| :--------------------------------------------------------------------------------------------------------------------------- |
| unknown		     | Unknown severity.       |
| informational		 | Alerts that may not be actionable or considered harmful to the network but can drive organizational security awareness on potential security issues.     |
| low                | Alerts on threats associated with prevalent malware. For example, hack-tools, non-malware hack tools, such as running exploration commands and clearing logs, that often don't indicate an advanced threat that targets the organization. It can also come from an isolated security tool that is tested by a user in your organization.  |
| medium             | Alerts generated from detections and response post-breach behaviors that might be a part of an advanced persistent threat (APT). This includes observed behaviors typical of attack stages, anomalous registry change, execution of suspicious files, and so forth. Although some might be due to internal security testing, they are valid detections and require investigation as they may be a part of an advanced attack. |
| high               | Alerts commonly seen associated with advanced persistent threats (APT). These alerts indicate a high risk because of the severity of damage they can inflict on assets. Some examples are: credential theft tools activities, ransomware activities not associated with any group, tampering with security sensors, or any malicious activities indicative of a human adversary. |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use. |


### alertStatus_v2 values 

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
| microsoftDefenderForEndpoint | Microsoft Defender for Endpoint                |
| microsoftDefenderForIdentity | Microsoft Defender for Identity                |
| microsoftDefenderForCloudApps| Microsoft Defender for Cloud Apps              |
| microsoftDefenderForOffice365| Microsoft Defender For Office365               |
| microsoft365Defender         | Microsoft 365 Defender                         |
| aadIdentityProtection        | Azure Active Directory Identity Protection     |
| microsoftAppGovernance       | Microsoft App Governance                       |
| dataLossPrevention           | Data Loss Prevention                           |
| unknownFutureValue           | unknownFutureValue for evolvable enums pattern.|



## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.incident",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
    "@odata.type": "#microsoft.graph.alert_v2",
    "id": "String (identifier)",
    "providerAlertId": "String",
    "incidentId": "String",
    "status": "String",
    "severity": "String",
    "classification": "String",
    "determination": "String",
    "serviceSource": "String",
    "detectorId": "String",
    "aadTenantId": "String",
    "title": "String",
    "description": "String",
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
          "@odata.type": "microsoft.graph.alertComment_v2"
        }
    ]
}
```