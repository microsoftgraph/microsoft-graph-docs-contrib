---
title: "Get tlsInspectionRule"
description: "Get a tlsInspectionRule object."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Get tlsInspectionRule

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [tlsInspectionRule](../resources/networkaccess-tlsinspectionrule.md) object.

## Permissions

One of these permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-overview).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-tlsinspectionrule-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-tlsinspectionrule-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/tlsInspectionPolicies/{tlsInspectionPolicyId}/policyRules/{tlsInspectionRuleId}
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

If successful, this method returns a `200 OK` response code and a [tlsInspectionRule](../resources/networkaccess-tlsinspectionrule.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_tlsinspectionrule",
  "sampleKeys": ["b712c469-e7cd-e7cb-738f-94b199570b0d", "ecf99dcc-6575-4d01-83dc-3fa5a940c76b"]
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/tlsInspectionPolicies/b712c469-e7cd-e7cb-738f-94b199570b0d/policyRules/ecf99dcc-6575-4d01-83dc-3fa5a940c76b
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
}
