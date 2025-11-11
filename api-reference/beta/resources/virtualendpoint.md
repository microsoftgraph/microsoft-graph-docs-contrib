---
title: "virtualEndpoint resource type"
description: "Represents a container for Cloud PC management functionality."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 08/13/2024
---

# virtualEndpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for APIs to manage Cloud PCs.

Use the Cloud PC API to provision and manage virtual desktops for employees in an organization, or along with the [Intune API](../resources/intune-graph-overview.md) to manage physical and virtual endpoints.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get effective permissions](../api/virtualendpoint-geteffectivepermissions.md)|String collection|View the effective permissions of the currently authenticated user.|
|[List Cloud PCs](../api/virtualendpoint-list-cloudpcs.md)|[cloudPC](../resources/cloudpc.md) collection|List properties and relationships of the [cloudPC](../resources/cloudpc.md) objects.|
|[List device images](../api/virtualendpoint-list-deviceimages.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) collection|List the properties and relationships of [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) objects.|
|[List gallery images](../api/virtualendpoint-list-galleryimages.md)|[cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) collection|List the properties and relationships of [cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) objects.|
|[Create Cloud PC device image](../api/virtualendpoint-post-deviceimages.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md)|Create a new [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.|
|[List Cloud PC on-premises connections](../api/virtualendpoint-list-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) collection|List properties and relationships of the [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) objects.|
|[Create on-premises connection](../api/virtualendpoint-post-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Create a new [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[List provisioning policies](../api/virtualendpoint-list-provisioningpolicies.md)|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) collection|List properties and relationships of the [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) objects.|
|[Create provisioning policy](../api/virtualendpoint-post-provisioningpolicies.md)|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md)|Create a new [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) object.|
|[List user settings](../api/virtualendpoint-list-usersettings.md)|[cloudPcUserSetting](../resources/cloudpcusersetting.md) collection|Get the cloudPcUserSetting resources from the userSettings navigation property.|
|[Create user setting](../api/virtualendpoint-post-usersettings.md)|[cloudPcUserSetting](../resources/cloudpcusersetting.md)|Create a new cloudPcUserSetting object.|
|[List audit events](../api/virtualendpoint-list-auditevents.md)|[cloudPcAuditEvent](../resources/cloudpcauditevent.md) collection|List properties and relationships of the [cloudPcAuditEvent](../resources/cloudpcauditevent.md) objects.|
|[List supported regions](../api/virtualendpoint-list-supportedregions.md)|[cloudPcSupportedRegion](../resources/cloudpcsupportedregion.md) collection|List properties and relationships of the [cloudPcSupportedRegion](../resources/cloudpcsupportedregion.md) objects.|
|[List service plans](../api/virtualendpoint-list-serviceplans.md)|[cloudPcServicePlan](../resources/cloudpcserviceplan.md) collection|List properties and relationships of the [cloudPcServicePlan](../resources/cloudpcserviceplan.md) objects.|
|[List external partners](../api/virtualendpoint-list-externalpartners.md)|[cloudPcExternalPartner](../resources/cloudpcexternalpartner.md) collection|Get a list of the [cloudPcExternalPartner](../resources/cloudpcexternalpartner.md) objects and their properties.|
|[Create external partner](../api/virtualendpoint-post-externalpartners.md)|[cloudPcExternalPartner](../resources/cloudpcexternalpartner.md)|Create a new [cloudPcExternalPartner](../resources/cloudpcexternalpartner.md) object.|
|[List frontline service plans](../api/virtualendpoint-list-frontlineserviceplans.md) |[cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md) collection|Get a list of the [cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md) objects and their properties.|
|[List bulk actions](../api/virtualendpoint-list-bulkactions.md)|[cloudPcBulkAction](../resources/cloudpcbulkaction.md) collection|Get a list of the [cloudPcBulkAction](../resources/cloudpcbulkaction.md) objects and their properties.|
|[Create bulk action](../api/virtualendpoint-post-bulkactions.md)|[cloudPcBulkAction](../resources/cloudpcbulkaction.md)|Create a new [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object.|
|[Retrieve tenant encryption setting](../api/virtualendpoint-retrievetenantencryptionsetting.md)|[cloudPcTenantEncryptionSetting](../resources/cloudpctenantencryptionsetting.md)|Retrieve the [cloudPcTenantEncryptionSetting](../resources/cloudpctenantencryptionsetting.md) associated with the current authenticated user.|
|[List cloud apps](../api/virtualendpoint-list-cloudapps.md)|[cloudPcCloudApp](../resources/cloudpccloudapp.md) collection|List all the [cloudPcCloudApp](../resources/cloudpccloudapp.md) objects filtered by a provision policy ID.|
|[List managed licenses](../api/virtualendpoint-list-managedlicenses.md)|[cloudPcManagedLicense](../resources/cloudpcmanagedlicense.md) collection|Get information about [cloudPcManagedLicense](../resources/cloudpcmanagedlicense.md) objects that the Cloud PC service manages directly.|
|[List external partner settings (deprecated)](../api/virtualendpoint-list-externalpartnersettings.md)|[cloudPcExternalPartnerSetting](../resources/cloudpcexternalpartnersetting.md) collection|Get a list of the [cloudPcExternalPartnerSetting](../resources/cloudpcexternalpartnersetting.md) objects and their properties.|
|[Create external partner setting (deprecated)](../api/virtualendpoint-post-externalpartnersettings.md)|[cloudPcExternalPartnerSetting](../resources/cloudpcexternalpartnersetting.md)|Create a new [cloudPcExternalPartnerSetting](../resources/cloudpcexternalpartnersetting.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the virtual endpoint. Read-only. Inherited from [entity](../resources/entity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|auditEvents|[cloudPcAuditEvent](../resources/cloudpcauditevent.md) collection|Cloud PC audit event.|
|bulkActions|[cloudPcBulkAction](../resources/cloudpcbulkaction.md) collection|Bulk actions applied to a Cloud PC.|
|cloudApps|[cloudPcCloudApp](../resources/cloudpccloudapp.md) collection|A collection of cloud apps that are built on frontline shared options and provide Windows 365 end users with access to app-only sessions instead of a full desktop experience.|
|cloudPCs|[cloudPC](../resources/cloudpc.md) collection|Cloud managed virtual desktops.|
|crossCloudGovernmentOrganizationMapping|[cloudPcCrossCloudGovernmentOrganizationMapping](../resources/cloudpccrosscloudgovernmentorganizationmapping.md)|Cloud PC organization mapping between public and US Government Community Cloud (GCC) organizations.|
|deviceImages|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) collection|The image resource on Cloud PC.|
|externalPartners|[cloudPcExternalPartner](../resources/cloudpcexternalpartner.md) collection|The external partners on a Cloud PC.|
|frontLineServicePlans|[cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md) collection|Front-line service plans for a Cloud PC.|
|galleryImages|[cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) collection|The gallery image resource on Cloud PC.|
|managedLicenses|[cloudPcManagedLicense](../resources/cloudpcmanagedlicense.md) collection|The managed licenses for Cloud PCs in the organization.|
|onPremisesConnections|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) collection|A defined collection of Azure resource information that can be used to establish on-premises network connectivity for Cloud PCs.|
|organizationSettings|[cloudPcOrganizationSettings](../resources/cloudpcorganizationsettings.md) |The Cloud PC organization settings for a tenant. |
|provisioningPolicies|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) collection|Cloud PC provisioning policy.|
|report|[cloudPcReport](../resources/cloudpcreport.md)|Cloud PC-related reports. Read-only.|
|servicePlans|[cloudPcServicePlan](../resources/cloudpcserviceplan.md) collection|Cloud PC service plans.|
|snapshots|[cloudPcSnapshot](../resources/cloudpcsnapshot.md) collection|Cloud PC snapshots.|
|supportedRegions|[cloudPcSupportedRegion](../resources/cloudpcsupportedregion.md) collection|Cloud PC supported regions.|
|userSettings|[cloudPcUserSetting](../resources/cloudpcusersetting.md) collection|Cloud PC user settings. |
|tenantEncryptionSetting|[cloudPcTenantEncryptionSetting](../resources/cloudPcTenantEncryptionSetting.md) collection|Cloud PC encryption setting for a tenant. |
|externalPartnerSettings (deprecated)|[cloudPcExternalPartnerSetting](../resources/cloudpcexternalpartnersetting.md) collection|The external partner settings on a Cloud PC.|
|reports (deprecated)|[cloudPcReports](../resources/cloudpcreports.md)|Cloud PC-related reports.|

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
