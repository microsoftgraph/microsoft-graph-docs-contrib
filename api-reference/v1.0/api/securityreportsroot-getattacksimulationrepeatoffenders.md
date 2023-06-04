---
title: "securityReportsRoot: getAttackSimulationRepeatOffenders"
description: "List the tenant users who have yielded to attacks more than once in attack simulation and training campaigns."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: apiPageType
---

# securityReportsRoot: getAttackSimulationRepeatOffenders
Namespace: microsoft.graph

List the tenant users who have yielded to attacks more than once in attack simulation and training campaigns.

This function supports `@odata.nextLink` for pagination.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | AttackSimulation.Read.All                   |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | AttackSimulation.Read.All                   |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/security/getAttackSimulationRepeatOffenders
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

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
GET https://graph.microsoft.com/v1.0/reports/security/getAttackSimulationRepeatOffenders
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/securityreportsrootthisgetattacksimulationrepeatoffenders-csharp-snippets.md)]
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

---

### Response
The following is an example of the response.
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.attackSimulationRepeatOffender)",
    "@odata.nextLink": "https://graph.microsoft.com/v1.0/reports/security/getAttackSimulationRepeatOffenders?$skiptoken=+RID%3",
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

