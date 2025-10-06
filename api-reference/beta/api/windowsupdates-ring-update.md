---
title: "Update ring"
description: "Update the properties of a ring object."
author: "andredm7"
ms.date: 10/08/2025
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Update ring

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a ring object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-ring-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-ring-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/windows/updates/policies/{policyId}/rings/{ringId}
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
|displayName|String| The ring display name. Required.|
|description|String| The ring description. Required.|
|includedGroupAssignment|[microsoft.graph.windowsUpdates.includedGroupAssignment](../resources/windowsupdates-includedgroupassignment.md)| Represents an entity that governs the update deployment audience with included groups. Groups are logical containers of devices represented by Microsoft Entra groups. Required.|
|excludedGroupAssignment|[microsoft.graph.windowsUpdates.excludedGroupAssignment](../resources/windowsupdates-excludedgroupassignment.md)| Represents an entity that governs the update deployment audience with excluded groups. Groups are logical containers of devices represented by Microsoft Entra groups. Required.|
|deferralInDays|Int32|  The Quality Update deferral period (days). The value must be between 0 and 30. Optional.|
|isPaused|Boolean| Represents the pause action for the Quality Update ring policy. Required.|
|createdDateTime|DateTimeOffset|  The date and time the ring is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, `2014 is 2014-01-01T00:00:00Z`. Optional.|
|lastModifiedDateTime|DateTimeOffset| The date and time the ring was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, `2014 is 2014-01-01T00:00:00Z`. Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_ring",
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/windows/updates/policies/{policyId}/rings/{ringId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.ring",
  "displayName": "String",
  "description": "String",
  "includedGroupAssignment": {
    "@odata.type": "microsoft.graph.windowsUpdates.includedGroupAssignment"
  },
  "excludedGroupAssignment": {
    "@odata.type": "microsoft.graph.windowsUpdates.excludedGroupAssignment"
  },
  "deferralInDays": "Integer",
  "isPaused": "Boolean"
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.ring",
  "displayName": "String",
  "description": "String",
  "includedGroupAssignment": {
    "@odata.type": "microsoft.graph.windowsUpdates.includedGroupAssignment"
  },
  "excludedGroupAssignment": {
    "@odata.type": "microsoft.graph.windowsUpdates.excludedGroupAssignment"
  },
  "deferralInDays": "Integer",
  "isPaused": "Boolean",
  "id": "03f72335-b88c-519e-16e7-039fdab8670f",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

