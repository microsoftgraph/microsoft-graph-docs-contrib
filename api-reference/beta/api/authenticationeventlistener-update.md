---
title: "Update authenticationEventListener"
description: "Update the properties of an authenticationEventListener object."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.topic: reference
---

# Update authenticationEventListener
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [authenticationEventListener](../resources/authenticationeventlistener.md) object. You must specify the **@odata.type** property and the value of the [authenticationEventListener](../resources/authenticationeventlistener.md) object type to update.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

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
|handler|[onAttributeCollectionHandler](../resources/ontokenissuancestarthandler.md)|The handler to invoke when conditions are met. Can be updated for the **onAttributeCollectionListener** listener type.|
|handler|[onAuthenticationMethodLoadStartHandler](../resources/ontokenissuancestarthandler.md)|The handler to invoke when conditions are met. Can be updated for the **onAuthenticationMethodLoadStartListener** listener type.|
|handler|[onInteractiveAuthFlowStartHandler](../resources/ontokenissuancestarthandler.md)|The handler to invoke when conditions are met. Can be updated for the **onInteractiveAuthFlowStartListener** listener type.|
|handler|[onTokenIssuanceStartHandler](../resources/ontokenissuancestarthandler.md)|The handler to invoke when conditions are met. Can be updated for the **onTokenIssuanceStartListener** listener type.|
|handler|[onUserCreateStartHandler](../resources/ontokenissuancestarthandler.md)|The handler to invoke when conditions are met. Can be updated for the **onUserCreateStartListener** listener type.|
|handler|[onAttributeCollectionStartHandler](../resources/onattributecollectionstarthandler.md)|The handler to invoke when conditions are met. Can be updated for the **onAttributeCollectionStartListener** listener type.|
|handler|[onAttributeCollectionSubmitHandler](../resources/onattributecollectionsubmithandler.md)|The handler to invoke when conditions are met. Can be updated for the **onAttributeCollectionSubmitListener** listener type.|
|priority|Int32|The priority of this handler. Between 0 (lower priority) and 1000 (higher priority). Required.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following example shows a request to update an authentication event listener's trigger conditions or priority:
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_authenticationeventlistener"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identity/authenticationEventListeners/990d94e5-cc8f-4c4b-97b4-27e2678aac28
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.onTokenIssuanceStartListener",
    "conditions": {
        "applications": {
            "includeAllApplications": false
        }
    },
    "priority": 500
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-authenticationeventlistener-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-authenticationeventlistener-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-authenticationeventlistener-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-authenticationeventlistener-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-authenticationeventlistener-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-authenticationeventlistener-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-authenticationeventlistener-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-authenticationeventlistener-python-snippets.md)]
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

