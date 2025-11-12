---
title: "identityContainer resource type"
description: "Represents a container for security identities APIs that currently exposes the healthIssues relationship."
author: "naalmog"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "security"
ms.date: 09/18/2024
---

# identityContainer resource type

Namespace: microsoft.graph.security

Represents a container for security identities APIs that currently exposes the [healthIssues](security-healthissue.md) relationship.

## Methods

None.

## Properties

None.

## Relationships

| Relationship                           |Type|Description|
|:---------------------------------------|:---|:---|
| healthIssues                           |[microsoft.graph.security.healthIssue](security-healthissue.md) collection| Represents potential issues identified by Microsoft Defender for Identity within a customer's Microsoft Defender for Identity configuration. |
| sensors                                |[microsoft.graph.security.sensor](security-sensor.md) collection| Represents a customer's Microsoft Defender for Identity sensors.|
| sensorCandidates                       |[microsoft.graph.security.sensorCandidate](security-sensorcandidate.md) collection| Represents Microsoft Defender for Identity sensors that are ready to be activated.                                                             |
| sensorCandidateActivationConfiguration |[microsoft.graph.security.sensorCandidateActivationConfiguration](security-sensorcandidateactivationconfiguration.md) collection| Represents the activation mode of a Microsoft Defender for Identity sensor.                                                                    |

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.identityContainer",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.identityContainer"
}
```
