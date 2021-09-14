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

An incident in Microsoft 365 Defender is a collection of correlated alerts and associated metadata that reflects the story of an attack.



## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List incidents](../api/incident-list.md)|[incident](../resources/incident.md) collection|Get a list of the [incident](../resources/incident.md) objects and their properties.|
|[Get incident](../api/incident-get.md)|[incident](../resources/incident.md)|Read the properties and relationships of an [incident](../resources/incident.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedTo|String|Owner of the incident, or null if no owner is assigned. Free editable text.|
|classification|m365AlertClassification|The specification for the incident. Possible values are: `unknown`, `falsePositive`, `truePositive`, `benignPositive`, `unknownFutureValue`.|
|comments|[m365AlertComment](../resources/m365alertcomment.md) collection|Array of comments created by the Security Operations (SecOps) team when the incident is managed.|
|createdDateTime|DateTimeOffset|Time when the incident was first created.|
|determination|m365AlertDetermination|Specifies the determination of the incident. Possible values are: `unknown`, `apt`, `malware`, `securityPersonnel`, `securityTesting`, `unwantedSoftware`, `other`, `multiStagedAttack`, `compromisedUser`, `phishing`, `maliciousUserActivity`, `clean`, `insufficientData`, `confirmedUserActivity`, `lineOfBusinessApplication`, `unknownFutureValue`.|
|displayName|String|The incident name.|
|id|String|Unique identifier to represent the incident.|
|incidentWebUrl|String|URL for the incident page in Microsoft 365 Defender portal.|
|lastUpdateDateTime|DateTimeOffset|Time when the incident was last updated.|
|redirectIncidentId|String|Only populated in case an incident is grouped together with another incident, as part of the logic that processes incidents.|
|severity|m365AlertSeverity|Indicates the possible impact on assets. The higher the severity the bigger the impact. Typically higher severity items require the most immediate attention. Possible values are: `unknown`, `informational`, `low`, `medium`, `high`, `unknownFutureValue`.|
|status|incidentStatus|The status of the incident. Possible values are: `active`, `resolved`, `redirected`, `unknownFutureValue`.|
|tags|String collection|Array of custom tags associated with an incident.|

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
