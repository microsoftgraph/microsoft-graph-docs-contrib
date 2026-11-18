---
title: "Create policyRule"
description: "Create a new policyRule object."
author: "mialdrid"
ms.date: 09/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Create policyRule

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [webFilteringRule](../resources/networkaccess-webfilteringrule.md) in a web filtering policy.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-webfilteringpolicy-post-policyrules-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-webfilteringpolicy-post-policyrules-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policy/policyRules
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.webFilteringRule](../resources/networkaccess-webfilteringrule.md) object.

You can specify the following properties when creating a **webFilteringRule**.

|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.networkaccess.webFilteringAction](../resources/networkaccess-webfilteringaction.md)|The action to apply when the rule matches web traffic. Required.|
|description|String|The description of the rule. Optional.|
|matchingConditions|[microsoft.graph.networkaccess.webFilteringMatchingConditions](../resources/networkaccess-webfilteringmatchingconditions.md)|The source and destination conditions that determine whether traffic matches the rule. Required.|
|name|String|The display name of the rule. Required.|
|priority|Int64|The processing order of the rule. Rules with lower values are evaluated first. Required.|
|settings|[microsoft.graph.networkaccess.webFilteringRuleSettings](../resources/networkaccess-webfilteringrulesettings.md)|The enforcement settings for the rule. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.networkaccess.webFilteringRule](../resources/networkaccess-webfilteringrule.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_policyrule_from_webfilteringpolicy"
}
-->
```http
POST https://graph.microsoft.com/beta/networkAccess/filteringProfiles/d734d2de-f2df-4b4a-8c4c-5111f8878275/policies/70405a6c-b823-4521-8981-de9d08a21f8f/policy/policyRules
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.webFilteringRule",
  "name": "Block social networking sites",
  "description": "Blocks access to selected social networking destinations",
  "action": {
    "@odata.type": "#microsoft.graph.networkaccess.webFilteringActionBlock"
  },
  "priority": 100,
  "settings": {
    "@odata.type": "#microsoft.graph.networkaccess.webFilteringRuleSettings",
    "status": "enabled"
  },
  "matchingConditions": {
    "@odata.type": "#microsoft.graph.networkaccess.webFilteringMatchingConditions",
    "destinations": {
      "@odata.type": "#microsoft.graph.networkaccess.webFilteringDestinationMatching",
      "httpRequestMethod": "get",
      "targets": [
        {
          "@odata.type": "#microsoft.graph.networkaccess.webFilteringWebCategoryDestination",
          "values": ["SocialNetworking"]
        }
      ]
    },
    "sources": {
      "@odata.type": "#microsoft.graph.networkaccess.webFilteringSourceMatching",
      "sessionType": "user"
    }
  }
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.webFilteringRule"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.webFilteringRule",
  "id": "92bc5f58-a28b-94ee-0caa-92c81e446163",
  "name": "Block social networking sites",
  "description": "Blocks access to selected social networking destinations",
  "action": {
    "@odata.type": "#microsoft.graph.networkaccess.webFilteringActionBlock"
  },
  "priority": 100,
  "settings": {
    "@odata.type": "#microsoft.graph.networkaccess.webFilteringRuleSettings",
    "status": "enabled"
  },
  "matchingConditions": {
    "@odata.type": "#microsoft.graph.networkaccess.webFilteringMatchingConditions",
    "destinations": {
      "@odata.type": "#microsoft.graph.networkaccess.webFilteringDestinationMatching",
      "httpRequestMethod": "get",
      "targets": [
        {
          "@odata.type": "#microsoft.graph.networkaccess.webFilteringWebCategoryDestination",
          "values": ["SocialNetworking"]
        }
      ]
    },
    "sources": {
      "@odata.type": "#microsoft.graph.networkaccess.webFilteringSourceMatching",
      "sessionType": "user"
    }
  }
}
```
