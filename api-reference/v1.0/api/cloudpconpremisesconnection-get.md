---
title: "Get cloudPcOnPremisesConnection"
description: "Read the properties and relationships of the cloudPcOnPremisesConnection object."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# Get cloudPcOnPremisesConnection

Namespace: microsoft.graph

Read the properties and relationships of the [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.

[!INCLUDE [on-premise-rename-note](../../includes/on-premise-rename-note.md)]

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudPcOnPremisesConnection_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpconpremisesconnection-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/onPremisesConnections/{id}
```

## Optional query parameters

This method supports `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object in the response body.

## Examples

### Example 1: Get the default properties of an Azure network connection

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_cloudpconpremisesconnection"
}
-->

``` http
GET https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/onPremisesConnections/{id}
```

---

#### Response
The following example shows the response.
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcOnPremisesConnection"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnection",
    "id": "9ec90ff8-fd63-4fb9-ab5a-aa4fdccffff",
    "connectionType": "hybridAzureADJoin",
    "displayName": "Display Name value",
    "subscriptionId": "0ac520ee-14c0-480f-b6c9-0a90c585ffff",
    "subscriptionName": "Subscription Name value",
    "adDomainName": "Active Directory Domain Name value",
    "adDomainUsername": "Active Directory Domain User Name value",
    "organizationalUnit": "Organization Unit value",
    "resourceGroupId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ffff/resourceGroups/ExampleRG",
    "virtualNetworkId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet",
    "subnetId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ffff/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet/subnets/default",
    "healthCheckStatus": "running",
    "virtualNetworkLocation": "westus2"
}
```

### Example 2: Get the selected properties of an Azure network connection, including healthCheckStatusDetail

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_cloudpconpremisesconnection_withDetails"
}
-->

``` http
GET https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/onPremisesConnections/{id}?$select=id,displayName,healthCheckStatus,healthCheckStatusDetail,inUse
```

---

#### Response
The following example shows the response.
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcOnPremisesConnection"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnection",
    "id": "9ec90ff8-fd63-4fb9-ab5a-aa4fdccffff",
    "displayName": "Display Name value",
    "healthCheckStatus": "failed",
    "healthCheckStatusDetail": {
      "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionStatusDetail",
      "startDateTime": "2020-11-03T12:43:14Z",
      "endDateTime": "2020-11-03T12:43:32Z",
      "healthChecks": [
        {
          "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionHealthCheck",
          "status": "failed",
          "displayName": "Display Name value",
          "startDateTime": "2020-11-03T12:43:14Z",
          "endDateTime": "2020-11-03T12:43:15Z",
          "errorType": "dnsCheckFqdnNotFound",
          "recommendedAction": "We did not find the provided domain name; please re-enter",
          "additionalDdetail": null,
          "correlationId": "992e64f0-231c-46b0-8918-c5aed0585f53"
        },
        {
          "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionHealthCheck",
          "status": "passed",
          "displayName": "Display Name value",
          "startDateTime": "2020-11-03T12:43:15Z",
          "endDateTime": "2020-11-03T12:43:26Z",
          "errorType": null,
          "recommendedAction": null,
          "additionalDetail": null,
          "correlationId": null
        },
        {
          "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionHealthCheck",
          "status": "failed",
          "displayName": "Display Name value",
          "startDateTime": "2020-11-03T12:43:27Z",
          "endDateTime": "2020-11-03T12:43:32Z",
          "errorType": "endpointConnectivityCheckUrlNotWhitelisted",
          "recommendedAction": "Recommended Action value",
          "additionaldDetail": "Additional Details value",
          "correlationId": "119f8363-ace2-412b-a79a-867dc0737db0"
        },
        {
          "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionHealthCheck",
          "status": "passed",
          "displayName": "Display Name value",
          "startDateTime": null,
          "endDateTime": null,
          "errorType": null,
          "recommendedAction": null,
          "additionaldDetail": null,
          "correlationId": "119f8363-ace2-412b-a79a-867dc0737db0"
        }
      ]
    },
    "inUse": false
}
```
