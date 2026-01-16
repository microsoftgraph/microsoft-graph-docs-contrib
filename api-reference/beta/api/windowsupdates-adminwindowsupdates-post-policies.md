---
title: "Create policy"
description: "Create a new Windows update policy object."
author: "andredm7"
ms.date: 01/20/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Create policy

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new Windows update [policy](../resources/windowsupdates-policy.md) object.

You can use this method with the following child object type: [qualityUpdatePolicy](../resources/windowsupdates-qualityupdatepolicy.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-adminwindowsupdates-post-policies-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-adminwindowsupdates-post-policies-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/windows/updates/policies
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [policy](../resources/windowsupdates-policy.md) object.

You can specify the following properties when you create a **policy**.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String| The policy display name. The maximum length is 200 characters. Required.|
|description|String| The policy description. The maximum length is 1,500 characters. Required.|
|approvalRules|[microsoft.graph.windowsUpdates.approvalRule](../resources/windowsupdates-approvalrule.md) collection| The approved rule of the policy that determines which published content matches the rule on an ongoing basis. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md) object in the response body.

## Examples

### Request

The following example shows how to create a quality update policy.
<!-- {
  "blockType": "request",
  "name": "create_qualityupdatepolicy"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/policies
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdatePolicy",
  "displayName": "Patch Tuesday 123",
  "description": "Testing Patch Tuesday in test environment",
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
  "@odata.type": "microsoft.graph.windowsUpdates.policy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/admin/windows/updates/$metadata#policies/microsoft.graph.windowsUpdates.qualityUpdatePolicy/$entity",
  "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdatePolicy",
  "displayName": "Patch Tuesday 123",
  "description": "Testing Patch Tuesday in test environment",
  "id": "1cf00cc5-7b19-4193-9a47-6404c57c0cbb",
  "createdDateTime": "2025-02-12T23:39:44.971849-08:00",
  "lastModifiedDateTime": "2025-02-12T23:39:54-08:00",
  "approvalRules": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateApprovalRule",
      "deferralInDays": 0,
      "classification": "nonSecurity",
      "cadence": "outOfBand"
    }
  ]
}
```
