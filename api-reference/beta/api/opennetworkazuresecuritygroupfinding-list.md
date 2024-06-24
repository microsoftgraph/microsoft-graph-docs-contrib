---
title: "List openNetworkAzureSecurityGroupFinding objects"
description: "Get a list of the openNetworkAzureSecurityGroupFinding objects and their properties."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: apiPageType
---

# List openNetworkAzureSecurityGroupFinding objects
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [openNetworkAzureSecurityGroupFinding](../resources/opennetworkazuresecuritygroupfinding.md) objects and their properties.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "opennetworkazuresecuritygroupfinding_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/opennetworkazuresecuritygroupfinding-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.openNetworkAzureSecurityGroupFinding
```

## Optional query parameters
This method supports the `$filter` and `$orderby` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.d.

## Response

If successful, this method returns a `200 OK` response code and a collection of [openNetworkAzureSecurityGroupFinding](../resources/opennetworkazuresecuritygroupfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_opennetworkazuresecuritygroupfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.openNetworkAzureSecurityGroupFinding
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-opennetworkazuresecuritygroupfinding-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-opennetworkazuresecuritygroupfinding-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-opennetworkazuresecuritygroupfinding-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-opennetworkazuresecuritygroupfinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-opennetworkazuresecuritygroupfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-opennetworkazuresecuritygroupfinding-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-opennetworkazuresecuritygroupfinding-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-opennetworkazuresecuritygroupfinding-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/azure/findings/microsoft.graph.openNetworkAzureSecurityGroupFinding",
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

