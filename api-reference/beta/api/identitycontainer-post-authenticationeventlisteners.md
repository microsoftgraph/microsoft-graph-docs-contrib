---
title: "Create authenticationEventListener"
description: "Create a new authenticationEventListener object."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.topic: reference
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


[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitycontainer_post_authenticationeventlisteners" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitycontainer-post-authenticationeventlisteners-permissions.md)]

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
|authenticationEventsFlowId|String|The identifier of the authentication events flow. Optional.|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions on which this authenticationEventListener should trigger. Optional.|
|handler|[onAttributeCollectionHandler](../resources/ontokenissuancestarthandler.md)|The handler to invoke when conditions are met. Can be set for the **onAttributeCollectionListener** listener type.|
|handler|[onAttributeCollectionStartListener](../resources/onattributecollectionstartlistener.md)|The handler to invoke when conditions are met. Can be set for the **onAttributeCollectionStartListener** listener type.|
|handler|[onAttributeCollectionSubmitListener](../resources/onattributecollectionsubmitlistener.md)|The handler to invoke when conditions are met. Can be set for the **onAttributeCollectionSubmitListener** listener type.|
|handler|[onAuthenticationMethodLoadStartHandler](../resources/ontokenissuancestarthandler.md)|The handler to invoke when conditions are met. Can be set for the **onAuthenticationMethodLoadStartListener** listener type.|
|handler|[onInteractiveAuthFlowStartHandler](../resources/ontokenissuancestarthandler.md)|The handler to invoke when conditions are met. Can be set for the **onInteractiveAuthFlowStartListener** listener type.|
|handler|[onTokenIssuanceStartHandler](../resources/ontokenissuancestarthandler.md)|The handler to invoke when conditions are met. Can be set for the **onTokenIssuanceStartListener** listener type.|
|handler|[onUserCreateStartHandler](../resources/ontokenissuancestarthandler.md)|The handler to invoke when conditions are met. Can be set for the **onUserCreateStartListener** listener type.|
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
``` http
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
                    "appId": "a13d0fc1-04ab-4ede-b215-63de0174cbb4"
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

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-authenticationeventlistener-ontokenissuancestartlistener-cli-snippets.md)]
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
``` http
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

### Example 2: Create an onAttributeCollectionStartListener object

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_authenticationeventlistener_onAttributeCollectionStartListener"
}
-->
``` http
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
                    "appId": "a7eed01f-a333-4983-bc6b-d359ec9e5eef"
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

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-authenticationeventlistener-onattributecollectionstartlistener-cli-snippets.md)]
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
``` http
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
``` http
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
                    "appId": "a7eed01f-a333-4983-bc6b-d359ec9e5eef"
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

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-authenticationeventlistener-onattributecollectionsubmitlistener-cli-snippets.md)]
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
``` http
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
