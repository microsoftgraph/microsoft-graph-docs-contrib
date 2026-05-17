---
title: "cloudPcExternalPartner: retrieveActionReports"
description: "Retrieve action reports of external partner"
author: "XunZhangSZ"
ms.date: 01/21/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPcExternalPartner: retrieveActionReports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve action reports of external partner.

[!INCLUDE [national-cloud-support](../../includes/global-us-l4.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudpcexternalpartner-retrieveactionreports-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcexternalpartner-retrieveactionreports-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/virtualEndpoint/externalPartners/{cloudPcExternalPartnerId}/retrieveActionReports
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [cloudPcExternalPartnerActionReport](../resources/cloudpcexternalpartneractionreport.md) collection in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpcexternalpartnerthis.retrieveactionreports"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/externalPartners/b3548526-e615-3785-3118-be70b3968ec5/retrieveActionReports
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcexternalpartnerthisretrieveactionreports-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcexternalpartnerthisretrieveactionreports-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcexternalpartnerthisretrieveactionreports-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcexternalpartnerthisretrieveactionreports-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcexternalpartnerthisretrieveactionreports-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpcexternalpartnerthisretrieveactionreports-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPcExternalPartnerActionReport)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
        "actionType": "configureAgent",
        "authenticatedMethod": "normalUser",
        "authenticatedAppId": "de8bc8b5-d9f9-48b1-a8ad-b748da725064",
        "authenticatedAppName": null,
        "authenticatedUserPrincipalName": null,
        "createdDateTime": "2025-12-13T02:54:27.0440529Z",
        "cloudPcId": "",
        "cloudPcName": "",
        "agentName": null,
        "activityId": null,
        "activityMessage": null,
        "agentSetting": {
            "agentUrl": "https://rmmExample.microsoft.com/agent/rmmExampleAgent.msi",
            "agentSha256": "EC6AF1EA0367D16DDE6639A89A080A524CEBC4D4BEDFE00ED0CAC4B865A918D8",
            "installParameters": [
                "/quiet",
                "/norestart",
                "TOKENID=e69c1577-d465-4e57-af33-0ddea43feeb1"
            ],
            "autoDeploymentEnabled": true
        }
    },
    {
        "actionType": "deployAgent",
        "authenticatedMethod": "normalUser",
        "authenticatedAppId": "de8bc8b5-d9f9-48b1-a8ad-b748da725064",
        "authenticatedAppName": null,
        "authenticatedUserPrincipalName": null,
        "createdDateTime": "2025-12-13T02:54:27.0440529Z",
        "cloudPcId": "7c82a3e3-9459-44e4-94d9-b92f93bf78dd",
        "cloudPcName": "",
        "agentName": null,
        "activityId": "9adc7d86-6411-407e-b936-abfa0470dccf",
        "activityMessage": null,
        "agentSetting": null
    }
  ]
}
```

