---
title: "changeTrackedEntity: stageForDeletion"
description: "Stage the deletion of an openShift, shift, or timeOff instance in a [schedule](../resources/schedule.md) in draft mode."
author: "raulfernandes"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# changeTrackedEntity: stageForDeletion

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Stage the deletion of an [openShift](../resources/openshift.md), [shift](../resources/shift.md), or [timeOff](../resources/timeoff.md) instance in a [schedule](../resources/schedule.md) in draft mode.

Draft changes are only visible to managers. Team members are not sent notification for draft changes. The deletion is finalized when the schedule is [shared](../api/schedule-share.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "changetrackedentity-stagefordeletion-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/changetrackedentity-stagefordeletion-permissions.md)]

## HTTP request

For an **openShift**:
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /teams/{teamsId}/schedule/openShifts/{openShiftId}/stageForDeletion
```

For a **shift**:
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /teams/{teamsId}/schedule/shifts/{shiftId}/stageForDeletion
```

For a **timeOff**:
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /teams/{teamsId}/schedule/timesOff/{timeOffId}/stageForDeletion
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| MS-APP-ACTS-AS  | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Stage the deletion of an openShift

The following example shows how to stage the deletion of an **openShift** in a **schedule** in draft mode.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "openshift.stagefordeletion",
  "sampleKeys": ["3d88b7a2-f988-4f4b-bb34-d66df66af126", "OPNSHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8"]
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/3d88b7a2-f988-4f4b-bb34-d66df66af126/schedule/openShifts/OPNSHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8/stageForDeletion
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/openshiftstagefordeletion-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2: Stage the deletion of a shift

The following example shows how to stage the deletion of a **shift** in a **schedule** in draft mode.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "shift.stagefordeletion",
  "sampleKeys": ["3d88b7a2-f988-4f4b-bb34-d66df66af126", "SHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8"]
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/3d88b7a2-f988-4f4b-bb34-d66df66af126/schedule/shifts/SHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8/stageForDeletion
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/shiftstagefordeletion-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 3: Stage the deletion of a timeOff

The following example shows how to stage the deletion of a **timeOff** in a **schedule** in draft mode.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "timeoff.stagefordeletion",
  "sampleKeys": ["3d88b7a2-f988-4f4b-bb34-d66df66af126", "SHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8"]
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/3d88b7a2-f988-4f4b-bb34-d66df66af126/schedule/timesOff/SHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8/stageForDeletion
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/timeoffstagefordeletion-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
