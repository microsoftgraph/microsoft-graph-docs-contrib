---
title: "Create businessScenarioTask"
description: "Create a new businessScenarioTask object."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.subservice: "business-scenarios"
doc_type: apiPageType
ms.date: 07/15/2024
---

# Create businessScenarioTask

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [businessScenarioTask](../resources/businessscenariotask.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "businessscenarioplanner_post_tasks" } -->
[!INCLUDE [permissions-table](../includes/permissions/businessscenarioplanner-post-tasks-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/businessScenarios/{businessScenarioId}/planner/tasks
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [businessScenarioTask](../resources/businessscenariotask.md) object.

You can specify the following properties when you create a **businessScenarioTask**.

|Property|Type|Description|
|:---|:---|:---|
|appliedCategories|[plannerAppliedCategories](../resources/plannerappliedcategories.md)|The categories to which the task has been applied. For possible values, see [plannerAppliedCategories](../resources/plannerappliedcategories.md). Inherited from [plannerTask](../resources/plannertask.md).|
|assigneePriority|String|Hint used to order items of this type in a list view. For details about the supported format, see [Using order hints in Planner](../resources/planner-order-hint-format.md). Inherited from [plannerTask](../resources/plannertask.md).|
|assignments|[plannerAssignments](../resources/plannerassignments.md)|The set of assignees the task is assigned to. Inherited from [plannerTask](../resources/plannertask.md).|
|bucketId|String|Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It's 28 characters long and case-sensitive. The [format validation](../resources/tasks-identifiers-disclaimer.md) is done on the service. Inherited from [plannerTask](../resources/plannertask.md).|
|businessScenarioProperties|[businessScenarioProperties](../resources/businessscenarioproperties.md)|Scenario-specific properties of the task. **externalObjectId** and **externalBucketId** properties must be specified when creating a task. Required.|
|conversationThreadId|String|Thread ID of the conversation on the task. This ID references the conversation thread object created in the **group**. Inherited from [plannerTask](../resources/plannertask.md).|
|dueDateTime|DateTimeOffset|Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [plannerTask](../resources/plannertask.md).|
|orderHint|String|Hint used to order items of this type in a list view. For details about the supported format, see [Using order hints in Planner](../resources/planner-order-hint-format.md). Inherited from [plannerTask](../resources/plannertask.md).|
|percentComplete|Int32|Percentage of task completion. When set to `100`, the task is considered completed. Inherited from [plannerTask](../resources/plannertask.md).|
|planId|String|Identifier of the plan to which the task belongs. Inherited from [plannerTask](../resources/plannertask.md).|
|priority|Int32|Priority of the task. Valid range of values is between `0` and `10` (inclusive), with increasing value being lower priority (`0` has the highest priority and `10` has the lowest priority). Currently, Planner interprets values `0` and `1` as "urgent"; `2`, `3`, and `4` as "important"; `5`, `6`, and `7` as "medium"; and `8`, `9`, and `10` as "low". Currently, Planner sets the value `1` for "urgent", `3` for "important", `5` for "medium", and `9` for "low". Inherited from [plannerTask](../resources/plannertask.md).|
|startDateTime|DateTimeOffset|Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [plannerTask](../resources/plannertask.md).|
|target|[businessScenarioTaskTargetBase](../resources/businessscenariotasktargetbase.md)|Target of the task that specifies where the task should be placed. Required.|
|title|String|Title of the task. Inherited from [plannerTask](../resources/plannertask.md).|

## Response

If successful, this method returns a `201 Created` response code and a [businessScenarioTask](../resources/businessscenariotask.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_businessscenariotask_from_",
  "sampleKeys": ["c5d514e6c6864911ac46c720affb6e4d"]
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/tasks
Content-Type: application/json

{
  "title": "Customer order #12010",
  "percentComplete": 0,
  "priority": 5,
  "target": {
    "@odata.type": "microsoft.graph.businessScenarioGroupTarget",
    "taskTargetKind": "group",
    "groupId": "7a339254-4b2b-4410-b295-c890a16776ee"
  },
  "businessScenarioProperties": {
    "externalObjectId": "Order#12010",
    "externalContextId": "Warehouse-CA-36",
    "externalObjectVersion": "000001",
    "webUrl": "https://ordertracking.contoso.com/view?id=12010",
    "externalBucketId": "deliveryBucket"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-businessscenariotask-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-businessscenariotask-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-businessscenariotask-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-businessscenariotask-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-businessscenariotask-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-businessscenariotask-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-businessscenariotask-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-businessscenariotask-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.businessScenarioTask"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.businessScenarioTask",
  "title": "Customer order #12010",
  "percentComplete": 0,
  "priority": 5,
  "id": "pmc1rS1Io0C3rXQhyXIsNmUAOeIi",
  "target": {
    "@odata.type": "microsoft.graph.businessScenarioGroupTarget",
    "taskTargetKind": "group",
    "groupId": "7a339254-4b2b-4410-b295-c890a16776ee"
  },
  "businessScenarioProperties": {
    "externalObjectId": "Order#12010",
    "externalContextId": "Warehouse-CA-36",
    "externalObjectVersion": "000001",
    "webUrl": "https://ordertracking.contoso.com/view?id=12010",
    "externalBucketId": "deliveryBucket"
  }
}
```
