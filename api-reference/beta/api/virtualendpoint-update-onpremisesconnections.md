---
title: "Update onPremisesConnections"
description: "Update the properties of an onPremisesConnections object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update onPremisesConnections

Namespace: microsoft.graph

Update the properties of an onPremisesConnections object.

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
PATCH /deviceManagement/virtualEndpoint/onPremisesConnections/{id}
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
|id|String|The on-premises connection id. Inherited from [entity](../resources/entity.md)|
|displayName|String|The on-premises connection display name|
|subscriptionId|String|The id of the target Azure subscription|
|adDomainName|String|Active Directory domain name to join|
|adDomainUsername|String|The username of the domain administrator|
|adDomainPassword|String|The encrypted password of the domain administrator|
|resourceGroupId|String|The id of the target resource group. It should be in this format: “/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}”|
|virtualNetworkId|String|The name of the target virtual network. It should be in this format: “/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}”|
|subnetId|String|The id of the target subnet. It should be in this format: “/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkId}/subnets/{subnetName}”|

## Response

If successful, this method returns a `200 OK` response code and an updated [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "update_onpremisesconnections"
}
-->

``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/onPremisesConnections
Content-Type: application/json
Content-length: 556

{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnection",
  "displayName": "test-canary-02",
  "subscriptionId": "0ac520ee-14c0-480f-b6c9-0a90c585ad47",
  "adDomainName": "contoso001.com",
  "adDomainUsername": "dcadmin",
  "adDomainPassword": "12345",
  "organizationalUnit": "OU=Domain Controllers, DC=contoso001, DC=com",
  "resourceGroupId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG",
  "virtualNetworkId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET",
  "subnetId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET/subnets/canary01-Subnet"
}
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnection",
  "id": "9ec90ff8-fd63-4fb9-ab5a-aa4fdcc43ec9",
  "displayName": "test-canary-02",
  "subscriptionId": "0ac520ee-14c0-480f-b6c9-0a90c585ad47",
  "subscriptionName": "CPC customer 001 test subscription",
  "adDomainName": "contoso001.com",
  "adDomainUsername": "dcadmin",
  "organizationalUnit": "OU=Domain Controllers, DC=contoso001, DC=com",
  "resourceGroupId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG",
  "virtualNetworkId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET",
  "subnetId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET/subnets/canary01-Subnet",
  "healthCheckStatus": "running",
  "inUse": false
}
```
