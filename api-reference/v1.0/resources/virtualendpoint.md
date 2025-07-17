---
title: "virtualEndpoint resource type"
description: "Represents a container for APIs to manage Cloud PCs."
author: "RuiHou105"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 08/19/2024
---

# virtualEndpoint resource type

Namespace: microsoft.graph

Represents a container for APIs to manage Cloud PCs.

Use the Cloud PC API to provision and manage virtual desktops for employees in an organization, or along with the [Intune API](../resources/intune-graph-overview.md) to manage physical and virtual endpoints.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List auditEvents](../api/virtualendpoint-list-auditevents.md)|[cloudPcAuditEvent](../resources/cloudpcauditevent.md) collection|List properties and relationships of the [cloudPcAuditEvent](../resources/cloudpcauditevent.md) objects.|
|[List cloudPCs](../api/virtualendpoint-list-cloudpcs.md)|[cloudPC](../resources/cloudpc.md) collection|List the [cloudPC](../resources/cloudpc.md) devices in a tenant.|
|[List onPremisesConnections](../api/virtualendpoint-list-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) collection|List properties and relationships of the [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) objects.|
|[List deviceImages](../api/virtualendpoint-list-deviceimages.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) collection|List the properties and relationships of [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) objects (operating system images) uploaded to Cloud PC.|
|[List galleryImages](../api/virtualendpoint-list-galleryimages.md)|[cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) collection|List the properties and relationships of [cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) objects.|
|[List provisioningPolicies](../api/virtualendpoint-list-provisioningpolicies.md)|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) collection|List properties and relationships of the [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) objects.|
|[List userSettings](../api/virtualendpoint-list-usersettings.md)|[cloudPcUserSetting](../resources/cloudpcusersetting.md) collection|Get a list of [cloudPcUserSetting](../resources/cloudpcusersetting.md) objects and their properties.|
|[Create cloudPcDeviceImage](../api/virtualendpoint-post-deviceimages.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md)|Create a new [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.|
|[Create cloudPcProvisioningPolicy](../api/virtualendpoint-post-provisioningpolicies.md)|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md)|Create a new [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) object.|
|[Create cloudPcOnPremisesConnection](../api/virtualendpoint-post-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Create a new [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[Create cloudPcUserSetting](../api/virtualendpoint-post-usersettings.md)|[cloudPcUserSetting](../resources/cloudpcusersetting.md)|Create a new [cloudPcUserSetting](../resources/cloudpcusersetting.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier (ID) for the virtual endpoint. Read-only. Inherited from [entity](../resources/entity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|auditEvents|[cloudPcAuditEvent](../resources/cloudpcauditevent.md) collection|A collection of Cloud PC audit events.|
|cloudPCs|[cloudPC](../resources/cloudpc.md) collection|A collection of cloud-managed virtual desktops.|
|deviceImages|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) collection|A collection of device image resources on Cloud PC.|
|galleryImages|[cloudPcGalleryImage](../resources/cloudpcgalleryimage.md) collection|A collection of gallery image resources on Cloud PC.|
|onPremisesConnections|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) collection|A defined collection of Azure resource information that can be used to establish Azure network connections for Cloud PCs.|
|provisioningPolicies|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) collection|A collection of Cloud PC provisioning policies.|
|userSettings|[cloudPcUserSetting](../resources/cloudpcusersetting.md) collection|A collection of Cloud PC user settings. |

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
