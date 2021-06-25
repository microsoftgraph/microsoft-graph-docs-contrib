---
title: "managedTenant resource type"
description: "Represent the available operations that interact with the multi-tenant management platform."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# managedTenant resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent the available operations that interact with the multi-tenant management platform.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List aggregatedPolicyCompliances](../api/managedtenants-managedtenant-list-aggregatedpolicycompliances.md)|[microsoft.graph.managedTenants.aggregatedPolicyCompliance](../resources/managedtenants-aggregatedpolicycompliance.md) collection|Get the aggregatedPolicyCompliance resources from the aggregatedPolicyCompliances navigation property.|
|[List cloudPcConnections](../api/managedtenants-managedtenant-list-cloudpcconnections.md)|[microsoft.graph.managedTenants.cloudPcConnection](../resources/managedtenants-cloudpcconnection.md) collection|Get the cloudPcConnection resources from the cloudPcConnections navigation property.|
|[List cloudPcDevices](../api/managedtenants-managedtenant-list-cloudpcdevices.md)|[microsoft.graph.managedTenants.cloudPcDevice](../resources/managedtenants-cloudpcdevice.md) collection|Get the cloudPcDevice resources from the cloudPcDevices navigation property.|
|[List cloudPcsOverview](../api/managedtenants-managedtenant-list-cloudpcsoverview.md)|[microsoft.graph.managedTenants.cloudPcOverview](../resources/managedtenants-cloudpcoverview.md) collection|Get the cloudPcOverview resources from the cloudPcsOverview navigation property.|
|[List conditionalAccessPolicyCoverages](../api/managedtenants-managedtenant-list-conditionalaccesspolicycoverages.md)|[microsoft.graph.managedTenants.conditionalAccessPolicyCoverage](../resources/managedtenants-conditionalaccesspolicycoverage.md) collection|Get the conditionalAccessPolicyCoverage resources from the conditionalAccessPolicyCoverages navigation property.|
|[List credentialUserRegistrationsSummaries](../api/managedtenants-managedtenant-list-credentialuserregistrationssummaries.md)|[microsoft.graph.managedTenants.credentialUserRegistrationsSummary](../resources/managedtenants-credentialuserregistrationssummary.md) collection|Get the credentialUserRegistrationsSummary resources from the credentialUserRegistrationsSummaries navigation property.|
|[List deviceCompliancePolicySettingStateSummaries](../api/managedtenants-managedtenant-list-devicecompliancepolicysettingstatesummaries.md)|[microsoft.graph.managedTenants.deviceCompliancePolicySettingStateSummary](../resources/managedtenants-intune-devicecompliancepolicysettingstatesummary.md) collection|Get the deviceCompliancePolicySettingStateSummary resources from the deviceCompliancePolicySettingStateSummaries navigation property.|
|[List managedDeviceCompliances](../api/managedtenants-managedtenant-list-manageddevicecompliances.md)|[microsoft.graph.managedTenants.managedDeviceCompliance](../resources/managedtenants-manageddevicecompliance.md) collection|Get the managedDeviceCompliance resources from the managedDeviceCompliances navigation property.|
|[List managedDeviceComplianceTrends](../api/managedtenants-managedtenant-list-manageddevicecompliancetrends.md)|[microsoft.graph.managedTenants.managedDeviceComplianceTrend](../resources/managedtenants-manageddevicecompliancetrend.md) collection|Get the managedDeviceComplianceTrend resources from the managedDeviceComplianceTrends navigation property.|
|[List managementActions](../api/managedtenants-managedtenant-list-managementactions.md)|[microsoft.graph.managedTenants.managementAction](../resources/managedtenants-managementaction.md) collection|Get the managementAction resources from the managementActions navigation property.|
|[List managementActionTenantDeploymentStatuses](../api/managedtenants-managedtenant-list-managementactiontenantdeploymentstatuses.md)|[microsoft.graph.managedTenants.managementActionTenantDeploymentStatus](../resources/managedtenants-managementactiontenantdeploymentstatus.md) collection|Get the managementActionTenantDeploymentStatus resources from the managementActionTenantDeploymentStatuses navigation property.|
|[List managementIntents](../api/managedtenants-managedtenant-list-managementintents.md)|[microsoft.graph.managedTenants.managementIntent](../resources/managedtenants-managementintent.md) collection|Get the managementIntent resources from the managementIntents navigation property.|
|[List managementTemplates](../api/managedtenants-managedtenant-list-managementtemplates.md)|[microsoft.graph.managedTenants.managementTemplate](../resources/managedtenants-managementtemplate.md) collection|Get the managementTemplate resources from the managementTemplates navigation property.|
|[List riskyUsers](../api/managedtenants-managedtenant-list-riskyusers.md)|[microsoft.graph.managedTenants.riskyUser](../resources/managedtenants-riskyuser.md) collection|Get the riskyUser resources from the riskyUsers navigation property.|
|[List tenantGroups](../api/managedtenants-managedtenant-list-tenantgroups.md)|[microsoft.graph.managedTenants.tenantGroup](../resources/managedtenants-tenantgroup.md) collection|Get the tenantGroup resources from the tenantGroups navigation property.|
|[List tenants](../api/managedtenants-managedtenant-list-tenants.md)|[microsoft.graph.managedTenants.tenant](../resources/managedtenants-tenant.md) collection|Get the tenant resources from the tenants navigation property.|
|[List tenantsCustomizedInformation](../api/managedtenants-managedtenant-list-tenantscustomizedinformation.md)|[microsoft.graph.managedTenants.tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md) collection|Get the tenantCustomizedInformation resources from the tenantsCustomizedInformation navigation property.|
|[Create tenantCustomizedInformation](../api/managedtenants-managedtenant-post-tenantscustomizedinformation.md)|[microsoft.graph.managedTenants.tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md)|Create a new tenantCustomizedInformation object.|
|[List tenantsDetailedInformation](../api/managedtenants-managedtenant-list-tenantsdetailedinformation.md)|[microsoft.graph.managedTenants.tenantDetailedInformation](../resources/managedtenants-tenantdetailedinformation.md) collection|Get the tenantDetailedInformation resources from the tenantsDetailedInformation navigation property.|
|[Create tenantDetailedInformation](../api/managedtenants-managedtenant-post-tenantsdetailedinformation.md)|[microsoft.graph.managedTenants.tenantDetailedInformation](../resources/managedtenants-tenantdetailedinformation.md)|Create a new tenantDetailedInformation object.|
|[List tenantTags](../api/managedtenants-managedtenant-list-tenanttags.md)|[microsoft.graph.managedTenants.tenantTag](../resources/managedtenants-tenanttag.md) collection|Get the tenantTag resources from the tenantTags navigation property.|
|[Create tenantTag](../api/managedtenants-managedtenant-post-tenanttags.md)|[microsoft.graph.managedTenants.tenantTag](../resources/managedtenants-tenanttag.md)|Create a new tenantTag object.|
|[List windowsDeviceMalwareStates](../api/managedtenants-managedtenant-list-windowsdevicemalwarestates.md)|[microsoft.graph.managedTenants.windowsDeviceMalwareState](../resources/managedtenants-windowsdevicemalwarestate.md) collection|Get the windowsDeviceMalwareState resources from the windowsDeviceMalwareStates navigation property.|
|[List windowsProtectionStates](../api/managedtenants-managedtenant-list-windowsprotectionstates.md)|[microsoft.graph.managedTenants.windowsProtectionState](../resources/managedtenants-windowsprotectionstate.md) collection|Get the windowsProtectionState resources from the windowsProtectionStates navigation property.|

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|aggregatedPolicyCompliances|[microsoft.graph.managedTenants.aggregatedPolicyCompliance](../resources/managedtenants-aggregatedpolicycompliance.md) collection|Aggregate view of device compliance policies across managed tenants.|
|cloudPcConnections|[microsoft.graph.managedTenants.cloudPcConnection](../resources/managedtenants-cloudpcconnection.md) collection|The collection of cloud PC connections across managed tenants.|
|cloudPcDevices|[microsoft.graph.managedTenants.cloudPcDevice](../resources/managedtenants-cloudpcdevice.md) collection|The collection of cloud PC devices across managed tenants.|
|cloudPcsOverview|[microsoft.graph.managedTenants.cloudPcOverview](../resources/managedtenants-cloudpcoverview.md) collection|Overview of cloud PC information across managed tenants.|
|conditionalAccessPolicyCoverages|[microsoft.graph.managedTenants.conditionalAccessPolicyCoverage](../resources/managedtenants-conditionalaccesspolicycoverage.md) collection|Aggregate view of conditional access policy coverage across managed tenants.|
|credentialUserRegistrationsSummaries|[microsoft.graph.managedTenants.credentialUserRegistrationsSummary](../resources/managedtenants-credentialuserregistrationssummary.md) collection|Summary information for user registration for multi-factor authentication and self service password reset across managed tenants.|
|deviceCompliancePolicySettingStateSummaries|[microsoft.graph.managedTenants.deviceCompliancePolicySettingStateSummary](../resources/managedtenants-intune-devicecompliancepolicysettingstatesummary.md) collection|Summary information for device compliance policy setting states across managed tenants.|
|managedDeviceCompliances|[microsoft.graph.managedTenants.managedDeviceCompliance](../resources/managedtenants-manageddevicecompliance.md) collection|The collection of compliance for managed devices across managed tenants.|
|managedDeviceComplianceTrends|[microsoft.graph.managedTenants.managedDeviceComplianceTrend](../resources/managedtenants-manageddevicecompliancetrend.md) collection|Trend insights for device compliance across managed tenants.|
|managementActions|[microsoft.graph.managedTenants.managementAction](../resources/managedtenants-managementaction.md) collection|The collection of baseline management actions across managed tenants.|
|managementActionTenantDeploymentStatuses|[microsoft.graph.managedTenants.managementActionTenantDeploymentStatus](../resources/managedtenants-managementactiontenantdeploymentstatus.md) collection|The tenant level status of management actions across managed tenants.|
|managementIntents|[microsoft.graph.managedTenants.managementIntent](../resources/managedtenants-managementintent.md) collection|The collection of baseline management intents across managed tenants.|
|managementTemplates|[microsoft.graph.managedTenants.managementTemplate](../resources/managedtenants-managementtemplate.md) collection|The collection of baseline management templates across managed tenants.|
|riskyUsers|[microsoft.graph.managedTenants.riskyUser](../resources/managedtenants-riskyuser.md) collection|The collection of users flagged for risk across managed tenants.|
|tenantGroups|[microsoft.graph.managedTenants.tenantGroup](../resources/managedtenants-tenantgroup.md) collection|The collection of a logical grouping of managed tenants used by the multi-tenant management platform.|
|tenants|[microsoft.graph.managedTenants.tenant](../resources/managedtenants-tenant.md) collection|The collection of tenants associated with the managing entity.|
|tenantsCustomizedInformation|[microsoft.graph.managedTenants.tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md) collection|The collection of tenant level customized information across managed tenants.|
|tenantsDetailedInformation|[microsoft.graph.managedTenants.tenantDetailedInformation](../resources/managedtenants-tenantdetailedinformation.md) collection|The collection tenant level detailed information across managed tenants.|
|tenantTags|[microsoft.graph.managedTenants.tenantTag](../resources/managedtenants-tenanttag.md) collection|The collection of tenant tags across managed tenants.|
|windowsDeviceMalwareStates|[microsoft.graph.managedTenants.windowsDeviceMalwareState](../resources/managedtenants-windowsdevicemalwarestate.md) collection|The state of malware for Windows devices, registered with Microsoft Endpoint Manager, across managed tenants.|
|windowsProtectionStates|[microsoft.graph.managedTenants.windowsProtectionState](../resources/managedtenants-windowsprotectionstate.md) collection|The protection state for Windows devices, registered with Microsoft Endpoint Manager, across managed tenants.|

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
  "@odata.type": "#microsoft.graph.managedTenants.managedTenant"
}
```
