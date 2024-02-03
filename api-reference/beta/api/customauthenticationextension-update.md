---
title: "Update customAuthenticationExtension"
description: "Update the properties of a customAuthenticationExtension object."
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Update customAuthenticationExtension
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [customAuthenticationExtension](../resources/customauthenticationextension.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "customauthenticationextension_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/customauthenticationextension-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identity/customAuthenticationExtensions/{customAuthenticationExtensionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

You must specify the `@odata.type` property when updating a [customAuthenticationExtension](../resources/customauthenticationextension.md) object. For example, to update an [onTokenIssuanceStartCustomExtension](../resources/ontokenissuancestartcustomextension.md) object type, set the `@odata.type` property to `#microsoft.graph.onTokenIssuanceStartCustomExtension`.

|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|The authentication configuration for this custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|description|String|Description for the custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|displayName|String|Display name for the custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|handler|[onAttributeCollectionStartCustomExtensionHandler](../resources/onattributecollectionstartcustomextensionhandler.md)|The handler to invoke when conditions are met. Can be updated for the **onAttributeCollectionStartCustomExtensionListener** listener type.|
|handler|[onAttributeCollectionSubmitCustomExtensionHandler](../resources/onattributecollectionsubmitcustomextensionhandler.md)|The handler to invoke when conditions are met. Can be updated for the **onAttributeCollectionSubmitCustomExtensionListener** listener type.|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|Configuration for the API endpoint that the custom extension will call. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_customauthenticationextension"
}
-->
``` http
PATCH hhttps://graph.microsoft.com/beta/identity/customAuthenticationExtensions/6fc5012e-7665-43d6-9708-4370863f4e6e
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
[!INCLUDE [sample-code](../includes/snippets/csharp/update-customauthenticationextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-customauthenticationextension-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-customauthenticationextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-customauthenticationextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-customauthenticationextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-customauthenticationextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-customauthenticationextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-customauthenticationextension-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

