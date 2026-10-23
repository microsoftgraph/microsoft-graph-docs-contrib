---
title: "Create policy"
description: "Create a new Windows update policy object."
author: "andredm7"
ms.date: 02/05/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Create policy

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new Windows update [policy](../resources/windowsupdates-policy.md) object.

You can use this method with the following child object types: [driverUpdatePolicy](../resources/windowsupdates-driverupdatepolicy.md), [featureUpdatePolicy](../resources/windowsupdates-featureupdatepolicy.md), and [qualityUpdatePolicy](../resources/windowsupdates-qualityupdatepolicy.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowsupdates_adminwindowsupdates_post_policies" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-adminwindowsupdates-post-policies-permissions.md)]

[!INCLUDE [rbac-windows-updates-apis](../includes/rbac-for-apis/rbac-windows-updates-apis.md)]

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

Because **policy** is abstract, specify the concrete type in the `@odata.type` property. Supported values include `#microsoft.graph.windowsUpdates.driverUpdatePolicy`, `#microsoft.graph.windowsUpdates.featureUpdatePolicy`, and `#microsoft.graph.windowsUpdates.qualityUpdatePolicy`.

You can specify the following properties when you create a **policy**.

|Property|Type|Description|
|:---|:---|:---|
|approvalRules|[microsoft.graph.windowsUpdates.approvalRule](../resources/windowsupdates-approvalrule.md) collection| The approved rule of the policy that determines which published content matches the rule on an ongoing basis. Required.|
|description|String| The policy description. The maximum length is 1,500 characters. Required.|
|displayName|String| The policy display name. The maximum length is 200 characters. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md) object in the response body.

## Examples

### Request

The following example shows how to create a driver and firmware update policy.
<!-- {
  "blockType": "request",
  "name": "create_driverupdatepolicy"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/policies
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdatePolicy",
  "displayName": "Contoso driver policy",
  "description": "Driver and firmware updates for managed devices",
  "approvalRules": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateApprovalRule",
      "deferralInDays": 7
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
  "@odata.type": "microsoft.graph.windowsUpdates.driverUpdatePolicy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdatePolicy",
  "approvalRules": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateApprovalRule",
      "deferralInDays": 7
    }
  ],
  "createdDateTime": "2026-09-28T10:00:00Z",
  "description": "Driver and firmware updates for managed devices",
  "displayName": "Contoso driver policy",
  "id": "11111111-1111-4111-8111-111111111111",
  "lastModifiedDateTime": "2026-09-28T10:00:00Z"
}
```
