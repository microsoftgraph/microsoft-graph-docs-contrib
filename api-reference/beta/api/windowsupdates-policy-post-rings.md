---
title: "Create ring"
description: "Create a new ring object."
author: "andredm7"
ms.date: 01/16/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Create ring

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [ring](../resources/windowsupdates-ring.md) object.

You can use this method with the following child object type: [qualityUpdateRing](../resources/windowsupdates-qualityupdatering.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowsupdates_policy_post_rings" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-policy-post-rings-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/windows/updates/policies/{policyId}/rings
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [ring](../resources/windowsupdates-ring.md) object.

You can specify the following properties when you create a **ring** object.

|Property|Type|Description|
|:---|:---|:---|
|deferralInDays|Int32| The quality update deferral period in days. The value must be between `0` and `30`. Optional.|
|description|String| The ring description. The maximum length is 1,500 characters. Required.|
|displayName|String| The ring display name. The maximum length is 200 characters. Required.|
|excludedGroupAssignment|[microsoft.graph.windowsUpdates.excludedGroupAssignment](../resources/windowsupdates-excludedgroupassignment.md)| Governs the update deployment audience with excluded groups. Groups are logical containers of devices represented by Microsoft Entra groups. Required.|
|includedGroupAssignment|[microsoft.graph.windowsUpdates.includedGroupAssignment](../resources/windowsupdates-includedgroupassignment.md)| Governs the update deployment audience with included groups. Groups are logical containers of devices represented by Microsoft Entra groups. Required.|
|isPaused|Boolean| The pause action for the quality update ring policy. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md) object in the response body.

## Examples

### Request

The following example shows how to create a quality update ring.
<!-- {
  "blockType": "request",
  "name": "create_qualityupdatering"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/policies/86364b9d-d04a-46f3-b2ee-7ef4157ab6fc/rings
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateRing",
  "displayName": "Ring0 - IT devices",
  "description": "First deployment ring to test updates before going to prod.",
  "includedGroupAssignment": {
    "@odata.type": "microsoft.graph.windowsUpdates.includedGroupAssignment"
  },
  "excludedGroupAssignment": {
    "@odata.type": "microsoft.graph.windowsUpdates.excludedGroupAssignment"
  },
  "deferralInDays": 5,
  "isPaused": false
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdateRing"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.ring",
  "displayName": "Ring0 - IT devices",
  "description": "First deployment ring to test updates before going to prod.",
  "includedGroupAssignment": {
    "@odata.type": "microsoft.graph.windowsUpdates.includedGroupAssignment"
  },
  "excludedGroupAssignment": {
    "@odata.type": "microsoft.graph.windowsUpdates.excludedGroupAssignment"
  },
  "deferralInDays": 5,
  "isPaused": false,
  "id": "03f72335-b88c-519e-16e7-039fdab8670f",
  "createdDateTime": "2020-06-09T10:00:00Z",
  "lastModifiedDateTime": "2020-06-09T10:00:00Z"
}
```

