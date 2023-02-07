---
title: "sequentialActivationRenewalsAlertIncident resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# sequentialActivationRenewalsAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List sequentialActivationRenewalsAlertIncidents](../api/sequentialactivationrenewalsalertincident-list.md)|[sequentialActivationRenewalsAlertIncident](../resources/sequentialactivationrenewalsalertincident.md) collection|Get a list of the [sequentialActivationRenewalsAlertIncident](../resources/sequentialactivationrenewalsalertincident.md) objects and their properties.|
|[Get sequentialActivationRenewalsAlertIncident](../api/sequentialactivationrenewalsalertincident-get.md)|[sequentialActivationRenewalsAlertIncident](../resources/sequentialactivationrenewalsalertincident.md)|Read the properties and relationships of a [sequentialActivationRenewalsAlertIncident](../resources/sequentialactivationrenewalsalertincident.md) object.|
|[Update sequentialActivationRenewalsAlertIncident](../api/sequentialactivationrenewalsalertincident-update.md)|[sequentialActivationRenewalsAlertIncident](../resources/sequentialactivationrenewalsalertincident.md)|Update the properties of a [sequentialActivationRenewalsAlertIncident](../resources/sequentialactivationrenewalsalertincident.md) object.|
|[Delete sequentialActivationRenewalsAlertIncident](../api/sequentialactivationrenewalsalertincident-delete.md)|None|Delete a [sequentialActivationRenewalsAlertIncident](../resources/sequentialactivationrenewalsalertincident.md) object.|
|[remediate](../api/sequentialactivationrenewalsalertincident-remediate.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activationCount|Int32|**TODO: Add Description**|
|assigneeDisplayName|String|**TODO: Add Description**|
|assigneeId|String|**TODO: Add Description**|
|assigneeUserPrincipalName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|roleDefinitionId|String|**TODO: Add Description**|
|roleDisplayName|String|**TODO: Add Description**|
|roleTemplateId|String|**TODO: Add Description**|
|sequenceEndDateTime|DateTimeOffset|**TODO: Add Description**|
|sequenceStartDateTime|DateTimeOffset|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sequentialActivationRenewalsAlertIncident",
  "baseType": "microsoft.graph.unifiedRoleManagementAlertIncident",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sequentialActivationRenewalsAlertIncident",
  "id": "String (identifier)",
  "roleTemplateId": "String",
  "roleDisplayName": "String",
  "roleDefinitionId": "String",
  "assigneeId": "String",
  "assigneeDisplayName": "String",
  "assigneeUserPrincipalName": "String",
  "activationCount": "Integer",
  "sequenceStartDateTime": "String (timestamp)",
  "sequenceEndDateTime": "String (timestamp)"
}
```

