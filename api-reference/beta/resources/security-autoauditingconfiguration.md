---
title: "autoAuditingConfiguration resource type"
description: "Represents the configuration settings for automatic auditing in Microsoft Defender for Identity."
author: "SamuelBenichou"
ms.date: 09/09/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
toc.title: Auto-auditing configuration
---

# autoAuditingConfiguration resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration settings for automatic auditing in Microsoft Defender for Identity. The config activates predefined audit policies that automatically log critical security events in Windows Event Viewer.
For more information, see [Configure audit policies for Windows event logs](https://learn.microsoft.com/en-us/defender-for-identity/deploy/configure-windows-event-collection).


Inherits from [microsoft.graph.entity](../resources/entity.md).


## Methods
|Method|Return type| Description                                                                                                                                             |
|:---|:---|:--------------------------------------------------------------------------------------------------------------------------------------------------------|
|[Get](../api/security-autoauditingconfiguration-get.md)|[microsoft.graph.security.autoAuditingConfiguration](../resources/security-autoauditingconfiguration.md)| Read the properties and relationships of [microsoft.graph.security.autoAuditingConfiguration](../resources/security-autoauditingconfiguration.md) object.|
|[Update](../api/security-autoauditingconfiguration-update.md)|[microsoft.graph.security.autoAuditingConfiguration](../resources/security-autoauditingconfiguration.md)| Update the properties of an autoAuditingConfiguration object.                                                                                           |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isAutomatic|Boolean|Indicates whether automatic auditing is enabled for Defender for Identity monitoring.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.autoAuditingConfiguration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.autoAuditingConfiguration",
  "isAutomatic": "Boolean"
}
```
