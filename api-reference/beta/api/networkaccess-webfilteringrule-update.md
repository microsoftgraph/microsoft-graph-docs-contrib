---
title: "Update webFilteringRule"
description: "Update the properties of a webFilteringRule object."
author: "mialdrid"
ms.date: 09/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Update webFilteringRule

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update a [webFilteringRule](../resources/networkaccess-webfilteringrule.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-webfilteringrule-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-webfilteringrule-update-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policy/policyRules/{webFilteringRuleId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.networkaccess.webFilteringAction](../resources/networkaccess-webfilteringaction.md)|The action to apply when the rule matches web traffic.|
|description|String|The description of the object.|
|matchingConditions|[microsoft.graph.networkaccess.webFilteringMatchingConditions](../resources/networkaccess-webfilteringmatchingconditions.md)|The source and destination conditions that determine whether traffic matches the rule.|
|name|String|The display name of the object.|
|priority|Int64|The processing order of the rule. Rules with lower values are evaluated first.|
|settings|[microsoft.graph.networkaccess.webFilteringRuleSettings](../resources/networkaccess-webfilteringrulesettings.md)|The settings for the object.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.networkaccess.webFilteringRule](../resources/networkaccess-webfilteringrule.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_webfilteringrule"
}
-->
```http
PATCH https://graph.microsoft.com/beta/networkAccess/filteringProfiles/d734d2de-f2df-4b4a-8c4c-5111f8878275/policies/70405a6c-b823-4521-8981-de9d08a21f8f/policy/policyRules/67f2edf8-1dc0-4a4f-87ea-9117541646de
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.webFilteringRule",
  "id": "cf463f9e-41bd-2423-dcef-e495df5353da",
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
