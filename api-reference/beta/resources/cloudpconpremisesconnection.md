---
title: "cloudPcOnPremisesConnection resource type"
description: "Entity that represents a defined collection of Azure resource information that can be used to establish an on-premises connection"
author: "jiajyang"
localization_priority: Normal
ms.prod: "microsoft_cloudpc"
doc_type: resourcePageType
---

# cloudPcOnPremisesConnection resource type

Namespace: microsoft.graph

Entity that represents a defined collection of Azure resource information that can be used to establish an on-premises connection

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get cloudPcOnPremisesConnection](../api/virtualendpoint-get-cloudpconpremisesconnection.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Read the properties and relationships of a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[List cloudPcOnPremisesConnections](../api/virtualendpoint-list-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) collection|Get a list of the [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) objects and their properties.|
|[Create cloudPcOnPremisesConnection](../api/virtualendpoint-post-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Create a new [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[Update cloudPcOnPremisesConnection](../api/virtualendpoint-update-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Update the properties of a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[Delete cloudPcOnPremisesConnection](../api/virtualendpoint-delete-onpremisesconnections.md)|None|Deletes a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the on-premises connection. This property is read-only.|
|displayName|String|The on-premises connection display name.|
|subscriptionId|String|The id of the target Azure subscription.|
|subscriptionName|String|The name of the target Azure subscription.|
|adDomainName|String|Azure Directory domain name to join.|
|adDomainUsername|String|The username of the domain administrator.|
|adDomainPassword|String|The encrypted password of the domain administrator.|
|organizationalUnit|String|Organizational unit (OU) where the computer account will be created. This is an optional field. If this parameter is null, the well known computer object container (OU) will be used as published in the domain.|
|resourceGroupId|String|The id of the target resource group. It should be in this format: “/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}”.|
|virtualNetworkId|String|The id of the target virtual network. It should be in this format: “/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}”.|
|subnetId|String|The id of the target subnet. It should be in this format: “/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkId}/subnets/{subnetName}”.|
|healthCheckStatus|cloudPcOnPremisesConnectionStatus|The health check status of the on-premises connection. For example, if status is “passed”, the on-premises connection has passed all our checks. Possible values are: `Pending`, `Running`, `Passed`, `Failed`, `UnknownFutureValue`.|
|healthCheckStatusDetails|[cloudPcOnPremisesConnectionStatusDetails](../resources/cloudpconpremisesconnectionstatusdetails.md)|The details of the health checks done and their corresponding health check results.|
|inUse|Boolean|The on-premises connection is in use or not. If the connection is in use, it cannot be deleted.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcOnPremisesConnection",
  "baseType": "microsoft.graph.entity",
  "openType": false,
  "optionalProperties": ["healthCheckStatusDetails"]
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
  "healthCheckStatus": "string",
  "healthCheckStatusDetails": {
    "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionStatusDetails"
  },
  "inUse": "Boolean"
}
```
