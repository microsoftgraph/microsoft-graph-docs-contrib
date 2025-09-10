---
title: "autoAuditingConfiguration resource type"
description: "Represents the configuration settings for automatic auditing in Microsoft Defender for Identity."
author: "SamuelBenichou"
ms.date: 09/09/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# autoAuditingConfiguration resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration settings for automatic auditing in Microsoft Defender for Identity.


Inherits from [microsoft.graph.entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-identitycontainer-list-autoauditingconfiguration.md)|[microsoft.graph.security.autoAuditingConfiguration](../resources/security-autoauditingconfiguration.md) collection|Get a list of the autoAuditingConfiguration objects and their properties.|
|[Create](../api/security-identitycontainer-post-autoauditingconfiguration.md)|[microsoft.graph.security.autoAuditingConfiguration](../resources/security-autoauditingconfiguration.md)|Create a new autoAuditingConfiguration object.|
|[Get](../api/security-autoauditingconfiguration-get.md)|[microsoft.graph.security.autoAuditingConfiguration](../resources/security-autoauditingconfiguration.md)|Read the properties and relationships of [microsoft.graph.security.autoAuditingConfiguration](../resources/security-autoauditingconfiguration.md) object.|
|[Update](../api/security-autoauditingconfiguration-update.md)|[microsoft.graph.security.autoAuditingConfiguration](../resources/security-autoauditingconfiguration.md)|Update the properties of a autoAuditingConfiguration object.|
|[Delete](../api/security-identitycontainer-delete-autoauditingconfiguration.md)|None|Delete a autoAuditingConfiguration object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the auto auditing configuration. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|isAutomatic|Boolean|Indicates whether automatic auditing is enabled for identity monitoring.|

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
  "id": "String (identifier)",
  "isAutomatic": "Boolean"
}
```
