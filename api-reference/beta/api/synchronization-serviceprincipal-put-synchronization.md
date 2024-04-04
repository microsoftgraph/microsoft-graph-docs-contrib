---
title: "Add synchronization secrets"
description: "Provide credentials for establishing connectivity with the target system."
ms.localizationpriority: medium
doc_type: apiPageType
author: "ArvindHarinder1"
ms.subservice: "entra-applications"
ms.topic: reference
---

# Add synchronization secrets

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provide credentials for establishing connectivity with the target system.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "synchronization_serviceprincipal_put_synchronization" } -->
[!INCLUDE [permissions-table](../includes/permissions/synchronization-serviceprincipal-put-synchronization-permissions.md)]

[!INCLUDE [rbac-synchronization-apis](../includes/rbac-for-apis/rbac-synchronization-apis.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PUT /servicePrincipals/{id}/synchronization/secrets
```

## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {code}|

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|credentials|[synchronizationSecretKeyStringValuePair](../resources/synchronization-synchronizationsecretkeystringvaluepair.md) collection|Credentials to validate. Ignored when the **useSavedCredentials** parameter is `true`.|

## Response
If the secrets are successfully saved, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Example

### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "synchronization_secrets"
}-->
```http
PUT https://graph.microsoft.com/beta/servicePrincipals/{id}/synchronization/secrets
Content-type: application/json

{
    "value": [
        {
            "key": "BaseAddress",
            "value": "user@domain.com"
        },
        {
            "key": "SecretToken",
            "value": "password-value"
        },
        {
            "key": "SyncNotificationSettings",
            "value": "{\"Enabled\":false,\"DeleteThresholdEnabled\":false}"
        },
        {
            "key": "SyncAll",
            "value": "false"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/synchronization-secrets-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/synchronization-secrets-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/synchronization-secrets-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/synchronization-secrets-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/synchronization-secrets-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/synchronization-secrets-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/synchronization-secrets-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/synchronization-secrets-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "synchronization: secrets",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
