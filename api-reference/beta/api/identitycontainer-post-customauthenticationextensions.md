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

Create a new [customAuthenticationExtension](../resources/customauthenticationextension.md) object. The following derived types are currently supported.

- [onTokenIssuanceStartCustomExtension](../resources/ontokenissuancestartcustomextension.md) resource type.
- [onAttributeCollectionStartCustomExtension](../resources/onattributecollectionstartcustomextension.md) resource type.
- [onAttributeCollectionSubmitCustomExtension](../resources/onattributecollectionsubmitcustomextension.md) resource type.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

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
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|The authentication configuration for this custom extension. Optional.|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|The connection settings for the custom extension. Optional.|
|description|String|Description for the custom extension. Optional.|
|displayName|String|Display name for the custom extension. Optional.|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|Configuration for the API endpoint that the custom extension will call. Optional.|


## Response

If successful, this method returns a `201 Created` response code and a [customAuthenticationExtension](../resources/customauthenticationextension.md) object in the response body.

## Examples

### Example 1: Create an onTokenIssuanceStartCustomExtension object

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_customauthenticationextension_onTokenIssuanceStartCustomExtension"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/customAuthenticationExtensions
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-customauthenticationextension-ontokenissuancestartcustomextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-customauthenticationextension-ontokenissuancestartcustomextension-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-customauthenticationextension-ontokenissuancestartcustomextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-customauthenticationextension-ontokenissuancestartcustomextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-customauthenticationextension-ontokenissuancestartcustomextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-customauthenticationextension-ontokenissuancestartcustomextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-customauthenticationextension-ontokenissuancestartcustomextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-customauthenticationextension-ontokenissuancestartcustomextension-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/customAuthenticationExtensions/$entity",
    "@odata.type": "#microsoft.graph.onTokenIssuanceStartCustomExtension",
    "id": "6fc5012e-7665-43d6-9708-4370863f4e6e",
    "displayName": "onTokenIssuanceStartCustomExtension",
    "description": "Fetch additional claims from custom user store",
    "clientConfiguration": null,
    "behaviorOnError": null,
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

### Example 2: Create an onAttributeCollectionStartCustomExtension object

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_customauthenticationextension_onAttributeCollectionStartCustomExtension"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/customAuthenticationExtensions
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.onAttributeCollectionStartCustomExtension",
  "displayName": "attributeCollectionStartName",
  "description": "example description",
  "authenticationConfiguration": {
    "@odata.type": "#microsoft.graph.azureAdTokenAuthentication",
    "resourceId": "api://contoso.com/fb96de85-2abe-4b02-b45f-64ba122c509e"
  },
  "endpointConfiguration": {
    "@odata.type": "#microsoft.graph.httpRequestEndpoint",
    "targetUrl": "https://contoso.com"
  },
  "clientConfiguration": {
    "timeoutInMilliseconds": 2000,
    "maximumRetries": 1
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-customauthenticationextension-onattributecollectionstartcustomextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-customauthenticationextension-onattributecollectionstartcustomextension-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-customauthenticationextension-onattributecollectionstartcustomextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-customauthenticationextension-onattributecollectionstartcustomextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-customauthenticationextension-onattributecollectionstartcustomextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-customauthenticationextension-onattributecollectionstartcustomextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-customauthenticationextension-onattributecollectionstartcustomextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-customauthenticationextension-onattributecollectionstartcustomextension-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/customAuthenticationExtensions/$entity",
    "@odata.type": "#microsoft.graph.onAttributeCollectionStartCustomExtension",
    "id": "2d9c3e8d-88a9-444e-8c4c-f0c6c4fe1c02",
    "displayName": "attributeCollectionStartName",
    "description": "example description",
    "authenticationConfiguration": {
        "@odata.type": "#microsoft.graph.azureAdTokenAuthentication",
        "resourceId": "api://contoso.com/fb96de85-2abe-4b02-b45f-64ba122c509e"
    },
    "endpointConfiguration": {
        "@odata.type": "#microsoft.graph.httpRequestEndpoint",
        "targetUrl": "https://contoso.com"
    },
    "clientConfiguration": {
        "timeoutInMilliseconds": 2000,
        "maximumRetries": 1
    }
}
```

### Example 3: Create an onAttributeCollectionSubmitCustomExtension object

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_customauthenticationextension_onAttributeCollectionSubmitCustomExtension"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/customAuthenticationExtensions
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.onAttributeCollectionSubmitCustomExtension",
    "displayName": "attributeCollectionSubmitName",
    "description": "example description",
    "authenticationConfiguration": {
        "@odata.type": "#microsoft.graph.azureAdTokenAuthentication",
        "resourceId": "api://contoso.com/fb96de85-2abe-4b02-b45f-64ba122c509e"
    },
    "endpointConfiguration": {
        "@odata.type": "#microsoft.graph.httpRequestEndpoint",
        "targetUrl": "https://contoso.com"
    },
    "clientConfiguration": {
        "timeoutInMilliseconds": 2000,
        "maximumRetries": 1
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-customauthenticationextension-onattributecollectionsubmitcustomextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-customauthenticationextension-onattributecollectionsubmitcustomextension-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-customauthenticationextension-onattributecollectionsubmitcustomextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-customauthenticationextension-onattributecollectionsubmitcustomextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-customauthenticationextension-onattributecollectionsubmitcustomextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-customauthenticationextension-onattributecollectionsubmitcustomextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-customauthenticationextension-onattributecollectionsubmitcustomextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-customauthenticationextension-onattributecollectionsubmitcustomextension-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/customAuthenticationExtensions/$entity",
    "@odata.type": "#microsoft.graph.onAttributeCollectionSubmitCustomExtension",
    "id": "66867d1f-7824-4f38-aad1-75da1ad09ee2",
    "displayName": "attributeCollectionSubmitName",
    "description": "example description",
    "authenticationConfiguration": {
        "@odata.type": "#microsoft.graph.azureAdTokenAuthentication",
        "resourceId": "api://contoso.com/fb96de85-2abe-4b02-b45f-64ba122c509e"
    },
    "endpointConfiguration": {
        "@odata.type": "#microsoft.graph.httpRequestEndpoint",
        "targetUrl": "https://contoso.com"
    },
    "clientConfiguration": {
        "timeoutInMilliseconds": 2000,
        "maximumRetries": 1
    }
}
```
