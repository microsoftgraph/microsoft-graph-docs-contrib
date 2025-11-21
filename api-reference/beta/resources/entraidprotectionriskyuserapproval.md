---
title: "entraIdProtectionRiskyUserApproval resource type"
description: "Represents the approval configuration for risky users detected by Microsoft Entra ID Protection."
author: "OWinfreyATL"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# entraIdProtectionRiskyUserApproval resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the approval configuration for risky users detected by Microsoft Entra ID Protection.

Inherits from [controlConfiguration](../resources/controlconfiguration.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/entraidprotectionriskyuserapproval-get.md)|[entraIdProtectionRiskyUserApproval](../resources/entraidprotectionriskyuserapproval.md)|Read the properties and relationships of [entraIdProtectionRiskyUserApproval](../resources/entraidprotectionriskyuserapproval.md) object.|
|[Update](../api/entraidprotectionriskyuserapproval-update.md)|[entraIdProtectionRiskyUserApproval](../resources/entraidprotectionriskyuserapproval.md)|Update the properties of an [entraIdProtectionRiskyUserApproval](../resources/entraidprotectionriskyuserapproval.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|String|The userPrincipalName of the user or identity of the subject who created this resource. Read-only. Inherited from [controlConfiguration](../resources/controlconfiguration.md).|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [controlConfiguration](../resources/controlconfiguration.md).|
|id|String|The unique identifier for an entity. Read-only. Inherited from [entity](../resources/entity.md).|
|isApprovalRequired|Boolean|Indicates whether approval is required for risky users.|
|isEnabled|Boolean|Indicates whether the control configuration is enabled. Inherited from [controlConfiguration](../resources/controlconfiguration.md).|
|minimumRiskLevel|riskLevel|The minimum risk level for which approval is required. The possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.|
|modifiedBy|String|The userPrincipalName of the user who last modified this resource. Read-only. Inherited from [controlConfiguration](../resources/controlconfiguration.md).|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [controlConfiguration](../resources/controlconfiguration.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.entraIdProtectionRiskyUserApproval",
  "baseType": "microsoft.graph.controlConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entraIdProtectionRiskyUserApproval",
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

