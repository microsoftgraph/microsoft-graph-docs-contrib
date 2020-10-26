---
title: "Create onPremisesConnections"
description: "Create a new cloudPcOnPremisesConnection object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create onPremisesConnections
Namespace: microsoft.graph

Create a new cloudPcOnPremisesConnection object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/onPremisesConnections
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.

The following table shows the properties that are required when you create the [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The on-premises connection id Inherited from [entity](../resources/entity.md)|
|displayName|String|The on-premises connection display name|
|subscriptionId|String|The id of the target Azure subscription|
|adDomainName|String|Azure Directory domain name to join|
|adDomainUsername|String|The username of the domain administrator|
|adDomainPassword|String|The encrypted password of the domain administrator|
|resourceGroupId|String|The id of the target resource group. It should be in this format: “/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}”|
|virtualNetworkId|String|The id of the target virtual network. It should be in this format: “/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}”|
|subnetId|String|The id of the target subnet. It should be in this format: “/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkId}/subnets/{subnetName}”|


## Response

If successful, this method returns a `201 Created` response code and a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_cloudpconpremisesconnection"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/onPremisesConnections
Content-Type: application/json
Content-length: 556

{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnection",
  "displayName": "test-canary-01",
  "subscriptionId": "0ac520ee-14c0-480f-b6c9-0a90c585ad47",
  "adDomainName": "contoso001.com",
  "adDomainUsername": "dcadmin",
  "adDomainPassword": "aaaaa",
  "resourceGroupId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG",
  "virtualNetworkId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET",
  "subnetId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET/subnets/canary01-Subnet"
}
```


### Response
**Note:** Here is an example of the response. The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcOnPremisesConnection"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnection",
  "id": "ac2ad805-167e-49ee-9bef-196c4ce7f1db",
  "displayName": "test-canary-01",
  "subscriptionId": "0ac520ee-14c0-480f-b6c9-0a90c585ad47",
  "subscriptionName": "CPC customer 001 test subscription",
  "adDomainName": "contoso001.com",
  "adDomainUsername": "dcadmin",
  "organizationalUnit": "OU=Domain Controllers, DC=contoso001, DC=com",
  "resourceGroupId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG",
  "virtualNetworkId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET",
  "subnetId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET/subnets/canary01-Subnet",  
  "healthCheckStatus": "pending",
  "inUse": false
}
```

