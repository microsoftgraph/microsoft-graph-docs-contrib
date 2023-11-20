---
title: "openShift: stageForDeletion"
description: "Stage an openShift for deletion."
author: "raulfernandes"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# openShift: stageForDeletion

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Stage an [openShift](../resources/openshift.md) for deletion. Staged (draft) changes are only visible to managers until the changes are [shared](../api/schedule-share.md) with the team. 

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "openshift-stagefordeletion-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/openshift-stagefordeletion-permissions.md)]

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
  "name": "openshiftthis.stagefordeletion"
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/{teamsId}/schedule/openShifts/{openShiftId}/stageForDeletion
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
