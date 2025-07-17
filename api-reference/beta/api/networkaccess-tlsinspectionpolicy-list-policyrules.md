---
title: "List policyRules for TLS Inspection"
description: "Get a list of the tlsInspectionRule objects in a TLS inspection policy."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# List policyRules for TLS Inspection

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [tlsInspectionRule](../resources/networkaccess-tlsinspectionrule.md) objects in a [tlsInspectionPolicy](../resources/networkaccess-tlsinspectionpolicy.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_tlsinspectionpolicy_list_policyrules" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-tlsinspectionpolicy-list-policyrules-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/tlsInspectionPolicies/{tlsInspectionPolicyId}/policyRules
```

## Optional query parameters

This method supports the `$top`, `$count`, `$skip`, `$expand`, `$filter` and `$select` [OData query parameters](/graph/query-parameters) to help customize the response.

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
