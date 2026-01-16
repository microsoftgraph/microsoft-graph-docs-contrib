---
title: "Update policy"
description: "Update the properties of a policy object."
author: "andredm7"
ms.date: 16/01/2025
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Update policy

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [policy](../resources/windowsupdates-policy.md) object.

You can use this method with the following child object type: [qualityUpdatePolicy](../resources/windowsupdates-qualityupdatepolicy.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-policy-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-policy-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/windows/updates/policies/{policyId}
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
|approvalRules|[microsoft.graph.windowsUpdates.approvalRule](../resources/windowsupdates-approvalrule.md) collection| The approved rule of the policy that determines which published content matches the rule on an ongoing basis. Inherited from [policy](../resources/windowsupdates-policy.md). Required.|
|description|String| The quality update policy description. The maximum length is 1,500 characters. Inherited from [policy](../resources/windowsupdates-policy.md). Required.|
|displayName|String| The quality update policy display name. The maximum length is 200 characters. Inherited from [policy](../resources/windowsupdates-policy.md). Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md) object in the response body.

## Examples

### Request

The following example shows how to update a quality update policy.
<!-- {
  "blockType": "request",
  "name": "update_qualityupdatepolicy",
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/windows/updates/policies/f316bfd9-c84e-a334-cebe-071d3c64b2c1
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdatePolicy",
  "displayName": "Patch Tuesday Test",
  "description": "Quality update policy to test upcoming Patch Tuesday updates",
  "approvalRules": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdateApprovalRule",
      "deferralInDays": 0,
      "classification": "nonSecurity",
      "cadence": "outOfBand"
    }
  ]
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdatePolicy",
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdatePolicy",
  "displayName": "Patch Tuesday Test",
  "description": "Quality update policy to test upcoming Patch Tuesday updates",
  "approvalRules": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdateApprovalRule",
      "deferralInDays": 0,
      "classification": "nonSecurity",
      "cadence": "outOfBand"
    }
  ],
  "id": "f316bfd9-c84e-a334-cebe-071d3c64b2c1",
  "createdDateTime": "2020-06-09T10:00:00Z",
  "lastModifiedDateTime": "2020-06-09T10:00:00Z"
}
```

