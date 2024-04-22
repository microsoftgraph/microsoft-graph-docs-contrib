---
title: "Create customAuthenticationExtension"
description: "Create a new customAuthenticationExtension object."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create customAuthenticationExtension
Namespace: microsoft.graph

Create a new [customAuthenticationExtension](../resources/customauthenticationextension.md) object. The following derived types are currently supported.

- [onTokenIssuanceStartCustomExtension](../resources/ontokenissuancestartcustomextension.md) resource type.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitycontainer_post_customauthenticationextensions" } -->
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

You can specify the following properties when creating a **customAuthenticationExtension**. You must specify the **@odata.type** property with a value of the customAuthenticationExtension object type that you want to create. For example, to create an **onTokenIssuanceStartCustomExtension** object, set **@odata.type** to `#microsoft.graph.onTokenIssuanceStartCustomExtension`.

|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|The authentication configuration for this custom extension.|
|claimsForTokenConfiguration|[onTokenIssuanceStartReturnClaim](../resources/ontokenissuancestartreturnclaim.md) collection|Collection of claims to be returned by the API called by this custom authentication extension. Can be set for **onTokenIssuanceStartCustomExtension** object only. Used to populate claims mapping experience in Microsoft Entra admin center. Optional. |
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|The connection settings for the custom extension. Optional.|
|description|String|Description for the custom extension. Optional.|
|displayName|String|Display name for the custom extension.|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|Configuration for the API endpoint that the custom extension will call.|

## Response

If successful, this method returns a `201 Created` response code and a [customAuthenticationExtension](../resources/customauthenticationextension.md) object in the response body.

## Examples


### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_customauthenticationextension_onTokenIssuanceStartCustomExtension"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identity/customAuthenticationExtensions
Content-Type: application/json
Content-length: 468

{
    "@odata.type": "#microsoft.graph.onTokenIssuanceStartCustomExtension",
    "displayName": "onTokenIssuanceStartCustomExtension",
    "description": "Fetch additional claims from custom user store",
    "endpointConfiguration": {
        "@odata.type": "#microsoft.graph.httpRequestEndpoint",
        "targetUrl": "https://authenticationeventsAPI.contoso.com"
    },
    "authenticationConfiguration": {
        "@odata.type": "#microsoft.graph.azureAdTokenAuthentication",
        "resourceId": "api://authenticationeventsAPI.contoso.com/a13d0fc1-04ab-4ede-b215-63de0174cbb4"
    },
    "clientConfiguration": {
        "timeoutInMilliseconds": 2000,
        "maximumRetries": 1
    },
    "claimsForTokenConfiguration": [
        {
            "claimIdInApiResponse": "DateOfBirth"
        },
        {
            "claimIdInApiResponse": "CustomRoles"
        }
    ]
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/customAuthenticationExtensions/$entity",
    "@odata.type": "#microsoft.graph.onTokenIssuanceStartCustomExtension",
    "id": "6fc5012e-7665-43d6-9708-4370863f4e6e",
    "displayName": "onTokenIssuanceStartCustomExtension",
    "description": "Fetch additional claims from custom user store",
    "clientConfiguration": null,
    "authenticationConfiguration": {
        "@odata.type": "#microsoft.graph.azureAdTokenAuthentication",
        "resourceId": "api://authenticationeventsAPI.contoso.com/a13d0fc1-04ab-4ede-b215-63de0174cbb4"
    },
    "clientConfiguration": {
        "timeoutInMilliseconds": 2000,
        "maximumRetries": 1
    },
    "endpointConfiguration": {
        "@odata.type": "#microsoft.graph.httpRequestEndpoint",
        "targetUrl": "https://authenticationeventsAPI.contoso.com"
    },
    "claimsForTokenConfiguration": [
        {
            "claimIdInApiResponse": "DateOfBirth"
        },
        {
            "claimIdInApiResponse": "CustomRoles"
        }
    ]
}
```

