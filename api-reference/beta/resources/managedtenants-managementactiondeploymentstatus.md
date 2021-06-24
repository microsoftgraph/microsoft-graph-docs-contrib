---
title: "managementActionDeploymentStatus resource type"
description: "Represents the deployment status for a given managed tenant."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# managementActionDeploymentStatus resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the deployment status for a given managed tenant.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|managementActionId|String|The identifier for the management action.|
|managementTemplateId|String|The management template identifier that was used to generate the management action.|
|status|managementActionStatus|The status of the management action. Possible values are: `toAddress`, `completed`, `error`, `timeOut`, `inProgress`, `planned`, `resolvedBy3rdParty`, `resolvedThroughAlternateMitigation`, `riskAccepted`, `unknownFutureValue`.|
|workloadActionDeploymentStatuses|[microsoft.graph.managedTenants.workloadActionDeploymentStatus](../resources/managedtenants-workloadactiondeploymentstatus.md) collection|The collection of workload action deployment statues for the given management action.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.managementActionDeploymentStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.managementActionDeploymentStatus",
  "managementTemplateId": "String",
  "managementActionId": "String",
  "status": "String",
  "workloadActionDeploymentStatuses": [
    {
      "@odata.type": "microsoft.graph.managedTenants.workloadActionDeploymentStatus"
    }
  ]
}
```
