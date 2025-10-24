---
title: "List policyRules for threatIntelligencePolicy"
description: "Get a list of the rules associated with a threat intelligence policy."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# List policyRules for threatIntelligencePolicy

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [threatIntelligenceRule](../resources/networkaccess-threatintelligencerule.md) objects associated with a [threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md). These rules define the specific conditions and actions for evaluating network traffic against known threat intelligence data.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-threatintelligencepolicy-list-policyrules-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-threatintelligencepolicy-list-policyrules-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policyRules
```

## Optional query parameters

This method supports the `$select`, `$top`, `expand`, and `$filter` OData query parameters to help customize the response.  For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [policyRule](../resources/networkaccess-policyrule.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_threatintelligence_policyrule"
}
-->
```http
GET https://graph.microsoft.com/beta/networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policyRules
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.policyRule"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/threatIntelligencePolicies('a8352c78-90c6-4edd-aaca-9dc4292e7750')/policyRules",
  "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET networkAccess/threatIntelligencePolicies('<guid>')/policyRules?$select=name",
  "value": [
    {
      "@odata.type": "#microsoft.graph.networkaccess.threatIntelligenceRule",
      "id": "eee10b7a-437b-4212-b8c1-38a016ace6da",
      "name": "Rule 1",
      "priority": 100,
      "description": "Rule 1",
      "action": "allow",
      "settings": {
        "status": "enabled"
      },
      "matchingConditions": {
        "severity": "high",
        "destinations": [
          {
            "@odata.type": "#microsoft.graph.networkaccess.threatIntelligenceFqdnDestination",
            "values": [
              "babsite.com",
              "*.verybabwebsite.com"
            ]
          }
        ]
      }
    },
    {
      "@odata.type": "#microsoft.graph.networkaccess.threatIntelligenceRule",
      "id": "e2854585-68ba-4889-868d-45668ff7a295",
      "name": "Default threat intel rule",
      "priority": 65000,
      "description": "Auto-created rule blocking access to sites with high severity threat detected",
      "action": "block",
      "settings": {
        "status": "enabled"
      },
      "matchingConditions": {
        "severity": "high",
        "destinations": [
          {
            "@odata.type": "#microsoft.graph.networkaccess.threatIntelligenceFqdnDestination",
            "values": [
              "*"
            ]
          }
        ]
      }
    }
  ]
}
```
