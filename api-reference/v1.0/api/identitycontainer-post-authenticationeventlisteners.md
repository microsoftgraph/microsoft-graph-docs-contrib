---
title: "Create authenticationEventListener"
description: "Create a new authenticationEventListener object."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create authenticationEventListener
Namespace: microsoft.graph

Create a new [authenticationEventListener](../resources/authenticationeventlistener.md) object. You can create one of the following subtypes that are derived from **authenticationEventListener**.

- [onTokenIssuanceStartListener resource type](../resources/ontokenissuancestartlistener.md)

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
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions on which this authenticationEventListener should trigger. Optional.|
|handler|[onTokenIssuanceStartHandler](../resources/ontokenissuancestarthandler.md)|The handler to invoke when conditions are met. Can be set for the **onTokenIssuanceStartListener** listener type.|

## Response

If successful, this method returns a `201 Created` response code and an [authenticationEventListener](../resources/authenticationeventlistener.md) object in the response body. The **@odata.type** property specifies the type of the created object.

## Examples


### Request
The following example shows a request.

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

