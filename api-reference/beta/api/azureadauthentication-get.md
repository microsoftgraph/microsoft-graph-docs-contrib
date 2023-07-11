---
title: "Get azureADAuthentication"
description: "Read the properties and relationships of an azureADAuthentication object to find Azure AD SLA attainment for your tenant."
author: "sarbar"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# Get azureADAuthentication
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [azureADAuthentication](../resources/azureadauthentication.md) object to find the level of Azure AD authentication availability for your tenant. The Azure AD Service Level Agreement (SLA) commits to at least 99.99% authentication availability, as described in [Azure Active Directory SLA performance](/azure/active-directory/reports-monitoring/reference-azure-ad-sla-performance). This object provides you with your tenant’s actual performance against this commitment.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Reports.Read.All |
| Application                            | Reports.Read.All |

In addition to the delegated permissions, the signed-in user needs to belong to one of the following directory roles that allow them to read sign-in reports. To learn more about directory roles, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference):
+ Global Administrator
+ Global Reader
+ Reports Reader
+ Security Administrator
+ Security Operator
+ Security Reader

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/sla/azureADAuthentication
```

## Optional query parameters
This method doesn't take any parameters.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [azureADAuthentication](../resources/azureadauthentication.md) object in the response body. Each returned value includes a score indicating the availability percentage of the tenant’s authentications for the month, along with a startDate and endDate indicating the month that the availability percentage is assigned to.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_azureadauthentication"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/sla/azureADAuthentication
```

### Response
The following is an example of the response
>**Note:** The response object shown here is shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.azureADAuthentication"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/sla/azureADAuthentication/$entity",
    "attainments": [
        {
            "startDate": "2023-05-01",
            "endDate": "2023-05-31",
            "score": 99.999
        },
        {
            "startDate": "2023-04-01",
            "endDate": "2023-04-30",
            "score": 99.999
        },
        {
            "startDate": "2023-03-01",
            "endDate": "2023-03-31",
            "score": 99.999
        },
        {
            "startDate": "2023-02-01",
            "endDate": "2023-02-28",
            "score": 99.999
        },
        {
            "startDate": "2023-01-01",
            "endDate": "2023-01-31",
            "score": 99.998
        },
        {
            "startDate": "2022-12-01",
            "endDate": "2022-12-31",
            "score": 99.999
        },
    ]
}
```
