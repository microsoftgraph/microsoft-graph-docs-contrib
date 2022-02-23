---
title: "Update customAccessPackageWorkflowExtension"
description: "Update the properties of a customAccessPackageWorkflowExtension object."
author: "currenme"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Update customAccessPackageWorkflowExtension
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an existing [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EntitlementManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|EntitlementManagement.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PUT /identityGovernance/entitlementManagement/ accessPackageCatalogs/{catalogId}/customAccessPackageWorkflowExtensions/{customAccessPackageWorkflowExtensionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The access package name.|
|description|String|The description of the access package.|
|endpointConfiguration |microsoft.graph. customExtensionEndPointConfiguration |The endpoint configuration type. First will be the configuration of calling a Logic App workflow.|
|authenticationConfiguration|microsoft.graph.customExtensionAuthenticationConfiguration|Configuration for securing the API call. For example, using OAuth client-credentials.|


## Response

If successful, this method returns a `200 OK` response code and an updated [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_customaccesspackageworkflowextension"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageCatalogs/{accessPackageCatalogId}/accessPackages/{accessPackageId}/accessPackageAssignmentPolicies/{accessPackageAssignmentPolicyId}/customExtensionHandlers/{customExtensionHandlerId}/customExtension
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.customAccessPackageWorkflowExtension",
  "displayName": "String",
  "description": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{ 
    "displayName": "test_action_0124_email", 
    "description": "this is for graph testing only", 
    "endpointConfiguration": { 
        "@odata.type": "#microsoft.graph.logicAppTriggerEndpointConfiguration", 
        "subscriptionId": "38ab2ccc-3747-4567-b36b-9478f5602f0d", 
        "resourceGroupName": "xiaojil", 
        "logicAppWorkflowName": "elm-extension-email" 
    }, 
    "authenticationConfiguration": { 
        "@odata.type": "#microsoft.graph.azureAdTokenAuthentication", 
        "resourceId": "eed6dee9-7ff7-44a5-8980-c11e8886cea2" 
    } 
} 
```

