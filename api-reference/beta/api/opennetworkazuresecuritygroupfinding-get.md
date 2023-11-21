---
title: "Get openNetworkAzureSecurityGroupFinding"
description: "Read the properties and relationships of an openNetworkAzureSecurityGroupFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get openNetworkAzureSecurityGroupFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [openNetworkAzureSecurityGroupFinding](../resources/opennetworkazuresecuritygroupfinding.md) object.

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
GET /identityGovernance/permissionsAnalytics/azure/findings/{id}/microsoft.graph.openNetworkAzureSecurityGroupFinding
```

## Optional query parameters
This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [openNetworkAzureSecurityGroupFinding](../resources/opennetworkazuresecuritygroupfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_opennetworkazuresecuritygroupfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/findings/MSxPcGVuTmV0d29ya0F6dXJlU2VjdXJpdHlHcm91cEZpbmRpbmcsMjIyNjk1/microsoft.graph.openNetworkAzureSecurityGroupFinding
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-opennetworkazuresecuritygroupfinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-opennetworkazuresecuritygroupfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.openNetworkAzureSecurityGroupFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.openNetworkAzureSecurityGroupFinding/$entity",
    "id": "MSxPcGVuTmV0d29ya0F6dXJlU2VjdXJpdHlHcm91cEZpbmRpbmcsMjIyNjk1",
    "createdDateTime": "2023-10-25T19:47:57.589627Z",
    "inboundPorts": {
        "@odata.type": "#microsoft.graph.enumeratedInboundPorts",
        "ports": [
            "22"
        ]
    },
    "securityGroup": {
        "id": "L3N1YnNjcmlwdGlvbnMvNmJkZWIzNmUtMjQxNS00ZjdlLWFjMDMtNDljNTE4ZGEwZTEwL3Jlc291cmNlR3JvdXBzL21jaWVtLXN1YnNjcmlwdGlvbi0xLXJlc291cmNlLWdyb3VwL3Byb3ZpZGVycy9NaWNyb3NvZnQuTmV0d29yay9uZXR3b3JrU2VjdXJpdHlHcm91cHMvRXZhbk9wZW5TZWN1cml0eUdyb3Vw",
        "externalId": "/subscriptions/6bdeb36e-2415-4f7e-ac03-49c518da0e10/resourceGroups/mciem-subscription-1-resource-group/providers/Microsoft.Network/networkSecurityGroups/EvanOpenSecurityGroup",
        "displayName": "mciem-subscription-1-resource-group//subscriptions/6bdeb36e-2415-4f7e-ac03-49c518da0e10/resourceGroups/mciem-subscription-1-resource-group/providers/Microsoft.Network/networkSecurityGroups/EvanOpenSecurityGroup",
        "resourceType": "networkSecurityGroups"
    }
}
```

