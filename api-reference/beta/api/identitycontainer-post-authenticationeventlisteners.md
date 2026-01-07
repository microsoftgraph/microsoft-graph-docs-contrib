---
title: "Create authenticationEventListener"
description: "Create a new authenticationEventListener object."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 10/16/2024
---

# Create authenticationEventListener
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [authenticationEventListener](../resources/authenticationeventlistener.md) object. You can create one of the following subtypes that are derived from **authenticationEventListener**.

- [onTokenIssuanceStartListener resource type](../resources/ontokenissuancestartlistener.md)
- [onInteractiveAuthFlowStartListener resource type](../resources/oninteractiveauthflowstartlistener.md)
- [onAuthenticationMethodLoadStartListener resource type](../resources/onauthenticationmethodloadstartlistener.md)
- [onAttributeCollectionListener resource type](../resources/onattributecollectionlistener.md)
- [onUserCreateStartListener resource type](../resources/onusercreatestartlistener.md)
- [onAttributeCollectionStartListener](../resources/onattributecollectionstartlistener.md)
- [onAttributeCollectionSubmitListener](../resources/onattributecollectionsubmitlistener.md)
- [onPhoneMethodLoadStartListener](../resources/onphonemethodloadstartlistener.md)
- [onFraudProtectionLoadStartListener](../resources/onFraudProtectionLoadStartListener.md) resource type

> [!NOTE]
>
> You can have a maximum of 250 event listeners.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

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
```http
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
|authenticationEventsFlowId|String|The identifier of the authentication events flow. Optional.|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions on which this authenticationEventListener should trigger. Optional.|
|displayName|String|The display name of the authentication event listener policy. Optional.|
|handler|[onAttributeCollectionHandler](../resources/ontokenissuancestarthandler.md)|The handler to invoke when conditions are met. Can be set for the **onAttributeCollectionListener** listener type.|
|handler|[onAttributeCollectionStartListener](../resources/onattributecollectionstartlistener.md)|The handler to invoke when conditions are met. Can be set for the **onAttributeCollectionStartListener** listener type.|
|handler|[onAttributeCollectionSubmitListener](../resources/onattributecollectionsubmitlistener.md)|The handler to invoke when conditions are met. Can be set for the **onAttributeCollectionSubmitListener** listener type.|
|handler|[onAuthenticationMethodLoadStartHandler](../resources/ontokenissuancestarthandler.md)|The handler to invoke when conditions are met. Can be set for the **onAuthenticationMethodLoadStartListener** listener type.|
|handler|[onInteractiveAuthFlowStartHandler](../resources/ontokenissuancestarthandler.md)|The handler to invoke when conditions are met. Can be set for the **onInteractiveAuthFlowStartListener** listener type.|
|handler|[onTokenIssuanceStartHandler](../resources/ontokenissuancestarthandler.md)|The handler to invoke when conditions are met. Can be set for the **onTokenIssuanceStartListener** listener type.|
|handler|[onUserCreateStartHandler](../resources/ontokenissuancestarthandler.md)|The handler to invoke when conditions are met. Can be set for the **onUserCreateStartListener** listener type.|
|handler|[onPhoneMethodLoadStartHandler](../resources/onphonemethodloadstarthandler.md) | The handler to invoke when conditions are met. Can be set for the **onPhoneMethodLoadStartListener** listener type. |
|handler|[onFraudProtectionLoadStartHandler](../resources/onFraudProtectionLoadStartHandler.md) | The handler to invoke when conditions are met. Can be updated for the **onFraudProtectionLoadStartListener** type. |
|priority|Int32| The priority of this handler. Between 0 (lower priority) and 1000 (higher priority). Required.|


## Response

If successful, this method returns a `201 Created` response code and an [authenticationEventListener](../resources/authenticationeventlistener.md) object in the response body. The **@odata.type** property specifies the type of the created object.

## Examples

### Example 1: Create an onTokenIssuanceStartListener object

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_authenticationeventlistener_onTokenIssuanceStartListener"
}
-->
```http
POST https://graph.microsoft.com/beta/identity/authenticationEventListeners
Content-Type: application/json
Content-length: 312

