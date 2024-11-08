---
title: "Create openShift"
description: "Create an instance of openShift object."
ms.localizationpriority: medium
author: "akumar39"
ms.subservice: "teams"
doc_type: "apiPageType"
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
| MS-APP-ACTS-AS  | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. |

## Request body

Provide the modified [openShift](../resources/openshift.md) object in the request body for this method.

|Property|Type|Description|
|:---|:---|:---|
| draftOpenShift        | [openShiftItem](openshiftitem.md) | Draft changes in the **openShift** are only visible to managers until they're [shared](../api/schedule-share.md). Either sharedOpenShift or sharedOpenShift should be null|
| isStagedForDeletion   | Boolean                           | The **openShift** is marked for deletion, a process that is finalized when the schedule is [shared](../api/schedule-share.md).  Optional.   |
| schedulingGroupId     | String                            | The ID of the [schedulingGroup](schedulinggroup.md) that contains the **openShift**.  |
| sharedOpenShift       | [openShiftItem](openshiftitem.md) | The shared version of this **openShift** that is viewable by both employees and managers. Either sharedOpenShift or sharedOpenShift should be null|

## Response

If successful, this method returns a `200 OK` response code and the created [openShift](../resources/openshift.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request", "name": "openshiftpost"
}-->

```http
POST https://graph.microsoft.com/v1.0/teams/788b75d2-a911-48c0-a5e2-dc98480457e3/schedule/openShifts
Authorization: Bearer {token}
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.openShift",
  "sharedOpenShift": {
    "@odata.type": "microsoft.graph.openShiftItem"
  },
  "draftOpenShift": {
    "@odata.type": "microsoft.graph.openShiftItem"
  },
  "schedulingGroupId": "String",
  "isStagedForDeletion": "Boolean"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/openshiftpost-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/openshiftpost-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/openshiftpost-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/openshiftpost-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/openshiftpost-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/openshiftpost-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/openshiftpost-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/openshiftpost-python-snippets.md)]
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
    "@odata.type": "#microsoft.graph.openShift",
    "id": "String (identifier)",
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)",
    "lastModifiedBy": {
        "@odata.type": "microsoft.graph.identitySet"
    },
    "sharedOpenShift": {
        "@odata.type": "microsoft.graph.openShiftItem"
    },
    "draftOpenShift": {
        "@odata.type": "microsoft.graph.openShiftItem"
    },
    "schedulingGroupId": "String",
    "isStagedForDeletion": "Boolean"
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

