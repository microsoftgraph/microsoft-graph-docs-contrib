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

An incident in Microsoft 365 Defender is a collection of correlated [alert](../resources/alert_v2.md) instances and associated metadata that reflects the story of an attack in a tenant.

Microsoft 365 services and apps create alerts when they detect a suspicious or malicious event or activity. Individual alerts provide valuable clues about a completed or ongoing attack. However, attacks typically employ various techniques against different types of entities, such as devices, users, and mailboxes. The result is multiple alerts for multiple entities in your tenant.
Because piecing the individual alerts together to gain insight into an attack can be challenging and time-consuming, Microsoft 365 Defender automatically aggregates the alerts and their associated information into an incident.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List incidents](../api/security-list-incidents.md)|[incident](../resources/incident.md) collection|Get a list of the [incident](../resources/incident.md) objects and their properties.|
|[Get incident](../api/incident-get.md)|[incident](../resources/incident.md)|Read the properties and relationships of an [incident](../resources/incident.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedTo|String|Owner of the incident, or null if no owner is assigned. Free editable text.|
|classification|alertClassification_v2|The specification for the incident. Possible values are: `unknown`, `falsePositive`, `truePositive`, `benignPositive`, `unknownFutureValue`.|
|comments|[alertComment_v2](alertcomment_v2.md) collection|Array of comments created by the Security Operations (SecOps) team when the incident is managed.|
|createdDateTime|DateTimeOffset|Time when the incident was first created.|
|determination|alertDetermination_v2|Specifies the determination of the incident. Possible values are: `unknown`, `apt`, `malware`, `securityPersonnel`, `securityTesting`, `unwantedSoftware`, `other`, `multiStagedAttack`, `compromisedUser`, `phishing`, `maliciousUserActivity`, `clean`, `insufficientData`, `confirmedUserActivity`, `lineOfBusinessApplication`, `unknownFutureValue`.|
|displayName|String|The incident name.|
|id|String|Unique identifier to represent the incident.|
|incidentWebUrl|String|URL for the incident page in Microsoft 365 Defender portal.|
|lastUpdateDateTime|DateTimeOffset|Time when the incident was last updated.|
|redirectIncidentId|String|Only populated in case an incident is grouped together with another incident, as part of the logic that processes incidents.|
|severity|alertSeverity_v2|Indicates the possible impact on assets. The higher the severity the bigger the impact. Typically higher severity items require the most immediate attention. Possible values are: `unknown`, `informational`, `low`, `medium`, `high`, `unknownFutureValue`.|
|status|[incidentStatus](#incidentstatus-values)|The status of the incident. Possible values are: `active`, `resolved`, `redirected`, `unknownFutureValue`.|
|tags|String collection|Array of custom tags associated with an incident.|


### incidentStatus values 

| Member              | Description                                                                                                           |
| :-------------------| :-------------------------------------------------------------------------------------------------------------------- |
| active			  | The incident is in active state.                                                                                      |
| resolved            | The incident is in resolved state.                                                                                    |
| redirected          | The incident was merged with another incident. The target incident ID appears in the **redirectIncidentId** property. |
| unknownFutureValue  | Evolvable enumeration sentinel value. Do not use.                                                                     |



## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alerts|[alert_v2](alert_v2.md) collection|The list of related alerts. Supports `$expand`.|

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
      "@odata.type": "microsoft.graph.alertComment_v2"
    }
  ]
}
```