---
title: "virtualEndpoint resource type"
description: "The virtualEndpoint resource represents a container for Cloud PC management functionality."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# virtualEndpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for APIs to manage Cloud PC.

Use the Cloud PC API to provision and manage virtual desktops for employees in an organization. Use it in conjunction with the [Intune API](../resources/intune-graph-overview.md) to manage physical and virtual endpoints.

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

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the virtual endpoint id. Read-only.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|cloudPCs|[cloudPC](../resources/cloudpc.md) collection|Cloud managed virtual desktops.|
|deviceImages|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) collection|The image resource on Cloud PC.|
|galleryImages|[cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) collection|The gallery image resource on Cloud PC.|
|onPremisesConnections|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) collection|A defined collection of Azure resource information that can be used to establish on-premises network connectivity for Cloud PCs.|
|provisioningPolicies|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) collection|Cloud PC provisioning policy.|
|userSettings|[cloudPcUserSetting](../resources/cloudpcusersetting.md) collection|Cloud PC user settings. |
|auditEvents|[cloudPcAuditEvent](../resources/cloudpcauditevent.md) collection|Cloud PC audit event.|
|supportedRegions|[cloudPcSupportedRegion](../resources/cloudpcsupportedregion.md) collection|Cloud PC supported regions.|
|servicePlans|[cloudPcServicePlan](../resources/cloudpcserviceplan.md) collection|Cloud PC service plans.|
|organizationSettings|[cloudPcOrganizationSettings](../resources/cloudpcorganizationsettings.md) |The Cloud PC organization settings for a tenant. |

## JSON representation

The following is a JSON representation of the resource.
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
  "id": "string"
}
```
