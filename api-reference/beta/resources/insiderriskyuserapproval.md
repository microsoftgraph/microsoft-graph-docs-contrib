---
title: "insiderRiskyUserApproval resource type"
description: "Defines a risku user approval object"
author: "markwahl-msft"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# insiderRiskyUserApproval resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents whether or not an access package request from a user is considered risky or not based on levels defined by the Purview Insiders Risk Management feature.


Inherits from [controlConfiguration](../resources/controlconfiguration.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/insiderriskyuserapproval-list.md)|[insiderRiskyUserApproval](../resources/insiderriskyuserapproval.md) collection|Get a list of the insiderRiskyUserApproval objects and their properties.|
|[Get](../api/insiderriskyuserapproval-get.md)|[insiderRiskyUserApproval](../resources/insiderriskyuserapproval.md)|Read the properties and relationships of [insiderRiskyUserApproval](../resources/insiderriskyuserapproval.md) object.|
|[Update](../api/insiderriskyuserapproval-update.md)|[insiderRiskyUserApproval](../resources/insiderriskyuserapproval.md)|Update the properties of an insiderRiskyUserApproval object.|
|[Delete](../api/insiderriskyuserapproval-delete.md)|None|Delete an insiderRiskyUserApproval object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|String|The userPrincipalName of the user or identity that created the approval request. Inherited from [controlConfiguration](../resources/controlconfiguration.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [controlConfiguration](../resources/controlconfiguration.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isApprovalRequired|Boolean|**TODO: Add Description**|
|isEnabled|Boolean|**TODO: Add Description** Inherited from [controlConfiguration](../resources/controlconfiguration.md).|
|minimumRiskLevel|purviewInsiderRiskManagementLevel|The risk level of the user access package request. The possible values are: `none`, `minor`, `moderate`, `elevated`, `unknownFutureValue`.|
|modifiedBy|String|The userPrincipalName of the user or identity that modified the approval request. Inherited from [controlConfiguration](../resources/controlconfiguration.md).|
|modifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [controlConfiguration](../resources/controlconfiguration.md).|

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

