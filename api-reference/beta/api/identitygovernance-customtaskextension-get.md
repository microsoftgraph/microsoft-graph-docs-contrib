---
title: "Get customTaskExtension"
description: "Read the properties and relationships of a customTaskExtension object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get customTaskExtension
Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [customTaskExtension](../resources/identitygovernance-customtaskextension.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/customTaskExtensions/{customTaskExtensionId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [customTaskExtension](../resources/identitygovernance-customtaskextension.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_customtaskextension"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/customTaskExtensions/{customTaskExtensionId}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.customTaskExtension"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.identityGovernance.customTaskExtension",
    "id": "34a8fa7f-bdde-7eeb-56de-7851d623f5e2",
    "authenticationConfiguration": {
      "@odata.type": "microsoft.graph.customExtensionAuthenticationConfiguration"
    },
    "clientConfiguration": {
      "@odata.type": "microsoft.graph.customExtensionClientConfiguration"
    },
    "description": "String",
    "displayName": "String",
    "endpointConfiguration": {
      "@odata.type": "microsoft.graph.customExtensionEndpointConfiguration"
    },
    "callbackConfiguration": {
      "@odata.type": "microsoft.graph.customExtensionCallbackConfiguration"
    },
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)"
  }
}
```

