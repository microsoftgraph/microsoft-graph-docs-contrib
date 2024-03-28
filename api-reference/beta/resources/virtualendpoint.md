---
title: "virtualEndpoint resource type"
description: "Represents a container for Cloud PC management functionality."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# virtualEndpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!CAUTION]
> The **cloudPcSharedUseServicePlan** resource is deprecated and stopped returning data on October 8, 2023. Existing apps that use this feature with the **cloudPcSharedUseServicePlan** should be updated. 

Represents a container for APIs to manage Cloud PCs.

Use the Cloud PC API to provision and manage virtual desktops for employees in an organization, or along with the [Intune API](../resources/intune-graph-overview.md) to manage physical and virtual endpoints.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get effective permissions](../api/virtualendpoint-geteffectivepermissions.md)|String collection|View the effective permissions of the currently authenticated user.|
|[List cloudPCs](../api/virtualendpoint-list-cloudpcs.md)|[cloudPC](../resources/cloudpc.md) collection|List properties and relationships of the [cloudPC](../resources/cloudpc.md) objects.|
|[List deviceImages](../api/virtualendpoint-list-deviceimages.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) collection|List the properties and relationships of [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) objects.|
|[List galleryImages](../api/virtualendpoint-list-galleryimages.md)|[cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) collection|List the properties and relationships of [cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) objects.|
|[Create cloudPcDeviceImage](../api/virtualendpoint-post-deviceimages.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md)|Create a new [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.|
|[List onPremisesConnections](../api/virtualendpoint-list-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) collection|List properties and relationships of the [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) objects.|
|[Create cloudPcOnPremisesConnection](../api/virtualendpoint-post-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Create a new [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[List provisioningPolicies](../api/virtualendpoint-list-provisioningpolicies.md)|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) collection|List properties and relationships of the [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) objects.|
|[Create cloudPcProvisioningPolicy](../api/virtualendpoint-post-provisioningpolicies.md)|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md)|Create a new [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) object.|
|[List userSettings](../api/virtualendpoint-list-usersettings.md)|[cloudPcUserSetting](../resources/cloudpcusersetting.md) collection|Get the cloudPcUserSetting resources from the userSettings navigation property.|
|[Create cloudPcUserSetting](../api/virtualendpoint-post-usersettings.md)|[cloudPcUserSetting](../resources/cloudpcusersetting.md)|Create a new cloudPcUserSetting object.|
|[List auditEvents](../api/virtualendpoint-list-auditevents.md)|[cloudPcAuditEvent](../resources/cloudpcauditevent.md) collection|List properties and relationships of the [cloudPcAuditEvent](../resources/cloudpcauditevent.md) objects.|
|[List supportedRegions](../api/virtualendpoint-list-supportedregions.md)|[cloudPcSupportedRegion](../resources/cloudpcsupportedregion.md) collection|List properties and relationships of the [cloudPcSupportedRegion](../resources/cloudpcsupportedregion.md) objects.|
|[List servicePlans](../api/virtualendpoint-list-serviceplans.md)|[cloudPcServicePlan](../resources/cloudpcserviceplan.md) collection|List properties and relationships of the [cloudPcServicePlan](../resources/cloudpcserviceplan.md) objects.|
|[List snapshots](../api/virtualendpoint-list-snapshots.md)|[cloudPcSnapshot](../resources/cloudpcsnapshot.md) collection|Get a list of [cloudPcSnapshot](../resources/cloudpcsnapshot.md) objects and their properties.|
|[List externalPartnerSettings](../api/virtualendpoint-list-externalpartnersettings.md)|[cloudPcExternalPartnerSetting](../resources/cloudpcexternalpartnersetting.md) collection|Get a list of the [cloudPcExternalPartnerSetting](../resources/cloudpcexternalpartnersetting.md) objects and their properties.|
|[Create cloudPcExternalPartnerSetting](../api/virtualendpoint-post-externalpartnersettings.md)|[cloudPcExternalPartnerSetting](../resources/cloudpcexternalpartnersetting.md)|Create a new [cloudPcExternalPartnerSetting](../resources/cloudpcexternalpartnersetting.md) object.|
|[List frontLintServicePlans](../api/virtualendpoint-list-frontlineserviceplans.md) |[cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md) collection|Get a list of the [cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md) objects and their properties.|
|[List sharedUseServicePlans](../api/virtualendpoint-list-shareduseserviceplans.md) (deprecated)|[cloudPcSharedUseServicePlan](../resources/cloudpcshareduseserviceplan.md) collection|List properties and relationships of the [cloudPcSharedUseServicePlan](../resources/cloudpcshareduseserviceplan.md) objects.|
|[List bulkActions](../api/virtualendpoint-list-bulkactions.md)|[cloudPcBulkAction](../resources/cloudpcbulkaction.md) collection|Get a list of the [cloudPcBulkAction](../resources/cloudpcbulkaction.md) objects and their properties.|
|[Create cloudPcBulkAction](../api/virtualendpoint-post-bulkactions.md)|[cloudPcBulkAction](../resources/cloudpcbulkaction.md)|Create a new [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the virtual endpoint. Read-only. Inherited from [entity](../resources/entity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|auditEvents|[cloudPcAuditEvent](../resources/cloudpcauditevent.md) collection|Cloud PC audit event.|
|bulkActions|[cloudPcBulkAction](../resources/cloudpcbulkaction.md) collection|Cloud PC bulk action.|
|cloudPCs|[cloudPC](../resources/cloudpc.md) collection|Cloud managed virtual desktops.|
|crossCloudGovernmentOrganizationMapping|[cloudPcCrossCloudGovernmentOrganizationMapping](../resources/cloudpccrosscloudgovernmentorganizationmapping.md)|Cloud PC organization mapping between public and US Government Community Cloud (GCC) organizations.|
|deviceImages|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) collection|The image resource on Cloud PC.|
|externalPartnerSettings|[cloudPcExternalPartnerSetting](../resources/cloudpcexternalpartnersetting.md) collection|The external partner settings on a Cloud PC.|
|frontLineServicePlans|[cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md) collection|Front-line service plans for a Cloud PC.|
|galleryImages|[cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) collection|The gallery image resource on Cloud PC.|
|onPremisesConnections|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) collection|A defined collection of Azure resource information that can be used to establish on-premises network connectivity for Cloud PCs.|
|organizationSettings|[cloudPcOrganizationSettings](../resources/cloudpcorganizationsettings.md) |The Cloud PC organization settings for a tenant. |
|provisioningPolicies|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) collection|Cloud PC provisioning policy.|
|reports|[cloudPcReports](../resources/cloudpcreports.md)|Cloud PC related reports.|
|servicePlans|[cloudPcServicePlan](../resources/cloudpcserviceplan.md) collection|Cloud PC service plans.|
|snapshots|[cloudPcSnapshot](../resources/cloudpcsnapshot.md) collection|Cloud PC snapshots.|
|supportedRegions|[cloudPcSupportedRegion](../resources/cloudpcsupportedregion.md) collection|Cloud PC supported regions.|
|userSettings|[cloudPcUserSetting](../resources/cloudpcusersetting.md) collection|Cloud PC user settings. |
|sharedUseServicePlans (deprecated)|[cloudPcSharedUseServicePlan](../resources/cloudpcshareduseserviceplan.md) collection|Cloud PC shared-use service plans. The **sharedUseServicePlans** relationship is deprecated and stopped returning data on October 8, 2023. Going forward, use the **frontLineServicePlans** relationship.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEndpoint",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.virtualEndpoint",
  "id": "String (identifier)"
}
```
