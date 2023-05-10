---
title: "Create customAuthenticationExtension"
description: "Create a new customAuthenticationExtension object."
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create customAuthenticationExtension
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [customAuthenticationExtension](../resources/customauthenticationextension.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomAuthenticationExtension.ReadWrite.All, Policy.ReadWrite.AuthenticationFlows, Application.ReadWrite.All|
|Delegated (personal Microsoft account)|CustomAuthenticationExtension.ReadWrite.All, Policy.ReadWrite.AuthenticationFlows, Application.ReadWrite.All|
|Application|CustomAuthenticationExtension.ReadWrite.All, Policy.ReadWrite.AuthenticationFlows, Application.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identity/customAuthenticationExtensions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [customAuthenticationExtension](../resources/customauthenticationextension.md) object.

You can specify the following properties when creating a **customAuthenticationExtension**.

|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|The authentication configuration for this custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|The connection settings for the custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|description|String|Description for the custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|displayName|String|Display name for the custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|Configuration for the API endpoint that the custom extension will call. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|


## Response

If successful, this method returns a `201 Created` response code and a [customAuthenticationExtension](../resources/customauthenticationextension.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_customauthenticationextension_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/customAuthenticationExtensions
Content-Type: application/json
Content-length: 468

{
  "@odata.type": "#microsoft.graph.customAuthenticationExtension",
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
HTTP/1.1 201 Created
Content-Type: application/json

{
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
```

