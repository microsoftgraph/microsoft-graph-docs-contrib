---
title: "List tlsInspection policyRules"
description: "Get a list of the tlsInspectionRule objects in a TLS inspection policy."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# List policyRules

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [tlsInspectionRule](../resources/networkaccess-tlsinspectionrule.md) objects in a TLS inspection policy.

## Permissions

One of these permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-overview).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-tlsinspectionpolicy-list-policyrules-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-tlsinspectionpolicy-list-policyrules-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/tlsInspectionPolicies/{tlsInspectionPolicyId}/policyRules
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [tlsInspectionRule](../resources/networkaccess-tlsinspectionrule.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_tlsinspectionrule",
  "sampleKeys": ["b712c469-e7cd-e7cb-738f-94b199570b0d"]
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/tlsInspectionPolicies/b712c469-e7cd-e7cb-738f-94b199570b0d/policyRules
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.tlsInspectionRule"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/tlsInspectionPolicies('b712c469-e7cd-e7cb-738f-94b199570b0d')/policyRules",
  "value": [
    {
      "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionRule",
      "id": "ecf99dcc-6575-4d01-83dc-3fa5a940c76b",
      "name": "Contoso TLS Rule 1",
      "priority": 100,
      "description": "My TLS rule",
      "action": "inspect",
      "settings": {
        "status": "enabled"
      },
      "matchingConditions": {
        "destinations": [
          {
            "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionFqdnDestination",
            "values": [
              "www.contoso.test.com",
              "*.contoso.org"
            ]
          },
          {
            "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionWebCategoriesDestination",
            "values": [
              "Entertainment"
            ]
          }
        ]
      }
    },
  ]
}
```