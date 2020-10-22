---
title: "cloudPC resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# cloudPC resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPCs](../api/virtualendpoint-list-cloudpcs.md)|[cloudPC](../resources/cloudpc.md) collection|Get the cloudPC resources from the cloudPCs navigation property.|
|[Create cloudPCs](../api/virtualendpoint-post-cloudpcs.md)|[cloudPC](../resources/cloudpc.md)|Create a new cloudPC object.|
|[Update cloudPCs](../api/virtualendpoint-update-cloudpcs.md)|[cloudPC](../resources/cloudpc.md)|Update the properties of a cloudPCs object.|
|[Get cloudPCs](../api/virtualendpoint-get-cloudpc.md)|[cloudPC](../resources/cloudpc.md)|Read the properties and relationships of a [cloudPC](../resources/cloudpc.md) object.|
|[Delete cloudPCs](../api/virtualendpoint-delete-cloudpcs.md)|None|Delete a [cloudPC](../resources/cloudpc.md) object.|
|[List cloudPCs](../api/cloudpc-list.md)|[cloudPC](../resources/cloudpc.md) collection|Get a list of the [cloudPC](../resources/cloudpc.md) objects and their properties.|
|[Create cloudPC](../api/cloudpc-create.md)|[cloudPC](../resources/cloudpc.md)|Create a new [cloudPC](../resources/cloudpc.md) object.|
|[Get cloudPC](../api/cloudpc-get.md)|[cloudPC](../resources/cloudpc.md)|Read the properties and relationships of a [cloudPC](../resources/cloudpc.md) object.|
|[Update cloudPC](../api/cloudpc-update.md)|[cloudPC](../resources/cloudpc.md)|Update the properties of a [cloudPC](../resources/cloudpc.md) object.|
|[Delete cloudPC](../api/cloudpc-delete.md)|None|Deletes a [cloudPC](../resources/cloudpc.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|imageDisplayName|String|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|managedDeviceId|String|**TODO: Add Description**|
|managedDeviceName|String|**TODO: Add Description**|
|provisioningPolicyId|String|**TODO: Add Description**|
|servicePlanId|String|**TODO: Add Description**|
|servicePlanName|String|**TODO: Add Description**|
|status|cloudPcStatus|**TODO: Add Description**. Possible values are: `notProvisioned`, `provisioning`, `provisioned`, `upgrading`, `inGracePeriod`, `deprovisioning`, `upgradeFailed`, `provisionFailed`, `deprovisionFailed`, `reprovisionFailed`.|
|userPrincipalName|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPC",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPC",
  "id": "String (identifier)",
  "displayName": "String",
  "imageDisplayName": "String",
  "managedDeviceId": "String",
  "managedDeviceName": "String",
  "provisioningPolicyId": "String",
  "servicePlanId": "String",
  "servicePlanName": "String",
  "status": "String",
  "userPrincipalName": "String",
  "lastModifiedDateTime": "String (timestamp)"
}
```

