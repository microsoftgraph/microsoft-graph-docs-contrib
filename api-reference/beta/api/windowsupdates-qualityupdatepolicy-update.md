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

Update the properties of a qualityUpdatePolicy object.

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
PATCH ** Entity URI for microsoft.graph.windowsUpdates.qualityUpdatePolicy not found
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String| The Quality Update policy display name. Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md). Required.|
|description|String| The Quality Update policy description Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md). Required.|
|approvalRules|[microsoft.graph.windowsUpdates.approvalRule](../resources/windowsupdates-approvalrule.md) collection| The policy's approved rule to determine which published content matches the rule on an ongoing basis. Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md). Required.|
|createdDateTime|DateTimeOffset| The date and time the Quality Update policy is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, `2014 is 2014-01-01T00:00:00Z`. Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md). Optional.|
|lastModifiedDateTime|DateTimeOffset| The date and time the Quality Update policy was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, `2014 is 2014-01-01T00:00:00Z`. Inherited from [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md). Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.windowsUpdates.qualityUpdatePolicy](../resources/windowsupdates-qualityupdatepolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_qualityupdatepolicy"
}
-->
``` http
PATCH https://graph.microsoft.com/beta** Entity URI for microsoft.graph.windowsUpdates.qualityUpdatePolicy not found
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdatePolicy",
  "displayName": "String",
  "description": "String",
  "approvalRules": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdateApprovalRule"
    }
  ],
  "isAutoEnrollDevices": "Boolean"
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdatePolicy",
  "displayName": "String",
  "description": "String",
  "approvalRules": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdateApprovalRule"
    }
  ],
  "isAutoEnrollDevices": "Boolean",
  "id": "f316bfd9-c84e-a334-cebe-071d3c64b2c1",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

