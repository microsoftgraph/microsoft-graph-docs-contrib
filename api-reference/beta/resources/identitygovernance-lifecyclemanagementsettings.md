---
title: "lifecycleManagementSettings resource type"
description: "The settings of Azure AD Lifecycle Workflows in the tenant."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# lifecycleManagementSettings resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The settings of Azure AD Lifecycle Workflows in the tenant.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get lifecycleManagementSettings](../api/identitygovernance-lifecyclemanagementsettings-get.md)|[microsoft.graph.identityGovernance.lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md)|Read the properties and relationships of a [lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md) object.|
|[Update lifecycleManagementSettings](../api/identitygovernance-lifecyclemanagementsettings-update.md)|[microsoft.graph.identityGovernance.lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md)|Update the properties of a [lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier used for individually addressing Lifecycle Workflow settings.|
|workflowScheduleIntervalInHours|Int32|The interval in hours at which all [workflows](../resources/identitygovernance-workflow.md) running in the tenant should be scheduled for execution. This interval has a minimum value of 1 and a maximum value of 24.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.lifecycleManagementSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/settings/$entity",
    "workflowScheduleIntervalInHours": 1
}
```
