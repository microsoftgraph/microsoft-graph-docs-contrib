---
title: "identityContainer resource type"
description: "Represents a container for security identities APIs that currently exposes the [healthIssues](security-healthissue.md) relationship."
author: "amirfeldman"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "security"
ms.date: 09/15/2024
---

# identityContainer resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for security identities APIs that currently exposes the [healthIssues](security-healthissue.md) relationship.

## Methods

None.

## Properties

None.

## Relationships

| Relationship                           | Type                                                                                 | Description                                                                                                                                    |
|:---------------------------------------|:-------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| healthIssues                           | [microsoft.graph.security.healthIssue](security-healthissue.md) collection           | Represents potential issues within a customer's Microsoft Defender for Identity configuration that Microsoft Defender for Identity identified. |
| identityAccounts                       | [microsoft.graph.security.identityAccounts](security-identityaccounts.md) collection | Represents an identity's details in the context of Microsoft Defender for Identity.                                                                  |
| sensors                                | [microsoft.graph.security.sensor](security-sensor.md) collection                     | Represents a customer's Microsoft Defender for Identity sensors.                                                                               |
| sensorCandidates                       |[microsoft.graph.security.sensorCandidate](security-sensorcandidate.md) collection| Represents Microsoft Defender for Identity sensors that are ready to be activated.                                                             |
| sensorCandidateActivationConfiguration |[microsoft.graph.security.sensorCandidateActivationConfiguration](security-sensorcandidateactivationconfiguration.md) collection| Represents the activation mode of a Microsoft Defender for Identity sensor.                                                                    |
| settings                               | [microsoft.graph.security.settingsContainer](security-settingscontainer.md)                                                      | Represents a container for security identities settings APIs.                                                                                  |


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
