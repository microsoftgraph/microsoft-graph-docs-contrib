---
title: "Create authenticationEventListener"
description: "Create a new authenticationEventListener object."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 10/17/2024
---

# Create authenticationEventListener
Namespace: microsoft.graph

Create a new [authenticationEventListener](../resources/authenticationeventlistener.md) object. You can create one of the following subtypes that are derived from **authenticationEventListener**.

- [onTokenIssuanceStartListener resource type](../resources/ontokenissuancestartlistener.md)
- [onFraudProtectionLoadStartListener](../resources/onfraudprotectionloadstartlistener.md) resource type

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitycontainer_post_authenticationeventlisteners" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitycontainer-post-authenticationeventlisteners-permissions.md)]

[!INCLUDE [rbac-custom-auth-ext-apis-write](../includes/rbac-for-apis/rbac-custom-auth-ext-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identity/authenticationEventListeners
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authenticationEventListener](../resources/authenticationeventlistener.md) object.

You can specify the following properties when creating an **authenticationEventListener**. You must specify the **@odata.type** property to specify the type of authenticationEventListener to create; for example, `@odata.type": "microsoft.graph.onTokenIssuanceStartListener"`.

|Property|Type|Description|
|:---|:---|:---|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions on which this authenticationEventListener should trigger. Optional.|
|displayName|String|The display name of the authentication event listener policy. Optional.|
|handler|[onTokenIssuanceStartHandler](../resources/ontokenissuancestarthandler.md) or [onFraudProtectionLoadStartHandler](../resources/onfraudprotectionloadstarthandler.md)|The handler to invoke when conditions are met. For **onTokenIssuanceStartListener**, set to [onTokenIssuanceStartHandler](../resources/ontokenissuancestarthandler.md). For **onFraudProtectionLoadStartListener**, set to [onFraudProtectionLoadStartHandler](../resources/onfraudprotectionloadstarthandler.md).|

## Response

If successful, this method returns a `201 Created` response code and an [authenticationEventListener](../resources/authenticationeventlistener.md) object in the response body. The **@odata.type** property specifies the type of the created object.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_authenticationeventlistener_onTokenIssuanceStartListener"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identity/authenticationEventListeners
Content-Type: application/json
Content-length: 312

{
    "@odata.type": "#microsoft.graph.onTokenIssuanceStartListener",
    "conditions": {
        "applications": {
            "includeApplications": [
                {
                    "appId": "a13d0fc1-04ab-4ede-b215-63de0174cbb4"
                }
            ]
        }
    },
    "handler": {
        "@odata.type": "#microsoft.graph.onTokenIssuanceStartCustomExtensionHandler",
        "customExtension": {
            "id": "6fc5012e-7665-43d6-9708-4370863f4e6e"
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-authenticationeventlistener-ontokenissuancestartlistener-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-authenticationeventlistener-ontokenissuancestartlistener-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-authenticationeventlistener-ontokenissuancestartlistener-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-authenticationeventlistener-ontokenissuancestartlistener-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-authenticationeventlistener-ontokenissuancestartlistener-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-authenticationeventlistener-ontokenissuancestartlistener-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-authenticationeventlistener-ontokenissuancestartlistener-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationEventListener"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/authenticationEventListeners/$entity",
    "@odata.type": "#microsoft.graph.onTokenIssuanceStartListener",
    "id": "990d94e5-cc8f-4c4b-97b4-27e2678aac28",
    "conditions": {
        "applications": {
            "includeApplications": [
                {
                    "appId": "a13d0fc1-04ab-4ede-b215-63de0174cbb4"
                }
            ]
        }
    },
    "handler": {
        "@odata.type": "#microsoft.graph.onTokenIssuanceStartCustomExtensionHandler",
        "customExtension": {
            "id": "6fc5012e-7665-43d6-9708-4370863f4e6e"
        }
    }
}
```

### Example 5: Enable Fraud Protection during sign-up with Arkose Labs 

#### Request
The following example shows a request that enables fraud protection during sign-up using Arkose Labs.

<!-- {
  "blockType": "request",
  "name": "create_authenticationeventlistener_onFraudProtectionLoadStartListener_Arkose"
}
-->
```http
POST https://graph.microsoft.com/v1.0/identity/authenticationEventListeners
Content-Type: application/json

{   
  "@odata.type": "#microsoft.graph.onFraudProtectionLoadStartListener", 
  "conditions": { 
    "applications": { 
      "includeApplications": [ 
        { 
          "appId": "0001111-aaaa-2222-bbbb-3333cccc4444" 
        } 
      ] 
    } 
  }, 
  "handler": { 
    "@odata.type": 
"#microsoft.graph.onFraudProtectionLoadStartExternalUsersAuthHandler", 
    "signUp": { 
      "@odata.type": "#microsoft.graph.fraudProtectionProviderConfiguration", 
      "fraudProtectionProvider": { 
        "@odata.type": "#microsoft.graph.arkoseFraudProtectionProvider", 
        "id": "6fedd01b-0afb-4a07-967f-d1ccbd81102b" 
      } 
    } 
  } 
}
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationEventListener"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/authenticationEventListeners/$entity",
  "@odata.type": "#microsoft.graph.onFraudProtectionLoadStartListener",
  "id": "49eb23d9-998b-47df-a462-aa12a20ae5fb",
  "conditions": {
    "applications": {
      "includeApplications": [
        {
          "appId": "0001111-aaaa-2222-bbbb-3333cccc4444"
        }
      ]
    }
  },
  "handler": {
    "@odata.type": "#microsoft.graph.onFraudProtectionLoadStartExternalUsersAuthHandler",
    "signUp": {
      "fraudProtectionProvider": {
        "@odata.type": "#microsoft.graph.arkoseFraudProtectionProvider",
        "id": "fabe5100-cc02-46c1-bd0e-ce885fe367fd"
      }
    }
  }
}
```

### Example 6: Enable Fraud Protection during sign-up with HUMAN Security 

#### Request
The following example shows a request that enables fraud protection during sign-up using HUMAN Security.

<!-- {
  "blockType": "request",
  "name": "create_authenticationeventlistener_onFraudProtectionLoadStartListener_HUMANSecurity"
}
-->
```http
POST https://graph.microsoft.com/v1.0/identity/authenticationEventListeners
Content-Type: application/json

{   
  "@odata.type": "#microsoft.graph.onFraudProtectionLoadStartListener", 
  "conditions": { 
    "applications": { 
      "includeApplications": [ 
        { 
          "appId": "0001111-aaaa-2222-bbbb-3333cccc4444" 
        } 
      ] 
    } 
  }, 
  "handler": { 
    "@odata.type": 
"#microsoft.graph.onFraudProtectionLoadStartExternalUsersAuthHandler", 
    "signUp": { 
      "@odata.type": "#microsoft.graph.fraudProtectionProviderConfiguration", 
      "fraudProtectionProvider": { 
        "@odata.type": "#microsoft.graph.humanSecurityFraudProtectionProvider", 
        "id": "fabe5100-cc02-46c1-bd0e-ce885fe367fd" 
      } 
    } 
  } 
}
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationEventListener"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/authenticationEventListeners/$entity",
  "@odata.type": "#microsoft.graph.onFraudProtectionLoadStartListener",
  "id": "49eb23d9-998b-47df-a462-aa12a20ae5fb",
  "conditions": {
    "applications": {
      "includeApplications": [
        {
          "appId": "0001111-aaaa-2222-bbbb-3333cccc4444"
        }
      ]
    }
  },
  "handler": {
    "@odata.type": "#microsoft.graph.onFraudProtectionLoadStartExternalUsersAuthHandler",
    "signUp": {
      "isContinueOnProviderErrorEnabled": false,
      "fraudProtectionProvider": {
        "@odata.type": "#microsoft.graph.humanSecurityFraudProtectionProvider",
        "id": "fabe5100-cc02-46c1-bd0e-ce885fe367fd"
      }
    }
  }
}
```