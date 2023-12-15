---
title: "changeTrackedEntity: stageForDeletion"
description: "Stage the deletion of an openShift instance in a schedule in draft mode."
author: "raulfernandes"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# changeTrackedEntity: stageForDeletion

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Stage the deletion of an [openShift](../resources/openshift.md) instance in a [schedule](../resources/schedule.md) in draft mode.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "openshift-stagefordeletion-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/changetrackedentity-stagefordeletion-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /teams/{teamsId}/schedule/openShifts/{openShiftId}/stageForDeletion
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
| MS-APP-ACTS-AS  | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "openshiftthis.stagefordeletion",
  "sampleKeys": ["OPNSHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8"]
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/3d88b7a2-f988-4f4b-bb34-d66df66af126/schedule/openShifts/OPNSHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8/stageForDeletion
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
