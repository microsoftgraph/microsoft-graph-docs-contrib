---
title: "Update qualityUpdatePolicy"
description: "Update the properties of a qualityUpdatePolicy object."
author: "andredm7"
ms.date: 10/08/2025
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Update qualityUpdatePolicy

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [qualityUpdatePolicy](../resources/windowsupdates-qualityupdatepolicy.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-qualityupdatepolicy-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-qualityupdatepolicy-update-permissions.md)]

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
|approvalRules|[microsoft.graph.windowsUpdates.contentApprovalRule](../resources/windowsupdates-contentapprovalrule.md) collection| The approved rule of the policy that determines which published content matches the rule on an ongoing basis. Inherited from [policy](../resources/windowsupdates-policy.md). Required.|
|createdDateTime|DateTimeOffset| The date and time the quality update policy is created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [policy](../resources/windowsupdates-policy.md). Optional.|
|description|String| The quality update policy description. Inherited from [policy](../resources/windowsupdates-policy.md). Required.|
|displayName|String| The quality update policy display name. Inherited from [policy](../resources/windowsupdates-policy.md). Required.|
|lastModifiedDateTime|DateTimeOffset| The date and time the quality update policy was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [policy](../resources/windowsupdates-policy.md). Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.windowsUpdates.qualityUpdatePolicy](../resources/windowsupdates-qualityupdatepolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.
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
  "displayName": "String",
  "description": "String",
  "approvalRules": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.contentApprovalRule"
    }
  ],
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
      "@odata.type": "microsoft.graph.windowsUpdates.contentApprovalRule"
    }
  ],
  "id": "f316bfd9-c84e-a334-cebe-071d3c64b2c1",
  "createdDateTime": "2020-06-09T10:00:00Z",
  "lastModifiedDateTime": "2020-06-09T10:00:00Z"
}
```

