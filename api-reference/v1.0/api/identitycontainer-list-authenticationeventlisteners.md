---
title: "List authenticationEventListeners"
description: "Get a list of the authenticationEventListener objects and their properties."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List authenticationEventListeners
Namespace: microsoft.graph

Get a list of the [authenticationEventListener](../resources/authenticationeventlistener.md) objects and their properties. The following derived types are supported:

- [onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md)

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitycontainer_list_authenticationeventlisteners" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitycontainer-list-authenticationeventlisteners-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/authenticationEventListeners
```

## Optional query parameters
This method supports the `$select`, `$top`, `$orderby`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [authenticationEventListener](../resources/authenticationeventlistener.md) objects in the response body. The **@odata.type** property in the response object indicates the type of the authenticationEventListener object.

## Examples

### Request
The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "list_authenticationeventlistener"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identity/authenticationEventListeners
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.authenticationEventListener)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/authenticationEventListeners",
    "value": [
        {
            "@odata.type": "#microsoft.graph.onTokenIssuanceStartListener",
            "id": "990d94e5-cc8f-4c4b-97b4-27e2678aac28",
            "conditions": {
                "applications": {
                    "includeApplications@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/authenticationEventListeners('990d94e5-cc8f-4c4b-97b4-27e2678aac28')/microsoft.graph.onTokenIssuanceStartListener/conditions/applications/includeApplications",
                    "includeApplications": [
                        {
                            "appId": "a13d0fc1-04ab-4ede-b215-63de0174cbb4"
                        }
                    ]
                }
            },
            "handler": {
                "@odata.type": "#microsoft.graph.onTokenIssuanceStartCustomExtensionHandler",
                "configuration": null,
                "customExtension": {
                    "id": "6fc5012e-7665-43d6-9708-4370863f4e6e",
                    "displayName": "onTokenIssuanceStartCustomExtension",
                    "description": "Fetch additional claims from custom user store",
                    "clientConfiguration": null,
                    "authenticationConfiguration": {
                        "@odata.type": "#microsoft.graph.azureAdTokenAuthentication",
                        "resourceId": "api://authenticationeventsAPI.contoso.net/a13d0fc1-04ab-4ede-b215-63de0174cbb4"
                    },
                    "endpointConfiguration": {
                        "@odata.type": "#microsoft.graph.httpRequestEndpoint",
                        "targetUrl": "https://authenticationeventsAPI.contoso.net"
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
            }
        }
    ]
}
```

