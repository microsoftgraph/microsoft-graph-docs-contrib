---
title: "List securityScoreHistory"
description: "Lists the history of security score changes for the partner."
author: "evandontje-ms"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: apiPageType
---

# List securityScoreHistory

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [securityScoreHistory](../resources/partner-security-securityscorehistory.md) entries.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "partner-security-partnersecurityscore-list-history"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/partnersecurityscore-list-history-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/partner/securityScore/history
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.partner.security.securityScoreHistory](../resources/partner-security-securityscorehistory.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_securityscorehistory"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/partner/securityScore/history
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.partner.security.securityScoreHistory)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.partner.security.securityScoreHistory",
      "id": "a368fa06-ba31-2d7e-3b0c-2ded0b0c093e",
      "createdDateTime": "2024-01-17T00:00:00Z",
      "score": 14.29,
      "compliantRequirementsCount": 4,
      "totalRequirementsCount": 5
    }
  ]
}
```

