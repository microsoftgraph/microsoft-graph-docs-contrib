---
title: "securityReportsRoot: getAttackSimulationRepeatOffenders"
description: "List the tenant users who have yielded to attacks more than once in attack simulation and training campaigns."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: apiPageType
---

# securityReportsRoot: getAttackSimulationRepeatOffenders
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the tenant users who have yielded to attacks more than once in attack simulation and training campaigns.

This function supports `@odata.nextLink` for pagination.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "securityreportsroot_getattacksimulationrepeatoffenders" } -->
[!INCLUDE [permissions-table](../includes/permissions/securityreportsroot-getattacksimulationrepeatoffenders-permissions.md)]

## HTTP request
[!INCLUDE [attacksim-deprecate-queryurl-reportapi](../includes/attacksim-deprecate-queryurl-reportapi.md)]

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/security/getAttackSimulationRepeatOffenders
GET /reports/getAttackSimulationRepeatOffenders
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and an [attackSimulationRepeatOffender](../resources/attacksimulationrepeatoffender.md) collection in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "securityreportsrootthis.getattacksimulationrepeatoffenders"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/security/getAttackSimulationRepeatOffenders
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/securityreportsrootthisgetattacksimulationrepeatoffenders-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/securityreportsrootthisgetattacksimulationrepeatoffenders-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/securityreportsrootthisgetattacksimulationrepeatoffenders-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/securityreportsrootthisgetattacksimulationrepeatoffenders-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/securityreportsrootthisgetattacksimulationrepeatoffenders-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/securityreportsrootthisgetattacksimulationrepeatoffenders-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/securityreportsrootthisgetattacksimulationrepeatoffenders-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/securityreportsrootthisgetattacksimulationrepeatoffenders-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.attackSimulationRepeatOffender)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.attackSimulationRepeatOffender)",
    "@odata.nextLink": "https://graph.microsoft.com/beta/reports/security/getAttackSimulationRepeatOffenders?$skiptoken=+RID%3",
    "value": [
        {
            "repeatOffenceCount": 5,
            "attackSimulationUser": {
                "userId": "6fcdab00-385b-46f2-a329-b843b49e9147",
                "displayName": "Reed Flores",
                "email": "reed@contoso.com"
            }
        },
        {
            "repeatOffenceCount": 638,
            "attackSimulationUser": {
                "userId": "478a22cd-aecc-41df-b995-88c8de17aaf5",
                "displayName": "Reed Flores",
                "email": "reed@contoso.com"
            }
        }
    ]
}

```

## Related content
[reportRoot: getAttackSimulationRepeatOffenders](reportroot-getattacksimulationrepeatoffenders.md) (deprecated)
