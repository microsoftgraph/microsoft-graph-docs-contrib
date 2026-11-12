---
title: "deploymentScope resource type"
description: "Specifies the Azure deployment stack scope in the **deploymentScope** property or **deploymentScope** connect action parameter of a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md)."
author: "AlexBrohshtut"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# deploymentScope resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the Azure deployment stack scope in the **deploymentScope** property or **deploymentScope** connect action parameter of a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md).


## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|ARM resource id of the scope: a resource group (/subscriptions/{id}/resourceGroups/{name}) or a management group (/providers/Microsoft.Management/managementGroups/{id}).|
|scopeType|[microsoft.graph.security.contentManagement.deploymentScopeType](../resources/enums-security-contentmanagement.md#deploymentscopetype-values)|Kind of Azure scope the deployment stack is provisioned at. The possible values are: `resourceGroup`, `managementGroup`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.contentManagement.deploymentScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.deploymentScope",
  "scopeType": "String",
  "id": "String"
}
```
