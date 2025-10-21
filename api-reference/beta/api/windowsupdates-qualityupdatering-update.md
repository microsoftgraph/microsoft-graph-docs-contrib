---
title: "Update qualityUpdateRing"
description: "Update the properties of a qualityUpdateRing object."
author: "andredm7"
ms.date: 10/22/2025
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Update qualityUpdateRing

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a qualityUpdateRing object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-qualityupdatering-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-qualityupdatering-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored",
}
-->
``` http
PATCH /admin/windows/updates/policies/{policyId}/rings/{ringId}
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
|displayName|String| The Quality Update ring display name. Inherited from [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md). Required.|
|description|String| The Quality Update ring description. Inherited from [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md). Required.|
|includedGroupAssignment|[microsoft.graph.windowsUpdates.includedGroupAssignment](../resources/windowsupdates-includedgroupassignment.md)| Represents an entity that governs the update deployment audience with included groups. Groups are logical containers of devices represented by Microsoft Entra groups. Inherited from [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md). Required.|
|excludedGroupAssignment|[microsoft.graph.windowsUpdates.excludedGroupAssignment](../resources/windowsupdates-excludedgroupassignment.md)| Represents an entity that governs the update deployment audience with excluded groups. Groups are logical containers of devices represented by Microsoft Entra groups. Inherited from [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md). Required.|
|deferralInDays|Int32| The Quality Update deferral period (days). The value must be between 0 and 30. Inherited from [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md). Optional.|
|isPaused|Boolean| Represents the pause action for the Quality Update ring policy. Inherited from [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md). Required.|
|createdDateTime|DateTimeOffset| The date and time the Quality Updates ring is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, `2014 is 2014-01-01T00:00:00Z`. Inherited from [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md). Optional.|
|lastModifiedDateTime|DateTimeOffset| The date and time the Quality Updates ring was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, `2014 is 2014-01-01T00:00:00Z`. Inherited from [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md). Optional.|
|isHotpatchEnabled|Boolean| Identifies whether a hotpatch update is available or not. Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.windowsUpdates.qualityUpdateRing](../resources/windowsupdates-qualityupdatering.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_qualityupdatering",
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/windows/updates/policies/{policyId}/rings/a2c7637a-cda5-e59e-2385-972c4ee528d2
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateRing",
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
  "isHotpatchEnabled": "Boolean"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdateRing",
}
-->
``` http
HTTP/1.1 200 OK
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
  "isPaused": false,
  "id": "a2c7637a-cda5-e59e-2385-972c4ee528d2",
  "createdDateTime": "2020-06-09T10:00:00Z",
  "lastModifiedDateTime": "2020-06-09T10:00:00Z",
  "isHotpatchEnabled": true,
}
```

