---
title: "virtualEndpoint resource type"
description: "Represents a container for APIs to manage Cloud PCs."
author: "RuiHou105"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
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
|[Create cloudPcDeviceImage](../api/virtualendpoint-post-deviceimages.md)|[cloudPcDeviceImage](../resources/cloudpcdeviceimage.md)|Create a new [cloudPcDeviceImage](../resources/cloudpcdeviceimage.md) object.|
|[Create cloudPcOnPremisesConnection](../api/virtualendpoint-post-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Create a new [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|

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
