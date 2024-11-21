---
title: "Update openShift"
description: "Update the properties of an openShift object."
ms.localizationpriority: medium
author: "akumar39"
ms.subservice: "teams"
doc_type: "apiPageType"
---

# Update openShift

Namespace: microsoft.graph

Update the properties of an [openShift](../resources/openshift.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "openshift_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/openshift-update-permissions.md)]

> **Note**: This API supports admin permissions. Users with admin roles can access groups that they are not a member of.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PUT /teams/{id}/schedule/openShifts/{openShiftId}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type | application/json. Required. |
| MS-APP-ACTS-AS  | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. |

## Request body

Provide the modified [openShift](../resources/openshift.md) object in the request body for this method.

|Property|Type|Description|
|:---|:---|:---|
| draftOpenShift        | [openShiftItem](../resources/openshiftitem.md) | Draft changes in the **openShift** are only visible to managers until they're [shared](../api/schedule-share.md). Either sharedOpenShift or sharedOpenShift should be null.|
| isStagedForDeletion   | Boolean                           | The **openShift** is marked for deletion, a process that is finalized when the schedule is [shared](../api/schedule-share.md).  Optional.   |
| schedulingGroupId     | String                            | The ID of the [schedulingGroup](../resources/schedulinggroup.md) that contains the **openShift**.  |
| sharedOpenShift       | [openShiftItem](../resources/openshiftitem.md) | The shared version of this **openShift** that is viewable by both employees and managers. Either sharedOpenShift or sharedOpenShift should be null.|

## Response

If successful, this method returns a `200 OK` response code and an updated [openShift](../resources/openshift.md) object in the response body.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_openshift",
  "sampleKeys": ["3d88b7a2-f988-4f4b-bb34-d66df66af126", "OPNSHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8"]
}-->

```http
PUT https://graph.microsoft.com/beta/teams/3d88b7a2-f988-4f4b-bb34-d66df66af126/schedule/openShifts/OPNSHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8
Content-Type: application/json

{
    "schedulingGroupId": "TAG_4ab7d329-1f7e-4eaf-ba93-63f1ff3f3c4a",
    "sharedOpenShift": {
                "displayName": null,
                "startDateTime": "2024-11-04T20:00:00Z",
                "endDateTime": "2024-11-04T21:00:00Z",
                "theme": "blue",
                "notes": null,
                "openSlotCount": 1,
                "activities": []
            },
    "draftTimeOff": null,
    "isStagedForDeletion": false
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-openshift-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

<!-- {
  "type": "#page.annotation",
  "suppressions": [
  ]
}-->

