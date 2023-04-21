---
title: "Create plannerPlan"
description: "Use this API to create a new **plannerPlan**."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.prod: "planner"
doc_type: apiPageType
---

# Create plannerPlan

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new **plannerPlan**.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Tasks.ReadWrite, Group.ReadWrite.All        |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Tasks.ReadWrite.All         |

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
POST /planner/plans
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |
| Content-type | application/json. Required.|

## Request body

In the request body, supply a JSON representation of [plannerPlan](../resources/plannerplan.md) object.

The following table shows the properties that are required when you create a [plannerPlan](../resources/plannerplan.md).

|Property|Type|Description|
|:---|:---|:---|
|container|[plannerPlanContainer](../resources/plannerplancontainer.md)|Identifies the container of the plan. Specify only the **url**, the **containerId** and **type**, or all properties. After it is set, this property can’t be updated.|
|title|String|The title of the plan.|

>**Note:** If the container is a Microsoft 365 group, the user who is creating the plan must be a member of the group that will contain the plan. When you create a new group by using [Create group](../api/group-post-groups.md), you are not added to the group as a member. After the group is created, add yourself as a member by using [group post members](../api/group-post-members.md).

## Response

If successful, this method returns a `201 Created` response code and a [plannerPlan](../resources/plannerplan.md) object in the response body.

This method can return any of the [HTTP status codes](/graph/errors). The most common errors that apps should handle for this method are the 400, 403, and 404 responses. For more information about these errors, see [Common Planner error conditions](../resources/planner-overview.md#common-planner-error-conditions).

## Example

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_plannerplan_from_planner_e1"
}-->
``` http
POST https://graph.microsoft.com/beta/planner/plans
Content-type: application/json

{
  "container": {
    "url": "https://graph.microsoft.com/beta/groups/ebf3b108-5234-4e22-b93d-656d7dae5874"
  },
  "title": "title-value"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-plannerplan-from-planner-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-plannerplan-from-planner-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-plannerplan-from-planner-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-plannerplan-from-planner-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-plannerplan-from-planner-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-plannerplan-from-planner-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerPlan"
} -->
``` http
HTTP/1.1 201 Created
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
    "url": "https://graph.microsoft.com/beta/groups/ebf3b108-5234-4e22-b93d-656d7dae5874",
    "containerId": "ebf3b108-5234-4e22-b93d-656d7dae5874",
    "type": "group"
  },
  "title": "title-value",
  "id": "xqQg5FS2LkCp935s-FIFm2QAFkHM"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create plannerPlan",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
