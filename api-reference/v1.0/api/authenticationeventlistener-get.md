---
title: "Get authenticationEventListener"
description: "Read the properties and relationships of an authenticationEventListener object."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get authenticationEventListener
Namespace: microsoft.graph

Read the properties and relationships of an [authenticationEventListener](../resources/authenticationeventlistener.md) object. The **@odata.type** property in the response object indicates the type of the authenticationEventListener object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationeventlistener_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationeventlistener-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/authenticationEventListeners/{authenticationEventListenerId}
```

## Optional query parameters
This method supports the `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [authenticationEventListener](../resources/authenticationeventlistener.md) object in the response body.

## Examples

### Request
The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "get_authenticationeventlistener"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identity/authenticationEventListeners/6fc5012e-7665-43d6-9708-4370863f4e6e
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
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/authenticationEventListeners/$entity",
    "@odata.type": "#microsoft.graph.onTokenIssuanceStartListener",
    "id": "6fc5012e-7665-43d6-9708-4370863f4e6e",
    "conditions": {
        "applications": {
            "includeApplications@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/authenticationEventListeners('6fc5012e-7665-43d6-9708-4370863f4e6e')/microsoft.graph.onTokenIssuanceStartListener/conditions/applications/includeApplications",
            "includeApplications": [
                {
                    "appId": "77552a27-2fbf-4fb0-873e-af165ec071d5"
                }
            ]
        }
    }
}
```

