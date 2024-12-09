---
title: "Create customAuthenticationExtension"
description: "Create a new customAuthenticationExtension object."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 10/16/2024
---

# Create customAuthenticationExtension

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [customAuthenticationExtension](../resources/customauthenticationextension.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitycontainer-post-customauthenticationextensions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitycontainer-post-customauthenticationextensions-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [customAuthenticationExtension](../resources/customauthenticationextension.md) object.

You can specify the following properties when creating a **customAuthenticationExtension**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|**TODO: Add Description** Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|**TODO: Add Description** Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|description|String|**TODO: Add Description** Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|displayName|String|**TODO: Add Description** Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|**TODO: Add Description** Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|behaviorOnError|[customExtensionBehaviorOnError](../resources/customextensionbehavioronerror.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [customAuthenticationExtension](../resources/customauthenticationextension.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_customauthenticationextension_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/customAuthenticationExtensions
Content-Type: application/json

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
  },
  "behaviorOnError": {
    "@odata.type": "microsoft.graph.customExtensionBehaviorOnError"
  }
}
```


### Response

The following example shows the response.
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
  },
  "behaviorOnError": {
    "@odata.type": "microsoft.graph.customExtensionBehaviorOnError"
  }
}
```
