---
title: "Update authenticationEventListener"
description: "Update the properties of an authenticationEventListener object."
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Update authenticationEventListener
Namespace: microsoft.graph

Update the properties of an [authenticationEventListener](../resources/authenticationeventlistener.md) object. You must specify the **@odata.type** property and the value of the [authenticationEventListener](../resources/authenticationeventlistener.md) object type to update.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationeventlistener_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationeventlistener-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identity/authenticationEventListeners/{authenticationEventListenerId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

You must specify the **@odata.type** property and the value of the [authenticationEventListener](../resources/authenticationeventlistener.md) object type to update. For example, `"@odata.type": "#microsoft.graph.onTokenIssuanceStartListener"`.

|Property|Type|Description|
|:---|:---|:---|
|authenticationEventsFlowId|String|The identifier of the authentication events flow.  Optional.|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions on which this authenticationEventListener should trigger. Optional.|
|handler|[onTokenIssuanceStartHandler](../resources/ontokenissuancestarthandler.md)|The handler to invoke when conditions are met. Can be updated for the **onTokenIssuanceStartListener** listener type.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request to update an authentication event listener's trigger conditions:

<!-- {
  "blockType": "request",
  "name": "update_authenticationeventlistener"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/identity/authenticationEventListeners/990d94e5-cc8f-4c4b-97b4-27e2678aac28
Content-Type: application/json

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
}
```

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

