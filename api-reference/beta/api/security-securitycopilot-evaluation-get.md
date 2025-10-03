---
title: "Get evaluation"
description: "Read the properties and relationships of microsoft.graph.security.securityCopilot.evaluation object."
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security-copilot"
doc_type: apiPageType
---

# Get evaluation

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [microsoft.graph.security.securityCopilot.evaluation](../resources/security-securitycopilot-evaluation.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-securitycopilot-evaluation-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-securitycopilot-evaluation-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/securityCopilot/workspaces/{workspaceId}/sessions/{sessionId}/prompts/{promptId}/evaluations/{evaluationId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.securityCopilot.evaluation](../resources/security-securitycopilot-evaluation.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_evaluation"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/securityCopilot/workspaces/{workspaceId}/sessions/{sessionId}/prompts/{promptId}/evaluations/{evaluationId}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.securityCopilot.evaluation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.securityCopilot.evaluation",
    "id": "16cddf73-47ef-4827-4485-152886bb5318",
    "createdDateTime": "String (timestamp)",
    "runStartDateTime": "String (timestamp)",
    "completedDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)",
    "executionCount": "Integer",
    "isCancelled": "Boolean",
    "result": {
      "@odata.type": "microsoft.graph.security.securityCopilot.evaluationResult"
    },
    "state": "String"
  }
}
```

