---
title: "Create openShift"
description: "Create an instance of openShift object."
ms.localizationpriority: medium
author: "akumar39"
ms.subservice: "teams"
doc_type: "apiPageType"
ms.date: 09/18/2024
---

# Create openShift

Namespace: microsoft.graph

Create an instance of an [openShift](../resources/openshift.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "openshift_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/openshift-post-permissions.md)]

> **Note**: This API supports admin permissions. Users with admin roles can access groups that they are not a member of.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /teams/{id}/schedule/openShifts
```
  
## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type | application/json. Required.|
| MS-APP-ACTS-AS (deprecated) | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. The `MS-APP-ACTS-AS` header is deprecated and no longer required with application tokens.|

## Request body

In the request body, supply a JSON representation of the modified [openShift](../resources/openshift.md) object.

The following table lists the properties that you can use when you create an **openShift** object.

|Property|Type|Description|
|:---|:---|:---|
| draftOpenShift        | [openShiftItem](../resources/openshiftitem.md) | Draft changes in the **openShift** are only visible to managers until they're [shared](../api/schedule-share.md). Either **draftOpenShift** or **sharedOpenShift** should be `null`.|
| isStagedForDeletion   | Boolean                           | The **openShift** is marked for deletion, a process that is finalized when the schedule is [shared](../api/schedule-share.md).  Optional.   |
| schedulingGroupId     | String                            | The ID of the [schedulingGroup](../resources/schedulinggroup.md) that contains the **openShift**.  |
| sharedOpenShift       | [openShiftItem](../resources/openshiftitem.md) | The shared version of this **openShift** that is viewable by both employees and managers. Either **draftOpenShift** or **sharedOpenShift** should be `null`.|

## Response

If successful, this method returns a `200 OK` response code and the created [openShift](../resources/openshift.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request", 
  "name": "openshift_post",
  "sampleKeys": ["788b75d2-a911-48c0-a5e2-dc98480457e3"]
}-->

```http
POST https://graph.microsoft.com/v1.0/teams/788b75d2-a911-48c0-a5e2-dc98480457e3/schedule/openShifts
Authorization: Bearer {token}
Content-type: application/json

{
  "schedulingGroupId": "TAG_4ab7d329-1f7e-4eaf-ba93-63f1ff3f3c4a",
  "sharedOpenShift": {
    "displayName": "Dayshift",
    "startDateTime": "2024-11-04T20:00:00Z",
    "endDateTime": "2024-11-04T21:00:00Z",
    "theme": "blue",
    "notes": "InventoryManagement",
    "openSlotCount": 1,
    "activities": []
  },
  "draftTimeOff": null,
  "isStagedForDeletion": false
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/openshift-post-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/openshift-post-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/openshift-post-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/openshift-post-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/openshift-post-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/openshift-post-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/openshift-post-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.openShift"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#teams('48ba9e52-8d25-41c7-bbe7-5ee6346eec0d')/schedule/openShifts/$entity",
    "@odata.etag": "\"4002def0-0000-0c00-0000-672ea2ff0000\"",
    "id": "OPNSHFT_6f5e1d7c-3ebe-449f-abfc-d677d26f0b5c",
    "createdDateTime": "2024-11-08T23:47:11.605Z",
    "lastModifiedDateTime": "2024-11-08T23:47:11.605Z",
    "schedulingGroupId": "TAG_4ab7d329-1f7e-4eaf-ba93-63f1ff3f3c4a",
    "draftOpenShift": null,
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "366c0b19-49b1-41b5-a03f-9f3887bd0ed8",
            "displayName": "John Doe",
            "userIdentityType": "aadUser",
            "tenantId": null
        }
    },
    "sharedOpenShift": {
        "displayName": null,
        "startDateTime": "2024-11-04T20:00:00Z",
        "endDateTime": "2024-11-04T21:00:00Z",
        "theme": "blue",
        "notes": null,
        "openSlotCount": 1,
        "activities": []
    },
    "isStagedForDeletion": false
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get openShift",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

