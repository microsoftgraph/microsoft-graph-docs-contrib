---
title: "staleSignInAlertIncident resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# staleSignInAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List staleSignInAlertIncidents](../api/stalesigninalertincident-list.md)|[staleSignInAlertIncident](../resources/stalesigninalertincident.md) collection|Get a list of the [staleSignInAlertIncident](../resources/stalesigninalertincident.md) objects and their properties.|
|[Get staleSignInAlertIncident](../api/stalesigninalertincident-get.md)|[staleSignInAlertIncident](../resources/stalesigninalertincident.md)|Read the properties and relationships of a [staleSignInAlertIncident](../resources/stalesigninalertincident.md) object.|
|[Update staleSignInAlertIncident](../api/stalesigninalertincident-update.md)|[staleSignInAlertIncident](../resources/stalesigninalertincident.md)|Update the properties of a [staleSignInAlertIncident](../resources/stalesigninalertincident.md) object.|
|[Delete staleSignInAlertIncident](../api/stalesigninalertincident-delete.md)|None|Delete a [staleSignInAlertIncident](../resources/stalesigninalertincident.md) object.|
|[remediate](../api/stalesigninalertincident-remediate.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assigneeDisplayName|String|**TODO: Add Description**|
|assigneeId|String|**TODO: Add Description**|
|assigneeUserPrincipalName|String|**TODO: Add Description**|
|assignmentCreatedDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastSignInDateTime|DateTimeOffset|**TODO: Add Description**|
|roleDefinitionId|String|**TODO: Add Description**|
|roleDisplayName|String|**TODO: Add Description**|
|roleTemplateId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.staleSignInAlertIncident",
  "baseType": "microsoft.graph.unifiedRoleManagementAlertIncident",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.staleSignInAlertIncident",
  "id": "String (identifier)",
  "roleTemplateId": "String",
  "roleDisplayName": "String",
  "roleDefinitionId": "String",
  "assigneeId": "String",
  "assigneeDisplayName": "String",
  "assigneeUserPrincipalName": "String",
  "assignmentCreatedDateTime": "String (timestamp)",
  "lastSignInDateTime": "String (timestamp)"
}
```

