---
title: "Create plannerRoster"
description: "Create a new plannerRoster object."
author: "tarkansevilmis"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Create plannerRoster
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [plannerRoster](../resources/plannerroster.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "planner_post_rosters" } -->
[!INCLUDE [permissions-table](../includes/permissions/planner-post-rosters-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /planner/rosters
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [plannerRoster](../resources/plannerroster.md) object.

There are no writable properties on [plannerRoster](../resources/plannerroster.md).

## Response

If successful, this method returns a `201 Created` response code and a [plannerRoster](../resources/plannerroster.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_plannerroster_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/planner/rosters
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plannerRoster"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-plannerroster-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-plannerroster-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-plannerroster-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-plannerroster-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-plannerroster-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-plannerroster-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-plannerroster-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-plannerroster-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerRoster"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plannerRoster",
  "id": "6519868f-868f-6519-8f86-19658f861965"
}
```

### Errors

#### 403 Forbidden

If labels are mandatory for the user, and the created roster would have no sensitivity label, the request will fail, and the **code** property of the error resource type will be "SensitivityLabelsAreMandatory".

If the roster would be created with guest members initially added to the roster, but the proposed sensitivityLabel disallows the addition of guest users, the request will fail, and the **code** property on the error resource type will be "AddingGuestUsersProhibitedByLabel"

If the provided label does not have the correct tenant ID, the request will fail.  The **code** property on the error response will be "TenantIdIsIncorrect"

