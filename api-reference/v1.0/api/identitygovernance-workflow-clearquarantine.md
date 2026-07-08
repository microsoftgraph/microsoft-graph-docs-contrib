---
title: "workflow: clearQuarantine"
description: "Release a quarantined workflow so that it resumes processing."
author: "ReanyAlex"
ms.date: 06/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# workflow: clearQuarantine

Namespace: microsoft.graph.identityGovernance

Release a quarantined [workflow](../resources/identitygovernance-workflow.md) so that it resumes processing. A workflow is automatically quarantined when a run exceeds the threshold conditions defined in its [quarantineConfiguration](../resources/identitygovernance-quarantineconfiguration.md). After an administrator reviews the cause of the quarantine, calling this action clears the quarantine state and allows the workflow to run again.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitygovernance-workflow-clearquarantine-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-workflow-clearquarantine-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-write](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/lifecycleWorkflows/workflows/{workflowId}/clearQuarantine
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [workflow](../resources/identitygovernance-workflow.md) in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "workflowthis.clearquarantine"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows/{workflowId}/clearQuarantine
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/workflowthisclearquarantine-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/workflowthisclearquarantine-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/workflowthisclearquarantine-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/workflowthisclearquarantine-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/workflowthisclearquarantine-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/workflowthisclearquarantine-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflow"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityGovernance.workflow",
  "id": "156ca8c6-d706-4cee-8ed6-c4fd1abe3f24",
  "category": "leaver",
  "displayName": "Offboard an employee",
  "description": "Configure offboarding tasks for employees after their last day of work",
  "createdDateTime": "2025-09-04T16:13:00Z",
  "lastModifiedDateTime": "2026-06-09T17:42:11Z",
  "deletedDateTime": null,
  "isEnabled": true,
  "isSchedulingEnabled": true,
  "nextScheduleRunDateTime": "2026-06-10T00:00:00Z",
  "version": 5,
  "executionConditions": {
    "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions"
  },
  "quarantineDetails": {
    "quarantinedDateTime": null,
    "quarantineReason": null,
    "quarantineType": "notQuarantined"
  },
  "settings": {
    "quarantineConfiguration": {
      "matchMode": "any",
      "conditions": [
        {
          "@odata.type": "#microsoft.graph.identityGovernance.countBasedQuarantineCondition",
          "threshold": 100
        }
      ]
    }
  }
}
```
