---
title: "insiderRiskyUserApproval resource type"
description: "Represents the approval configuration for risky users detected by Microsoft Purview Insider Risk Management."
author: "markwahl-msft"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# insiderRiskyUserApproval resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the approval configuration for risky users detected by Microsoft Purview Insider Risk Management.

Inherits from [controlConfiguration](../resources/controlconfiguration.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/insiderriskyuserapproval-get.md)|[insiderRiskyUserApproval](../resources/insiderriskyuserapproval.md)|Read the properties and relationships of [insiderRiskyUserApproval](../resources/insiderriskyuserapproval.md) object.|
|[Update](../api/insiderriskyuserapproval-update.md)|[insiderRiskyUserApproval](../resources/insiderriskyuserapproval.md)|Update the properties of an [insiderRiskyUserApproval](../resources/insiderriskyuserapproval.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|String|The userPrincipalName of the user or identity of the subject who created this resource. Read-only. Inherited from [controlConfiguration](../resources/controlconfiguration.md).|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [controlConfiguration](../resources/controlconfiguration.md).|
|id|String|The unique identifier for an entity. Read-only. Inherited from [entity](../resources/entity.md).|
|isApprovalRequired|Boolean|Indicates whether approval is required for risky users.|
|isEnabled|Boolean|Indicates whether the control configuration is enabled. Inherited from [controlConfiguration](../resources/controlconfiguration.md).|
|minimumRiskLevel|purviewInsiderRiskManagementLevel|The minimum risk level for which approval is required. The possible values are: `none`, `minor`, `moderate`, `elevated`, `unknownFutureValue`.|
|modifiedBy|String|The userPrincipalName of the user who last modified this resource. Read-only. Inherited from [controlConfiguration](../resources/controlconfiguration.md).|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [controlConfiguration](../resources/controlconfiguration.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.insiderRiskyUserApproval",
  "baseType": "microsoft.graph.controlConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.insiderRiskyUserApproval",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "createdBy": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedBy": "String",
  "modifiedDateTime": "String (timestamp)",
  "isApprovalRequired": "Boolean",
  "minimumRiskLevel": "String"
}
```

