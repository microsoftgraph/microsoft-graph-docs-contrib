---
title: "Create policyRule for threatIntelligencePolicy"
description: "Create a new policyRule object."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Create policyRule for threatIntelligencePolicy

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [threatIntelligenceRule](../resources/networkaccess-threatintelligencerule.md) object. Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyRule.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-threatintelligencepolicy-post-policyrules-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-threatintelligencepolicy-post-policyrules-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policyRules
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) object.

You can specify the following properties when creating a **policyRule**.

|Property|Type|Description|
|:---|:---|:---|
|name|String|The display name of the policy rule. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_threatintelligence_policyrule_from_"
}
-->
```http
POST https://graph.microsoft.com/beta/networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policyRules
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.threatIntelligenceRule",
  "name": "Rule 1",
  "priority": 100,
  "description": "Rule 1",
  "action": "allow",
  "settings": {
    "status": "reportOnly"
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
}
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
HTTP/1.1 201 Created
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

