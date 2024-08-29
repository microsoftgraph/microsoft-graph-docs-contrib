---
title: "List customerInsights"
description: "Get a list of the customerInsight data and their properties."
author: "evandontje-ms"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: apiPageType
---

# List customerInsights

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [customerInsight](../resources/partner-security-customerinsight.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "partner-security-partnersecurityscore-list-customerinsights"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/partnersecurityscore-list-customerinsights-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/partner/securityScore/customerInsights
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

Server-side pagination is supported by following the `nextLink` provided in the API response when you use the `$skipToken` OData query parameter. Using client-side pagination with `$skip` and `$top` isn't supported.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.partner.security.customerInsight](../resources/partner-security-customerinsight.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_customerinsight"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/partner/securityScore/customerInsights
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.partner.security.customerInsight)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.partner.security.customerInsight",
      "tenantId": "d90cb160-123d-0608-3fd6-c53551dcc20c",
      "mfa": {
        "@odata.type": "microsoft.graph.partner.security.customerMfaInsight",
        "compliantAdminsCount": 1,
        "compliantNonAdminsCount": 2,
        "totalUsersCount": 5,
        "securityDefaultsStatus": "enabled",
        "mfaConditionalAccessPolicyStatus": "disabled",
        "legacyPerUserMfaStatus": "disabled"
      }
    }
  ]
}
```

