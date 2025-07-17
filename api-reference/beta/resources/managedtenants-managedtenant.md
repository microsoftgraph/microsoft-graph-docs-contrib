---
title: "managedTenant resource type"
description: "Represent the available operations that interact with the multi-tenant management platform."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# managedTenant resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

As the root resource of the Microsoft 365 Lighthouse API, **managedTenant** represents the capabilities available to a Managed Service Provider (MSP) to scale the remote management of its customer tenants to help get them into a healthy and secure state.

The Microsoft 365 Lighthouse API is defined in the OData subnamespace, `microsoft.graph.managedTenants`.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|aggregatedPolicyCompliances|[microsoft.graph.managedTenants.aggregatedPolicyCompliance](../resources/managedtenants-aggregatedpolicycompliance.md) collection|Aggregate view of device compliance policies across managed tenants.|
|auditEvents|[microsoft.graph.managedTenants.auditEvent](../resources/managedtenants-auditevent.md) collection|The collection of audit events across managed tenants.|
|cloudPcConnections|[microsoft.graph.managedTenants.cloudPcConnection](../resources/managedtenants-cloudpcconnection.md) collection|The collection of cloud PC connections across managed tenants.|
|cloudPcDevices|[microsoft.graph.managedTenants.cloudPcDevice](../resources/managedtenants-cloudpcdevice.md) collection|The collection of cloud PC devices across managed tenants.|
|cloudPcsOverview|[microsoft.graph.managedTenants.cloudPcOverview](../resources/managedtenants-cloudpcoverview.md) collection|Overview of cloud PC information across managed tenants.|
|conditionalAccessPolicyCoverages|[microsoft.graph.managedTenants.conditionalAccessPolicyCoverage](../resources/managedtenants-conditionalaccesspolicycoverage.md) collection|Aggregate view of conditional access policy coverage across managed tenants.|
|credentialUserRegistrationsSummaries|[microsoft.graph.managedTenants.credentialUserRegistrationsSummary](../resources/managedtenants-credentialuserregistrationssummary.md) collection|Summary information for user registration for multi-factor authentication and self service password reset across managed tenants.|
|deviceCompliancePolicySettingStateSummaries|[microsoft.graph.managedTenants.deviceCompliancePolicySettingStateSummary](../resources/managedtenants-devicecompliancepolicysettingstatesummary.md) collection|Summary information for device compliance policy setting states across managed tenants.|
|managedDeviceCompliances|[microsoft.graph.managedTenants.managedDeviceCompliance](../resources/managedtenants-manageddevicecompliance.md) collection|The collection of compliance for managed devices across managed tenants.|
|managedDeviceComplianceTrends|[microsoft.graph.managedTenants.managedDeviceComplianceTrend](../resources/managedtenants-manageddevicecompliancetrend.md) collection|Trend insights for device compliance across managed tenants.|
|managementActions|[microsoft.graph.managedTenants.managementAction](../resources/managedtenants-managementaction.md) collection|The collection of baseline management actions across managed tenants.|
|managementActionTenantDeploymentStatuses|[microsoft.graph.managedTenants.managementActionTenantDeploymentStatus](../resources/managedtenants-managementactiontenantdeploymentstatus.md) collection|The tenant level status of management actions across managed tenants.|
|managementIntents|[microsoft.graph.managedTenants.managementIntent](../resources/managedtenants-managementintent.md) collection|The collection of baseline management intents across managed tenants.|
|managementTemplates|[microsoft.graph.managedTenants.managementTemplate](../resources/managedtenants-managementtemplate.md) collection|The collection of baseline management templates across managed tenants.|
|myRoles|[microsoft.graph.managedTenants.myRole](../resources/managedtenants-myrole.md) collection|The collection of role assignments to a signed-in user for a managed tenant.|
|tenantGroups|[microsoft.graph.managedTenants.tenantGroup](../resources/managedtenants-tenantgroup.md) collection|The collection of a logical grouping of managed tenants used by the multi-tenant management platform.|
|tenants|[microsoft.graph.managedTenants.tenant](../resources/managedtenants-tenant.md) collection|The collection of tenants associated with the managing entity.|
|tenantsCustomizedInformation|[microsoft.graph.managedTenants.tenantCustomizedInformation](../resources/managedtenants-tenantcustomizedinformation.md) collection|The collection of tenant level customized information across managed tenants.|
|tenantsDetailedInformation|[microsoft.graph.managedTenants.tenantDetailedInformation](../resources/managedtenants-tenantdetailedinformation.md) collection|The collection tenant level detailed information across managed tenants.|
|tenantTags|[microsoft.graph.managedTenants.tenantTag](../resources/managedtenants-tenanttag.md) collection|The collection of tenant tags across managed tenants.|
|tenantUsage|[microsoft.graph.managedTenants.tenantUsage](../resources/managedtenants-tenantusage.md) collection|The collection of tenant usage across managed tenants.|
|windowsDeviceMalwareStates|[microsoft.graph.managedTenants.windowsDeviceMalwareState](../resources/managedtenants-windowsdevicemalwarestate.md) collection|The state of malware for Windows devices, registered with Microsoft Endpoint Manager, across managed tenants.|
|windowsProtectionStates|[microsoft.graph.managedTenants.windowsProtectionState](../resources/managedtenants-windowsprotectionstate.md) collection|The protection state for Windows devices, registered with Microsoft Endpoint Manager, across managed tenants.|

## JSON representation
The following JSON representation shows the resource type.
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
