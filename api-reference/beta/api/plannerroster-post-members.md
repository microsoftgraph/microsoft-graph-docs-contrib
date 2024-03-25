---
title: "Create plannerRosterMember"
description: "Create a new plannerRosterMember object."
author: "tarkansevilmis"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Create plannerRosterMember

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a member to the [plannerRoster](../resources/plannerrostermember.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "plannerroster_post_members" } -->
[!INCLUDE [permissions-table](../includes/permissions/plannerroster-post-members-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /planner/rosters/{plannerRosterId}/members
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [plannerRosterMember](../resources/plannerrostermember.md) object.

The following table lists the properties that are required when you create the [plannerRosterMember](../resources/plannerrostermember.md).

|Property|Type|Description|
|:---|:---|:---|
|roles|String collection|Additional roles assigned to the user. Optional. Currently, no additional roles are available for users.|
|tenantId|String|Identifier of the tenant the user belongs to. Optional. Currently, roster members cannot be from different tenants.|
|userId|String|Identifier of the user.|

## Response

If successful, this method returns a `201 Created` response code and a [plannerRosterMember](../resources/plannerrostermember.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_plannerrostermember_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/planner/rosters/6519868f-868f-6519-8f86-19658f861965/members
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plannerRosterMember",
  "userId": "String"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-plannerrostermember-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-plannerrostermember-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-plannerrostermember-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-plannerrostermember-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-plannerrostermember-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-plannerrostermember-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-plannerrostermember-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-plannerrostermember-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerRosterMember"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plannerRosterMember",
  "id": "670095cd-95cd-6700-cd95-0067cd950067",
  "userId": "5ba84f7a-aa11-4a51-a298-9f2c7ec6bb38",
  "roles": [
  ]
}
```

### Error conditions

In addition to [general errors](../../../concepts/errors.md) that apply to Microsoft Graph and the error cases documented in [planner overview](../resources/planner-overview.md), some error conditions are specific to the API to add a member to the [plannerRoster](../resources/plannerrostermember.md) object.

#### 403 Forbidden

If the sensitivityLabel on the roster disallows the addition of guest users, and the request would add guest users to the plannerRoster, the request will fail, and the **code** property on the error resource type will be "AddingGuestUsersProhibitedByLabel"
