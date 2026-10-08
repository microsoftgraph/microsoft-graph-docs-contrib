---
title: "Get threatIntelligenceRule"
description: "Read the properties and relationships of a threatIntelligenceRule object."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Get threatIntelligenceRule

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [threatIntelligenceRule](../resources/networkaccess-threatintelligencerule.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-threatintelligencerule-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-threatintelligencerule-get-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policyRules/{id}
```

## Optional query parameters

This method supports the `$select` and `$expand` OData query parameters to help customize the response.  For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.threatIntelligenceRule](../resources/networkaccess-threatintelligencerule.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_threatintelligencerule"
}
-->
```http
GET https://graph.microsoft.com/beta/networkAccess/filteringProfiles/ab4f3459-c39d-4e99-b8d0-b1aee4726b84/policies/ac253559-37a0-4f72-b666-103420b94e38/policyRules/0823cb1e-644b-4585-80db-1c1055894ec7
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.threatIntelligenceRule"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/threatIntelligencePolicies('a8352c78-90c6-4edd-aaca-9dc4292e7750')/policyRules/$entity",
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
              "bing.com",
              "*.bing.com"
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

