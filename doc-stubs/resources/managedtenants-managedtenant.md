---
title: "managedTenant resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# managedTenant resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/managedtenants-entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List managedTenants](../api/managedtenants-managedtenant-list.md)|[microsoft.graph.managedTenants.managedTenant](../resources/managedtenants-managedtenant.md) collection|Get a list of the [managedTenant](../resources/managedtenants-managedtenant.md) objects and their properties.|
|[Create managedTenant](../api/managedtenants-managedtenant-create.md)|[microsoft.graph.managedTenants.managedTenant](../resources/managedtenants-managedtenant.md)|Create a new [managedTenant](../resources/managedtenants-managedtenant.md) object.|
|[Get managedTenant](../api/managedtenants-managedtenant-get.md)|[microsoft.graph.managedTenants.managedTenant](../resources/managedtenants-managedtenant.md)|Read the properties and relationships of a [managedTenant](../resources/managedtenants-managedtenant.md) object.|
|[Update managedTenant](../api/managedtenants-managedtenant-update.md)|[microsoft.graph.managedTenants.managedTenant](../resources/managedtenants-managedtenant.md)|Update the properties of a [managedTenant](../resources/managedtenants-managedtenant.md) object.|
|[Delete managedTenant](../api/managedtenants-managedtenant-delete.md)|None|Deletes a [managedTenant](../resources/managedtenants-managedtenant.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/managedtenants-entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|aggregatedPolicyCompliances|[microsoft.graph.managedTenants.aggregatedPolicyCompliance](../resources/managedtenants-aggregatedpolicycompliance.md) collection|**TODO: Add Description**|
|cloudPcConnections|[microsoft.graph.managedTenants.cloudPcConnection](../resources/managedtenants-cloudpcconnection.md) collection|**TODO: Add Description**|
|cloudPcDevices|[microsoft.graph.managedTenants.cloudPcDevice](../resources/managedtenants-cloudpcdevice.md) collection|**TODO: Add Description**|
|cloudPcsOverview|[microsoft.graph.managedTenants.cloudPcOverview](../resources/managedtenants-cloudpcoverview.md) collection|**TODO: Add Description**|
|conditionalAccessPolicyCoverages|[microsoft.graph.managedTenants.conditionalAccessPolicyCoverage](../resources/managedtenants-conditionalaccesspolicycoverage.md) collection|**TODO: Add Description**|
|credentialUserRegistrationsSummaries|[microsoft.graph.managedTenants.credentialUserRegistrationsSummary](../resources/managedtenants-credentialuserregistrationssummary.md) collection|**TODO: Add Description**|
|deviceCompliancePolicySettingStateSummaries|[microsoft.graph.managedTenants.deviceCompliancePolicySettingStateSummary](../resources/managedtenants-devicecompliancepolicysettingstatesummary.md) collection|**TODO: Add Description**|
|managedDeviceCompliances|[microsoft.graph.managedTenants.managedDeviceCompliance](../resources/managedtenants-manageddevicecompliance.md) collection|**TODO: Add Description**|
|managedDeviceComplianceTrends|[microsoft.graph.managedTenants.managedDeviceComplianceTrend](../resources/managedtenants-manageddevicecompliancetrend.md) collection|**TODO: Add Description**|
|managedTenantOperationHttpRequests|[microsoft.graph.managedTenants.managedTenantOperationHttpRequest](../resources/managedtenants-managedtenantoperationhttprequest.md) collection|**TODO: Add Description**|
|managedTenantOperationResults|[microsoft.graph.managedTenants.managedTenantOperationResult](../resources/managedtenants-managedtenantoperationresult.md) collection|**TODO: Add Description**|
|managedTenantOperations|[microsoft.graph.managedTenants.managedTenantOperation](../resources/managedtenants-managedtenantoperation.md) collection|**TODO: Add Description**|
|managementActions|[microsoft.graph.managedTenants.managementAction](../resources/managedtenants-managementaction.md) collection|**TODO: Add Description**|
|managementActionTenantDeploymentStatuses|[microsoft.graph.managedTenants.managementActionTenantDeploymentStatus](../resources/managedtenants-managementactiontenantdeploymentstatus.md) collection|**TODO: Add Description**|
|managementIntents|[microsoft.graph.managedTenants.managementIntent](../resources/managedtenants-managementintent.md) collection|**TODO: Add Description**|
|managementTemplates|[microsoft.graph.managedTenants.managementTemplate](../resources/managedtenants-managementtemplate.md) collection|**TODO: Add Description**|
|riskyUsers|[microsoft.graph.managedTenants.riskyUser](../resources/managedtenants-riskyuser.md) collection|**TODO: Add Description**|
|tenantGroups|[microsoft.graph.managedTenants.tenantGroup](../resources/managedtenants-tenantgroup.md) collection|**TODO: Add Description**|
|tenants|[microsoft.graph.managedTenants.tenant](../resources/managedtenants-tenant.md) collection|**TODO: Add Description**|
|tenantsCustomizedInformation|[microsoft.graph.managedTenants.tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md) collection|**TODO: Add Description**|
|tenantsDetailedInformation|[microsoft.graph.managedTenants.tenantDetailedInformation](../resources/managedtenants-tenantdetailedinformation.md) collection|**TODO: Add Description**|
|tenantTags|[microsoft.graph.managedTenants.tenantTag](../resources/managedtenants-tenanttag.md) collection|**TODO: Add Description**|
|windowsDeviceMalwareStates|[microsoft.graph.managedTenants.windowsDeviceMalwareState](../resources/managedtenants-windowsdevicemalwarestate.md) collection|**TODO: Add Description**|
|windowsProtectionStates|[microsoft.graph.managedTenants.windowsProtectionState](../resources/managedtenants-windowsprotectionstate.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.managedTenant",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.managedTenant",
  "id": "String (identifier)"
}
```

