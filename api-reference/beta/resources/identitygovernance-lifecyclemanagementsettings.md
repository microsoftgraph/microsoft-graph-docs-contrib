---
title: "lifecycleManagementSettings resource type"
description: "The settings of Microsoft Entra Lifecycle Workflows in the tenant."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# lifecycleManagementSettings resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The settings of Microsoft Entra Lifecycle Workflows in the tenant.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/identitygovernance-lifecyclemanagementsettings-get.md)|[microsoft.graph.identityGovernance.lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md)|Read the properties and relationships of a [lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md) object.|
|[Update](../api/identitygovernance-lifecyclemanagementsettings-update.md)|[microsoft.graph.identityGovernance.lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md)|Update the properties of a [lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|workflowScheduleIntervalInHours|Int32|The interval in hours at which all [workflows](../resources/identitygovernance-workflow.md) running in the tenant should be scheduled for execution. This interval has a minimum value of 1 and a maximum value of 24. The default value is 3 hours. |
|emailSettings|[microsoft.graph.emailSettings](../resources/emailsettings.md)|Defines the settings for emails sent out from email-specific [tasks](../resources/identitygovernance-task.md) within workflows. Accepts 2 parameters<br><br>senderDomain- Defines the domain of who is sending the email. <br>useCompanyBranding- A Boolean value that defines if company branding is to be used with the email.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.lifecycleManagementSettings",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecycleManagementSettings",
  "workflowScheduleIntervalInHours": "Integer",
  "emailSettings": {
    "@odata.type": "microsoft.graph.emailSettings"
  }
}
```