{
    "@odata.type": "#microsoft.graph.onTokenIssuanceStartListener",
    "conditions": {
        "applications": {
            "includeAllApplications": false,
            "includeApplications": [
                {
                    "appId": "0001111-aaaa-2222-bbbb-3333cccc4444"
                }
            ]
        }
    },
    "priority": 500,
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

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationEventListener"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/authenticationEventListeners/$entity",
    "@odata.type": "#microsoft.graph.onTokenIssuanceStartListener",
    "id": "990d94e5-cc8f-4c4b-97b4-27e2678aac28",
    "priority": 500,
    "authenticationEventsFlowId": null,
    "conditions": {
        "applications": {
            "includeAllApplications": false,
            "includeApplications": [
                {
                    "appId": "0001111-aaaa-2222-bbbb-3333cccc4444"
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

### Example 2: Create an onAttributeCollectionStartListener object

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_authenticationeventlistener_onAttributeCollectionStartListener"
}
-->
```http
POST https://graph.microsoft.com/beta/identity/authenticationEventListeners
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.onAttributeCollectionStartListener",
    "priority": 500,
    "conditions": {
        "applications": {
            "includeAllApplications": false,
            "includeApplications": [
                {
                    "appId": "0001111-aaaa-2222-bbbb-3333cccc4444"
                }
            ]
        }
    },
    "handler": {
        "@odata.type": "#microsoft.graph.onAttributeCollectionStartCustomExtensionHandler",
        "customExtension": {
            "id": "2d9c3e8d-88a9-444e-8c4c-f0c6c4fe1c02"
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-authenticationeventlistener-onattributecollectionstartlistener-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-authenticationeventlistener-onattributecollectionstartlistener-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-authenticationeventlistener-onattributecollectionstartlistener-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-authenticationeventlistener-onattributecollectionstartlistener-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-authenticationeventlistener-onattributecollectionstartlistener-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-authenticationeventlistener-onattributecollectionstartlistener-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-authenticationeventlistener-onattributecollectionstartlistener-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationEventListener"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/authenticationEventListeners/$entity",
    "@odata.type": "#microsoft.graph.onAttributeCollectionStartListener",
    "id": "1b025b34-6547-4714-b948-43f79b70c429",
    "priority": 500,
    "authenticationEventsFlowId": null,
    "conditions": {
        "applications": {
            "includeAllApplications": false
        }
    },
    "handler": {
        "@odata.type": "#microsoft.graph.onAttributeCollectionStartCustomExtensionHandler",
        "configuration": null
    }
}
```

### Example 3: Create an onAttributeCollectionSubmitListener object

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_authenticationeventlistener_onAttributeCollectionSubmitListener"
}
-->
```http
POST https://graph.microsoft.com/beta/identity/authenticationEventListeners
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.onAttributeCollectionSubmitListener",
    "priority": 500,
    "conditions": {
        "applications": {
            "includeAllApplications": false,
            "includeApplications": [
                {
                    "appId": "0001111-aaaa-2222-bbbb-3333cccc4444"
                }
            ]
        }
    },
    "handler": {
        "@odata.type": "#microsoft.graph.onAttributeCollectionSubmitCustomExtensionHandler",
        "customExtension": {
            "id": "66867d1f-7824-4f38-aad1-75da1ad09ee2"
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-authenticationeventlistener-onattributecollectionsubmitlistener-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-authenticationeventlistener-onattributecollectionsubmitlistener-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-authenticationeventlistener-onattributecollectionsubmitlistener-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-authenticationeventlistener-onattributecollectionsubmitlistener-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-authenticationeventlistener-onattributecollectionsubmitlistener-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-authenticationeventlistener-onattributecollectionsubmitlistener-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-authenticationeventlistener-onattributecollectionsubmitlistener-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationEventListener"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/authenticationEventListeners/$entity",
    "@odata.type": "#microsoft.graph.onAttributeCollectionSubmitListener",
    "id": "2066575e-fc31-4ac7-b07c-81b85f074441",
    "priority": 500,
    "authenticationEventsFlowId": null,
    "conditions": {
        "applications": {
            "includeAllApplications": false
        }
    },
    "handler": {
        "@odata.type": "#microsoft.graph.onAttributeCollectionSubmitCustomExtensionHandler",
        "configuration": null
    }
}
```

### Example 3: Activate telecom for select regions

#### Request
The following example shows a request that activates telecom in region codes 222 and 998.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_authenticationeventlistener_onPhoneMethodLoadStartExternalUsersAuthHandler_activate"
}
-->
```http
POST https://graph.microsoft.com/beta/identity/authenticationEventListeners
Content-Type: application/json

{  
    "@odata.type": "#microsoft.graph.onPhoneMethodLoadStartListener",  
    "conditions": {  
        "applications": {  
            "includeApplications": [  
                "3dfff01b-0afb-4a07-967f-d1ccbd81102a"  
            ]  
        }  
    },  
    "priority": 500,  
    "handler": {  
        "@odata.type": "#microsoft.graph.onPhoneMethodLoadStartExternalUsersAuthHandler", 
        "smsOptions": { 
            "includeAdditionalRegions": [222, 998], 
            "excludeRegions": [] 
        }
    }
} 
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-authenticationeventlistener-onphonemethodloadstartexternalusersauthhandler-activate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-authenticationeventlistener-onphonemethodloadstartexternalusersauthhandler-activate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-authenticationeventlistener-onphonemethodloadstartexternalusersauthhandler-activate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-authenticationeventlistener-onphonemethodloadstartexternalusersauthhandler-activate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-authenticationeventlistener-onphonemethodloadstartexternalusersauthhandler-activate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-authenticationeventlistener-onphonemethodloadstartexternalusersauthhandler-activate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-authenticationeventlistener-onphonemethodloadstartexternalusersauthhandler-activate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationEventListener"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{ 
    "@odata.context": "https://microsoft.graph.microsoft.com/beta/$metadata#identity/authenticationEventListeners/$entity", 
    "@odata.type": "#microsoft.graph.onPhoneMethodLoadStartListener", 
    "id": "2be3336b-e3b4-44f3-9128-b6fd9ad39bb8", 
    "conditions": {  
        "applications": { 
            "includeApplications": [  
                "3dfff01b-0afb-4a07-967f-d1ccbd81102a"  
            ] 
        }   
    },   
    "handler": {   
        "@odata.type": "#microsoft.graph.onPhoneMethodLoadStartExternalUsersAuthHandler ",  
        "smsOptions": { 
            "includeAdditionalRegions": [222, 998], 
            "excludeRegions": [] 
        }, 
    }
} 
```


### Example 4: Deactivate telecom in select regions

#### Request
The following example shows a request that deactivates telecom in region codes 1001, 99, and 777.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_authenticationeventlistener_onPhoneMethodLoadStartExternalUsersAuthHandler_deactivate"
}
-->
```http
POST https://graph.microsoft.com/beta/identity/authenticationEventListeners
Content-Type: application/json
  
{  
    "@odata.type": "#microsoft.graph.onPhoneMethodLoadStartListener",  
    "conditions": {  
        "applications": {  
            "includeApplications": [  
                "3dfff01b-0afb-4a07-967f-d1ccbd81102a"  
            ]  
        }  
    },  
    "priority": 500,  
    "handler": {  
        "@odata.type": "#microsoft.graph.onPhoneMethodLoadStartExternalUsersAuthHandler",
        "smsOptions": { 
            "includeAdditionalRegions": [], 
            "excludeRegions": [1001, 99, 777] 
        }
    } 
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-authenticationeventlistener-onphonemethodloadstartexternalusersauthhandler-deactivate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-authenticationeventlistener-onphonemethodloadstartexternalusersauthhandler-deactivate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-authenticationeventlistener-onphonemethodloadstartexternalusersauthhandler-deactivate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-authenticationeventlistener-onphonemethodloadstartexternalusersauthhandler-deactivate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-authenticationeventlistener-onphonemethodloadstartexternalusersauthhandler-deactivate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-authenticationeventlistener-onphonemethodloadstartexternalusersauthhandler-deactivate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-authenticationeventlistener-onphonemethodloadstartexternalusersauthhandler-deactivate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationEventListener"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{ 
    "@odata.context": "https://microsoft.graph.microsoft.com/beta/$metadata#identity/authenticationEventListeners/$entity", 
    "@odata.type": "#microsoft.graph.onPhoneMethodLoadStartListener", 
    "id": "2be3336b-e3b4-44f3-9128-b6fd9ad39bb8", 
    "conditions": {  
        "applications": { 
            "includeApplications": [  
                "3dfff01b-0afb-4a07-967f-d1ccbd81102a"  
            ] 
        }   
    },   
    "handler": {  
        "@odata.type": "#microsoft.graph.onPhoneMethodLoadStartExternalUsersAuthHandler",
        "smsOptions": { 
            "includeAdditionalRegions": [], 
            "excludeRegions": [1001, 99, 777] 
        }
    }
}
```

### Example 5: Enable Fraud Protection during sign-up with Arkose Labs 

#### Request
The following example shows a request that enables fraud protection during sign-up using Arkose Labs.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_authenticationeventlistener_onFraudProtectionLoadStartListener_Arkose"
}
-->
```http
POST https://graph.microsoft.com/beta/identity/authenticationEventListeners
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-authenticationeventlistener-onfraudprotectionloadstartlistener-arkose-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-authenticationeventlistener-onfraudprotectionloadstartlistener-arkose-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-authenticationeventlistener-onfraudprotectionloadstartlistener-arkose-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-authenticationeventlistener-onfraudprotectionloadstartlistener-arkose-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-authenticationeventlistener-onfraudprotectionloadstartlistener-arkose-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-authenticationeventlistener-onfraudprotectionloadstartlistener-arkose-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-authenticationeventlistener-onfraudprotectionloadstartlistener-arkose-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationEventListener"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/authenticationEventListeners/$entity",
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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_authenticationeventlistener_onFraudProtectionLoadStartListener_HUMANSecurity"
}
-->
```http
POST https://graph.microsoft.com/beta/identity/authenticationEventListeners
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-authenticationeventlistener-onfraudprotectionloadstartlistener-humansecurity-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-authenticationeventlistener-onfraudprotectionloadstartlistener-humansecurity-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-authenticationeventlistener-onfraudprotectionloadstartlistener-humansecurity-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-authenticationeventlistener-onfraudprotectionloadstartlistener-humansecurity-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-authenticationeventlistener-onfraudprotectionloadstartlistener-humansecurity-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-authenticationeventlistener-onfraudprotectionloadstartlistener-humansecurity-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-authenticationeventlistener-onfraudprotectionloadstartlistener-humansecurity-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationEventListener"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/authenticationEventListeners/$entity",
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
