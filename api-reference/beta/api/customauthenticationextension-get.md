---
title: "Get customAuthenticationExtension"
description: "Read the properties and relationships of a customAuthenticationExtension object."
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get customAuthenticationExtension
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [customAuthenticationExtension](../resources/customauthenticationextension.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomAuthenticationExtension.Read.All, Application.Read.All, CustomAuthenticationExtension.ReadWrite.All, Policy.ReadWrite.AuthenticationFlows, Application.ReadWrite.All|
|Delegated (personal Microsoft account)|CustomAuthenticationExtension.Read.All, Application.Read.All, CustomAuthenticationExtension.ReadWrite.All, Policy.ReadWrite.AuthenticationFlows, Application.ReadWrite.All|
|Application|CustomAuthenticationExtension.Read.All, Application.Read.All, CustomAuthenticationExtension.ReadWrite.All, Policy.ReadWrite.AuthenticationFlows, Application.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/customAuthenticationExtensions/{customAuthenticationExtensionId}
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

If successful, this method returns a `200 OK` response code and a [customAuthenticationExtension](../resources/customauthenticationextension.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_customauthenticationextension"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/customAuthenticationExtensions/{customAuthenticationExtensionId}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customAuthenticationExtension"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.customAuthenticationExtension",
    "id": "3491a8d6-eeb2-1414-e767-7e009163a6ed",
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
    }
  }
}
```

