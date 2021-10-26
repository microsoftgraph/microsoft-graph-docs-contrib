---
title: "incident resource type"
description: "An incident in Microsoft 365 Defender is a collection of correlated alerts and associated metadata that reflects the story of an attack."
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# incident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An incident in Microsoft 365 Defender is a collection of correlated alerts and associated metadata that reflects the story of an attack in a tenant.

Microsoft 365 services and apps create alerts when they detect a suspicious or malicious event or activity. Individual alerts provide valuable clues about a completed or ongoing attack. However, attacks typically employ various techniques against different types of entities, such as devices, users, and mailboxes. The result is multiple alerts for multiple entities in your tenant.
Because piecing the individual alerts together to gain insight into an attack can be challenging and time-consuming, Microsoft 365 Defender automatically aggregates the alerts and their associated information into an incident.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List incidents](../api/security-list-incidents.md)|[incident](../resources/incident.md) collection|Get a list of the [incident](../resources/incident.md) objects and their properties.|
|[Get incident](../api/security-get-incident.md)|[incident](../resources/incident.md)|Read the properties and relationships of an [incident](../resources/incident.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedTo|String|Owner of the incident, or null if no owner is assigned. Free editable text.|
|classification|[m365AlertClassification](#m365alertclassification-values)|The specification for the incident. Possible values are: `unknown`, `falsePositive`, `truePositive`, `benignPositive`, `unknownFutureValue`.|
|comments|[m365AlertComment](../resources/m365alertcomment.md) collection|Array of comments created by the Security Operations (SecOps) team when the incident is managed.|
|createdDateTime|DateTimeOffset|Time when the incident was first created.|
|determination|[m365AlertDetermination](#m365alertdetermination-values)|Specifies the determination of the incident. Possible values are: `unknown`, `apt`, `malware`, `securityPersonnel`, `securityTesting`, `unwantedSoftware`, `other`, `multiStagedAttack`, `compromisedUser`, `phishing`, `maliciousUserActivity`, `clean`, `insufficientData`, `confirmedUserActivity`, `lineOfBusinessApplication`, `unknownFutureValue`.|
|displayName|String|The incident name.|
|id|String|Unique identifier to represent the incident.|
|incidentWebUrl|String|URL for the incident page in Microsoft 365 Defender portal.|
|lastUpdateDateTime|DateTimeOffset|Time when the incident was last updated.|
|redirectIncidentId|String|Only populated in case an incident is grouped together with another incident, as part of the logic that processes incidents.|
|severity|[m365AlertSeverity](#m365alertseverity-values )|Indicates the possible impact on assets. The higher the severity the bigger the impact. Typically higher severity items require the most immediate attention. Possible values are: `unknown`, `informational`, `low`, `medium`, `high`, `unknownFutureValue`.|
|status|[incidentStatus](#incidentstatus-values)|The status of the incident. Possible values are: `active`, `resolved`, `redirected`, `unknownFutureValue`.|
|tags|String collection|Array of custom tags associated with an incident.|


### incidentStatus values 

| Member              | Description                                                                                                           |
| :-------------------| :-------------------------------------------------------------------------------------------------------------------- |
| active			  | The incident is in active state.                                                                                      |
| resolved            | The incident is in resolved state.                                                                                    |
| redirected          | The incident was merged with another incident. The target incident ID appears in the **redirectIncidentId** property. |
| unknownFutureValue  | Evolvable enumeration sentinel value. Do not use.                                                                     |

### m365AlertClassification values 

| Member              | Description                                                                                                                         |
| :-------------------| :---------------------------------------------------------------------------------------------------------------------------------- |
| unknown		      | The alert isn't classified yet.																				                        |
| falsePositive       | The alert is a false positive and didn't detect malicious activity.                                                                 |
| truePositive        | The alert is true positive and detected malicious activity.                                                                         |
| benignPositive      | The alert is benign positive and detected potentially malicious activity by a trusted/internal user, for example, security testing. |
| unknownFutureValue  | Evolvable enumeration sentinel value. Do not use.                                                                                   |

### m365AlertDetermination values 

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

### m365AlertSeverity values 

| Member                     | Description                                                                                                                  |
| :--------------------------| :--------------------------------------------------------------------------------------------------------------------------- |
| unknown		     | Unknown severity.       |
| informational		 | Alerts that may not be actionable or considered harmful to the network but can drive organizational security awareness on potential security issues.     |
| low                | Alerts on threats associated with prevalent malware. For example, hack-tools, non-malware hack tools, such as running exploration commands and clearing logs, that often don't indicate an advanced threat that targets the organization. It can also come from an isolated security tool that is tested by a user in your organization.  |
| medium             | Alerts generated from detections and response post-breach behaviors that might be a part of an advanced persistent threat (APT). This includes observed behaviors typical of attack stages, anomalous registry change, execution of suspicious files, and so forth. Although some might be due to internal security testing, they are valid detections and require investigation as they may be a part of an advanced attack. |
| high               | Alerts commonly seen associated with advanced persistent threats (APT). These alerts indicate a high risk because of the severity of damage they can inflict on assets. Some examples are: credential theft tools activities, ransomware activities not associated with any group, tampering with security sensors, or any malicious activities indicative of a human adversary. |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use. |



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
  "@odata.type": "#microsoft.graph.incident",
  "id": "String (identifier)",
  "incidentWebUrl": "String",
  "redirectIncidentId": "String",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "lastUpdateDateTime": "String (timestamp)",
  "assignedTo": "String",
  "classification": "String",
  "determination": "String",
  "status": "String",
  "severity": "String",
  "tags": [
    "String"
  ],
  "comments": [
    {
      "@odata.type": "microsoft.graph.m365AlertComment"
    }
  ]
}
```