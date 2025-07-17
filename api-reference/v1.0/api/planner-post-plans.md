---
title: "Create plannerPlan"
description: "Create a new plannerPlan object."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: apiPageType
ms.date: 04/16/2024
---

# Create plannerPlan

Namespace: microsoft.graph

Create a new [plannerPlan](../resources/plannerplan.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "planner_post_plans" } -->
[!INCLUDE [permissions-table](../includes/permissions/planner-post-plans-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
POST /planner/plans
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply a JSON representation of [plannerPlan](../resources/plannerplan.md) object.

The following table shows the properties that are required when you create a [plannerPlan](../resources/plannerplan.md).

|Property|Type|Description|
|:---|:---|:---|
|container|[plannerPlanContainer](../resources/plannerplancontainer.md)|Identifies the container of the plan. Specify only the **url**, the **containerId** and **type**, or all properties. After it's set, this property can't be updated.|
|title|String|The title of the plan.|

>**Note:** If the container is a Microsoft 365 group, the user who creates the plan must be a member of the group that contains the plan. When you create a new group by using [Create group](../api/group-post-groups.md), you aren't added to the group as a member. After the group is created, add yourself as a member by using [group post members](../api/group-post-members.md).


## Response

If successful, this method returns a `201 Created` response code and a [plannerPlan](../resources/plannerplan.md) object in the response body.

This method can return any of the [HTTP status codes](/graph/errors). The most common errors that apps should handle for this method are the 400, 403, and 404 responses. For more information about these errors, see [Common Planner error conditions](../resources/planner-overview.md#common-planner-error-conditions).

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_plannerplan_from_planner"
}-->
``` http
POST https://graph.microsoft.com/v1.0/planner/plans
Content-type: application/json

{
  "container": {
    "url": "https://graph.microsoft.com/v1.0/groups/ebf3b108-5234-4e22-b93d-656d7dae5874"
  },
  "title": "title-value"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-plannerplan-from-planner-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-plannerplan-from-planner-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-plannerplan-from-planner-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-plannerplan-from-planner-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-plannerplan-from-planner-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-plannerplan-from-planner-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-plannerplan-from-planner-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-plannerplan-from-planner-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerPlan"
} -->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "createdBy": {
    "application": {
      "id": "95e27074-6c4a-447a-aa24-9d718a0b86fa"
    },
    "user": {
      "id": "b108ebf3-4e22-b93d-5234-dae5874656d7"
    }
  },
  "createdDateTime": "2015-03-30T18:36:49.2407981Z",
  "container": {
    "@odata.type": "microsoft.graph.plannerPlanContainer",
    "url": "https://graph.microsoft.com/v1.0/groups/ebf3b108-5234-4e22-b93d-656d7dae5874",
    "containerId": "ebf3b108-5234-4e22-b93d-656d7dae5874",
    "type": "group"
  },
  "title": "title-value",
  "id": "xqQg5FS2LkCp935s-FIFm2QAFkHM"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create plannerPlan",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
