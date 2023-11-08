---
title: "List openNetworkAzureSecurityGroupFindings"
description: "Get a list of the openNetworkAzureSecurityGroupFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List openNetworkAzureSecurityGroupFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [openNetworkAzureSecurityGroupFinding](../resources/opennetworkazuresecuritygroupfinding.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/azure/findings/graph.openNetworkAzureSecurityGroupFinding
```

## Optional query parameters
This method supports the `$filter` and `$orderby` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.d.

## Response

If successful, this method returns a `200 OK` response code and a collection of [openNetworkAzureSecurityGroupFinding](../resources/opennetworkazuresecuritygroupfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_opennetworkazuresecuritygroupfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/findings/graph.openNetworkAzureSecurityGroupFinding
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.openNetworkAzureSecurityGroupFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/azure/findings/graph.openNetworkAzureSecurityGroupFinding",
  "value": [
    {
      "@odata.type": "graph.openNetworkAzureSecurityGroupFinding",
      "id": "cmVzb3VyY2VmaW5kaW5nMTAwMDAx",
      "securityGroup": {
        "@odata.type": "graph.azureAuthorizationSystemResource",
        "id": "L3N1YnNjcmlwdGlvbnMvZTE2MGIzNGItMmEwZi00MWY2LWFhZjMtMDljNWE5ZjQzNzY4L3Jlc291cmNlR3JvdXBzL1FBUnNjR3JwL3Byb3ZpZGVycy9NaWNyb3NvZnQuTmV0d29yay9uZXR3b3JrU2VjdXJpdHlHcm91cHMvY2xvdWRrbm94LW5zZw==",
        "externalId": "/subscriptions/e160b34b-2a0f-41f6-aaf3-09c5a9f43768/resourceGroups/QARscGrp/providers/Microsoft.Network/networkSecurityGroups/cloudknox-nsg",
        "displayName": "QARscGrp/cloudknox-nsg",
        "resourceType": "networkSecurityGroups",
        "authorizationSystem": {
          "@odata.type": "graph.azureAuthorizationSystem",
          "id": "{Id}",
          "authorizationSystemId": "e160b34b-2a0f-41f6-aaf3-09c5a9f43768",
          "authorizationSystemName": "ck-qa",
          "authorizationSystemType": "azure"
        }
      },
      "inboundPorts": {
        "@odata.type": "graph.allInboundPorts"
      },
      "virtualMachines@odata.count": 0, // there is no annotation for auto-expanding the count, but it always allowed for a service to respond with more data than is requested; if there were an annotation, we would use it
      "createdDateTime": "2020-10-11T20:11:45.671Z"
    },
 {
      "id": "cmVzb3VyY2VmaW5kaW5nMTAwMDAy",
      "securityGroup": {
        "@odata.type": "graph.azureAuthorizationSystemResource",
        "id": "L3N1YnNjcmlwdGlvbnMvZTE2MGIzNGItMmEwZi00MWY2LWFhZjMtMDljNWE5ZjQzNzY4L3Jlc291cmNlR3JvdXBzL21udGVzdC9wcm92aWRlcnMvTWljcm9zb2Z0Lk5ldHdvcmsvbmV0d29ya1NlY3VyaXR5R3JvdXBzL1VJVGVzdGluZy1uc2c=",
        "externalId": "/subscriptions/e160b34b-2a0f-41f6-aaf3-09c5a9f43768/resourceGroups/mntest/providers/Microsoft.Network/networkSecurityGroups/UITesting-nsg",
        "displayName": "mntest/UITesting-nsg",
        "resourceType": "networkSecurityGroups",
        "authorizationSystem": {
          "@odata.type": "graph.azureAuthorizationSystem",
          "id": "{Id}",
          "authorizationSystemId": "e160b34b-2a0f-41f6-aaf3-09c5a9f43768",
          "authorizationSystemName": "ck-qa",
          "authorizationSystemType": "azure"
        }
      },
      "inboundPorts": {
        "@odata.type": "graph.enumeratedInboundPorts",
        "ports": [
          "22",
          "9000"
        ]
      },
      "virtualMachines@odata.count": 2, // there is no annotation for auto-expanding the count, but it always allowed for a service to respond with more data than is requested; if there were an annotation, we would use it
      "createdDateTime": "2020-10-11T20:11:45.671Z"
    }
  ]
}
```

