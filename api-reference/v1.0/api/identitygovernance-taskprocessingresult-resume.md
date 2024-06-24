---
title: "taskProcessingResult: resume"
description: "In the default case an Azure Logic Apps system-assigned managed identity calls this API to resume the task processing result that's in progress."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# taskProcessingResult: resume

Namespace: microsoft.graph.identityGovernance

Resume a task processing result that's `inProgress`. In the default case an Azure Logic Apps system-assigned managed identity calls this API. For more information, see: [Lifecycle Workflows extensibility approach](/azure/active-directory/governance/lifecycle-workflow-extensibility).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_taskprocessingresult_resume" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-taskprocessingresult-resume-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-write](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-write.md)]

> [!IMPORTANT]
 The following applies to app-only access to better follow the principle of least privilege:
> - Apps specified in `authorizedApps` within the [customTaskExtensionCallbackConfiguration](../resources/identitygovernance-customtaskextensioncallbackconfiguration.md) of the [custom task extension](../resources/identitygovernance-customtaskextension.md) are allowed to resume the task processing result without application permissions or role assignments.
> - The app specified in `resourceId` within the [azureAdTokenAuthentication](../resources/identitygovernance-customtaskextensioncallbackconfiguration.md) of the [custom task extension](../resources/identitygovernance-customtaskextension.md) is allowed to resume the task processing result without an application permission or role assignment.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/lifecycleWorkflows/workflows/{workflowId}/tasks/{taskId}/taskProcessingResults/{taskProcessingResultsId}/resume
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a [custom extension callout response](../resources/customextensioncalloutresponse.md).

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|source|String|The source of the `taskProcessingResult`.|
|type|String|The type of the `taskProcessingResult`.|
|data|[microsoft.graph.identityGovernance.customTaskExtensionCallbackData](../resources/identitygovernance-customtaskextensioncallbackdata.md)|The customtaskextensionCallbackData of the taskProcessingResult. The logic app returns an operation status of whether or not it successfully ran. The taskprocessingresult resumes based on how the task was designed in the workflow.  |

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_taskprocessingresultthis.resume"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows/4f36da05-5df8-457d-adb3-b132e7b59571/tasks/e07dcdb2-0a77-4ee3-8645-3801fbe1cf9f/taskProcessingResults/6e1ec336-8d06-4386-a377-79dbab1a2eb6/resume
Content-Type: application/json
Content-length: 155

{
  "data": {
    "operationStatus": "Completed"
  },
  "source": "sample",
  "type": "lifecycleEvent"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-taskprocessingresultthisresume-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/lifecycleworkflows-taskprocessingresultthisresume-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-taskprocessingresultthisresume-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-taskprocessingresultthisresume-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-taskprocessingresultthisresume-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-taskprocessingresultthisresume-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-taskprocessingresultthisresume-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/lifecycleworkflows-taskprocessingresultthisresume-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
