---
title: "settingsContainer resource type"
description: "Represents a container for security settings APIs."
author: "SamuelBenichou"
ms.date: 10/03/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# settingsContainer resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for security identities APIs that currently exposes the [autoAuditingConfiguration](security-autoauditingconfiguration.md) relationship.

## Methods

None.

## Properties
 
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|autoAuditingConfiguration|[autoAuditingConfiguration](../resources/security-autoauditingconfiguration.md)|Represents automatic configuration for collection of Windows event logs as needed for Defender for Identity sensors.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.settingsContainer",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.settingsContainer"
}
```