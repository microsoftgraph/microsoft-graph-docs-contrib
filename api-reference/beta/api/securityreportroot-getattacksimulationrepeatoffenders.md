---
title: "securityReportRoot: getAttackSimulationRepeatOffenders"
description: "List repeat offender users of a tenant in attack simulation and training campaigns."
author: "Gopal-MSFT"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: apiPageType
---

# securityReportRoot: getAttackSimulationRepeatOffenders
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the users of a tenant who have yielded to attacks more than once in attack simulation and training campaigns.

This function supports `@odata.nextLink` for pagination.
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Reports.Read.All                            |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Reports.Read.All                            |

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

If successful, this function returns a `200 OK` response code and a [attackSimulationRepeatOffender](../resources/attacksimulationrepeatoffender.md) collection in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "securityreportsrootthis.getattacksimulationrepeatoffenders"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/security/getAttackSimulationRepeatOffenders
```


### Response
The following is an example of the response
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
    "@odata.nextLink": "https://graph.microsoft.com/beta/reports/getAttackSimulationRepeatOffenders?$skiptoken=+RID%3",
    "value": [
        {
            "repeatOffenceCount": 5,
            "attackSimulationUser": {
                "userId": "6fcdab00-385b-46f2-a329-b843b49e9147",
                "displayName": "anadi_testing",
                "email": ""
            }
        },
        {
            "repeatOffenceCount": 638,
            "attackSimulationUser": {
                "userId": "478a22cd-aecc-41df-b995-88c8de17aaf5",
                "displayName": "attacksim",
                "email": "attacksim@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com"
            }
        }
    ]
}

```

