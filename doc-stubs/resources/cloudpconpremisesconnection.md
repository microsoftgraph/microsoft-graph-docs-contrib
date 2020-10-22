---
title: "cloudPcOnPremisesConnection resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# cloudPcOnPremisesConnection resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List onPremisesConnections](../api/virtualendpoint-list-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) collection|Get the cloudPcOnPremisesConnection resources from the onPremisesConnections navigation property.|
|[Create onPremisesConnections](../api/virtualendpoint-post-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Create a new cloudPcOnPremisesConnection object.|
|[Update onPremisesConnections](../api/virtualendpoint-update-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Update the properties of an onPremisesConnections object.|
|[Get onPremisesConnections](../api/virtualendpoint-get-cloudpconpremisesconnection.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Read the properties and relationships of a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[Delete onPremisesConnections](../api/virtualendpoint-delete-onpremisesconnections.md)|None|Delete a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[List cloudPcOnPremisesConnections](../api/cloudpconpremisesconnection-list.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) collection|Get a list of the [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) objects and their properties.|
|[Create cloudPcOnPremisesConnection](../api/cloudpconpremisesconnection-create.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Create a new [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[Get cloudPcOnPremisesConnection](../api/cloudpconpremisesconnection-get.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Read the properties and relationships of a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[Update cloudPcOnPremisesConnection](../api/cloudpconpremisesconnection-update.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Update the properties of a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[Delete cloudPcOnPremisesConnection](../api/cloudpconpremisesconnection-delete.md)|None|Deletes a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|adDomainName|String|**TODO: Add Description**|
|adDomainPassword|String|**TODO: Add Description**|
|adDomainUsername|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|healthCheckStatus|cloudPcOnPremisesConnectionStatus|**TODO: Add Description**. Possible values are: `pending`, `running`, `passed`, `failed`, `unknownFutureValue`.|
|healthCheckStatusDetails|[cloudPcOnPremisesConnectionStatusDetails](../resources/cloudpconpremisesconnectionstatusdetails.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|inUse|Boolean|**TODO: Add Description**|
|organizationalUnit|String|**TODO: Add Description**|
|resourceGroupId|String|**TODO: Add Description**|
|subnetId|String|**TODO: Add Description**|
|subscriptionId|String|**TODO: Add Description**|
|subscriptionName|String|**TODO: Add Description**|
|virtualNetworkId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcOnPremisesConnection",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnection",
  "id": "String (identifier)",
  "displayName": "String",
  "subscriptionId": "String",
  "subscriptionName": "String",
  "adDomainName": "String",
  "adDomainUsername": "String",
  "adDomainPassword": "String",
  "organizationalUnit": "String",
  "resourceGroupId": "String",
  "virtualNetworkId": "String",
  "subnetId": "String",
  "healthCheckStatus": "String",
  "healthCheckStatusDetails": {
    "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionStatusDetails"
  },
  "inUse": "Boolean"
}
```

