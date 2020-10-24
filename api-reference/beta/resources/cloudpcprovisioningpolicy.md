---
title: "cloudPcProvisioningPolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# cloudPcProvisioningPolicy resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create provisioningPolicies](../api/virtualendpoint-post-provisioningpolicies.md)|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md)|Create a new cloudPcProvisioningPolicy object.|
|[List provisioningPolicies](../api/virtualendpoint-list-provisioningpolicies.md)|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) collection|Get the cloudPcProvisioningPolicy resources from the provisioningPolicies navigation property.|
|[Get provisioningPolicies](../api/virtualendpoint-get-cloudpcprovisioningpolicy.md)|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md)|Read the properties and relationships of a [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) object.|
|[Update provisioningPolicies](../api/virtualendpoint-update-provisioningpolicies.md)|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md)|Update the properties of a provisioningPolicies object.|
|[Delete provisioningPolicies](../api/virtualendpoint-delete-provisioningpolicies.md)|None|Delete a [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) object.|
|[Assign](../api/cloudpcprovisioningpolicy-post-assignments.md)|None|Assign the provisioning policy to a group.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The provisioning policy id.|
|displayName|String|*The provisioning policy display name.|
|description|String|The provisioning policy description.|
|onPremisesConnectionId|String|Id of the cloudPcOnPremisesConnection that indicates the virtual network that will enable Cloud PCs to have network connectivity and the domain that the Cloud PCs should join.|
|imageId|String|Id of the OS Image to provision Cloud PCs with. For gallery type image, the id is of {publisher_offer_sku} format.|
|imageDisplayName|String|Display name of the OS Image to provision Cloud PCs with.|
|imageType|cloudPcProvisioningPolicyImageType|Type of the OS Image to provision Cloud PCs with. The type can be gallery or custom. Possible values are: `gallery`, `custom`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[cloudPcProvisioningPolicyAssignment](../resources/cloudpcprovisioningpolicyassignment.md) collection|The collection of assignments for the provisioning policy|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcProvisioningPolicy",
  "baseType": "",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcProvisioningPolicy",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "onPremisesConnectionId": "String",
  "imageId": "String",
  "imageDisplayName": "String",
  "imageType": "String"
}
```
