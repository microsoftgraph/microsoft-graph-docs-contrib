---
title: "Create customAccessPackageWorkflowExtension"
description: "Create a new customAccessPackageWorkflowExtension object."
author: "currenme"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Create customAccessPackageWorkflowExtension
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EntitlementManagement.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|
|Application|EntitlementManagement.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/entitlementManagement/ accessPackageCatalogs/{catalogId}/customAccessPackageWorkflowExtensions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) object.

You can specify the following properties when creating a **customAccessPackageWorkflowExtension**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the custom extension.|
|description|String|Description of the custom extension.|
|endpointConfiguration |microsoft.graph. customExtensionEndPointConfiguration |The endpoint configuration type. First will be the configuration of calling a Logic App workflow.|
|authenticationConfiguration |microsoft.graph.customExtensionAuthenticationConfiguration |Configuration for securing the API call. For example, using OAuth client-credentials.|



## Response

If successful, this method returns a `201 Created` response code and a [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_customaccesspackageworkflowextension_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageCatalogs/{accessPackageCatalogId}/customAccessPackageWorkflowExtensions
Content-Type: application/json
Content-length: 134

{ 
    "displayName": "test_action_0124", 
    "description": "this is for graph testing only", 
    "endpointConfiguration": { 
        "@odata.type": "#microsoft.graph.logicAppTriggerEndpointConfiguration", 
        "subscriptionId": "38ab2ccc-3747-4567-b36b-9478f5602f0d", 
        "resourceGroupName": "xiaojil", 
        "logicAppWorkflowName": "customextension_test" 
    }, 
    "authenticationConfiguration": { 
        "@odata.type": "#microsoft.graph.azureAdTokenAuthentication", 
        "resourceId": "f604bd15-f785-4309-ad7c-6fad18ddb6cb" 
    } 
} 
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customAccessPackageWorkflowExtension"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{ 
    "id": "98ffaec5-ae8e-4902-a434-5ffc5d3d3cd0", 
    "displayName": "test_action_0124",
    "description": "this is for graph testing only", 
    "createdDateTime": "2022-01-24T21:48:57.1483656Z", 
    "lastModifiedDateTime": "2022-01-24T21:48:57.1483656Z", 
    "clientConfiguration": null, 
    "endpointConfiguration": { 
        "@odata.type": "#microsoft.graph.logicAppTriggerEndpointConfiguration", 
        "subscriptionId": "38ab2ccc-3747-4567-b36b-9478f5602f0d", 
        "resourceGroupName": "xiaojil", 
        "logicAppWorkflowName": "customextension_test" 
    },
    "authenticationConfiguration": { 
        "@odata.type": "#microsoft.graph.azureAdTokenAuthentication", 
        "resourceId": "f604bd15-f785-4309-ad7c-6fad18ddb6cb" 
    } 
} 
```

