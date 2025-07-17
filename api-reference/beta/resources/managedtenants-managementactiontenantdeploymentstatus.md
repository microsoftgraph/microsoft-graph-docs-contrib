---
title: "managementActionTenantDeploymentStatus resource type"
description: "Represents tenant level deployment status for the management action."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# managementActionTenantDeploymentStatus resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents tenant level deployment status for the management action.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List management action deployment statuses](../api/managedtenants-managedtenant-list-managementactiontenantdeploymentstatuses.md)|[microsoft.graph.managedTenants.managementActionTenantDeploymentStatus](../resources/managedtenants-managementactiontenantdeploymentstatus.md) collection|Get a list of the [managementActionTenantDeploymentStatus](../resources/managedtenants-managementactiontenantdeploymentstatus.md) objects and their properties.|
|[Get management action deployment status](../api/managedtenants-managementactiontenantdeploymentstatus-get.md)|[microsoft.graph.managedTenants.managementActionTenantDeploymentStatus](../resources/managedtenants-managementactiontenantdeploymentstatus.md)|Read the properties and relationships of a [managementActionTenantDeploymentStatus](../resources/managedtenants-managementactiontenantdeploymentstatus.md) object.|
|[Change management action deployment status](../api/managedtenants-managementactiontenantdeploymentstatus-changedeploymentstatus.md)|[microsoft.graph.managedTenants.managementActionDeploymentStatus](../resources/managedtenants-managementactiondeploymentstatus.md)|Changes the deployment status for the management action.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the tenant level deployment status. Required. Read-only.|
|statuses|[microsoft.graph.managedTenants.managementActionDeploymentStatus](../resources/managedtenants-managementactiondeploymentstatus.md) collection|The collection of deployment status for each instance of a management action. Optional.|
|tenantGroupId|String|The identifier for the tenant group that is associated with the management action. Required. Read-only.|
|tenantId|String|The Microsoft Entra tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md). Required. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.managementActionTenantDeploymentStatus",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.managementActionTenantDeploymentStatus",
  "id": "String (identifier)",
  "tenantGroupId": "String",
  "tenantId": "String",
  "statuses": [
    {
      "@odata.type": "microsoft.graph.managedTenants.managementActionDeploymentStatus"
    }
  ]
}
```
