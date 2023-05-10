---
title: "Create onTokenIssuanceStartCustomExtension"
description: "Create a new onTokenIssuanceStartCustomExtension object."
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create onTokenIssuanceStartCustomExtension
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [onTokenIssuanceStartCustomExtension](../resources/onTokenIssuanceStartCustomExtension.md) object.

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
POST /identity/onTokenIssuanceStartCustomExtension
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [onTokenIssuanceStartCustomExtension](../resources/onTokenIssuanceStartCustomExtension.md) object.

You can specify the following properties when creating a **onTokenIssuanceStartCustomExtension**.

|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|The authentication configuration for this custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|The connection settings for the custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|description|String|Description for the custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|displayName|String|Display name for the custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|Configuration for the API endpoint that the custom extension will call. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|claimsForTokenConfiguration|[onTokenIssuanceStartReturnClaim](../resources/ontokenissuancestartreturnclaim.md) collection|Collection of claims to be returned by the API called by this custom extension. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [onTokenIssuanceStartCustomExtension](../resources/onTokenIssuanceStartCustomExtension.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_ontokenissuancestartcustomextension_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/onTokenIssuanceStartCustomExtension
Content-Type: application/json
Content-length: 468

{
  "@odata.type": "#microsoft.graph.onTokenIssuanceStartCustomExtension",
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
  "@odata.type": "microsoft.graph.onTokenIssuanceStartCustomExtension"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.onTokenIssuanceStartCustomExtension",
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

