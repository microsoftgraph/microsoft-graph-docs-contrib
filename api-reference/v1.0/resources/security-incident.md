---
title: "incident resource type"
description: "An incident in Microsoft 365 Defender is a collection of correlated alerts and associated metadata that reflects the story of an attack."
ms.date: 11/11/2022
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# incident resource type

Namespace: microsoft.graph.security

An incident in Microsoft 365 Defender is a collection of correlated [alert](../resources/security-alert.md) instances and associated metadata that reflects the story of an attack in a tenant.

Microsoft 365 services and apps create alerts when they detect a suspicious or malicious event or activity. Individual alerts provide valuable clues about a completed or ongoing attack. However, attacks typically employ various techniques against different types of entities, such as devices, users, and mailboxes. The result is multiple alerts for multiple entities in your tenant.
Because piecing the individual alerts together to gain insight into an attack can be challenging and time-consuming, Microsoft 365 Defender automatically aggregates the alerts and their associated information into an incident.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List incidents](../api/security-list-incidents.md)|[microsoft.graph.security.incident](../resources/security-incident.md) collection|Get a list of [incident](../resources/security-incident.md) objects that Microsoft 365 Defender has created to track attacks in an organization.|
|[Get incident](../api/security-incident-get.md)|[microsoft.graph.security.incident](../resources/security-incident.md)|Read the properties and relationships of an [incident](../resources/security-incident.md) object.|
|[Update incident](../api/security-incident-update.md)|[microsoft.graph.security.incident](../resources/security-incident.md)|Update the properties of an [incident](../resources/security-incident.md) object.|
|[Create comment for incident](../api/security-incident-post-comments.md)| [alertComment](../resources/security-alertcomment.md) | Create a comment for an existing [incident](../resources/security-incident.md) based on the specified incident **id** property.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedTo|String|Owner of the incident, or null if no owner is assigned. Free editable text.|
|classification|microsoft.graph.security.alertClassification|The specification for the incident. Possible values are: `unknown`, `falsePositive`, `truePositive`, `informationalExpectedActivity`, `unknownFutureValue`.|
|comments|[microsoft.graph.security.alertComment](security-alertcomment.md) collection|Array of comments created by the Security Operations (SecOps) team when the incident is managed.|
|createdDateTime|DateTimeOffset|Time when the incident was first created.|
|customTags|String collection|Array of custom tags associated with an incident.|
|determination|microsoft.graph.security.alertDetermination|Specifies the determination of the incident. Possible values are: `unknown`, `apt`, `malware`, `securityPersonnel`, `securityTesting`, `unwantedSoftware`, `other`, `multiStagedAttack`, `compromisedUser`, `phishing`, `maliciousUserActivity`, `clean`, `insufficientData`, `confirmedUserActivity`, `lineOfBusinessApplication`, `unknownFutureValue`.|
|displayName|String|The incident name.|
|id|String|Unique identifier to represent the incident.|
|incidentWebUrl|String|The URL for the incident page in the Microsoft 365 Defender portal.|
|lastUpdateDateTime|DateTimeOffset|Time when the incident was last updated.|
|redirectIncidentId|String|Only populated in case an incident is grouped together with another incident, as part of the logic that processes incidents. In such a case, the **status** property is `redirected`. |
|severity|alertSeverity|Indicates the possible impact on assets. The higher the severity, the bigger the impact. Typically higher severity items require the most immediate attention. Possible values are: `unknown`, `informational`, `low`, `medium`, `high`, `unknownFutureValue`.|
|status|[microsoft.graph.security.incidentStatus](#incidentstatus-values)|The status of the incident. Possible values are: `active`, `resolved`, `inProgress`, `redirected`, `unknownFutureValue`, and `awaitingAction`.|
|tenantId|String|The Azure Active Directory tenant in which the alert was created.|



### incidentStatus values 
The following table lists the members of an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). You must use the `Prefer: include-unknown-enum-members` request header to get the following values in this evolvable enum: `awaitingAction`.

| Member              | Description                                                                                                                                  |
| :-------------------| :------------------------------------------------------------------------------------------------------------------------------------------- |
| active			        | The incident is in active state.                                                                                                             |
| resolved            | The incident is in resolved state.                                                                                                           |
| inProgress          | The incident is in mitigation progress.                                                                                                      |
| redirected          | The incident was merged with another incident. The target incident ID appears in the **redirectIncidentId** property.                        |
| unknownFutureValue  | Evolvable enumeration sentinel value. Do not use.                                                                                            |
| awaitingAction      | This incident has required actions from Defender Experts awaiting your action. This status can only be set by Microsoft 365 Defender experts.|



## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alerts|[microsoft.graph.security.alert](security-alert.md) collection|The list of related alerts. Supports `$expand`.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.incident",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.incident",
  "id": "String (identifier)",
  "incidentWebUrl": "String",
  "tenantId": "String",
  "redirectIncidentId": "String",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "lastUpdateDateTime": "String (timestamp)",
  "assignedTo": "String",
  "classification": "String",
  "determination": "String",
  "status": "String",
  "severity": "String",
  "customTags": [
    "String"
  ],
  "comments": [
    {
      "@odata.type": "microsoft.graph.security.alertComment"
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
