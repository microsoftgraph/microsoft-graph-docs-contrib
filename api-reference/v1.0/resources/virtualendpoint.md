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
|[List cloudPCs](../api/virtualendpoint-list-cloudpcs.md)|[cloudPC](../resources/cloudpc.md) collection|List properties and relationships of the [cloudPC](../resources/cloudpc.md) objects.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier (ID) for the virtual endpoint. Read-only. Inherited from [entity](../resources/entity.md).|

## Relationships
|Property|Type|Description|
|:---|:---|:---|
|cloudPCs|[cloudPC](../resources/cloudpc.md) collection|This Cloud PC is also enrolled into Intune and managed through the Microsoft Endpoint Manager portal, so the Cloud PC also has a corresponding Intune managed device ID.|
|provisioningPolicies|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) collection|Cloud PC provisioning policy.|

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
