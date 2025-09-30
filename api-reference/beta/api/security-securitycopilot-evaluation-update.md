---
title: "Update evaluation"
description: "Update the properties of an evaluation object."
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security.securitycopilot"
doc_type: apiPageType
---

# Update evaluation

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an evaluation object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "securitycopilot-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/securitycopilot-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/securityCopilot/workspaces/{workspaceId}/sessions/{sessionId}/prompts/{promptId}/evaluations/{evaluationId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]



|Property|Type|Description|
|:---|:---|:---|
|isCancelled|Boolean|Cancel a running evaluation. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.security.securityCopilot.evaluation](../resources/security-securitycopilot-evaluation.md) object in the response body.

``` json
{
  "@odata.type": "#microsoft.graph.security.securityCopilot.evaluation",
  "id": "String (identifier)",
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
```

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_evaluation"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/securityCopilot/workspaces/{workspaceId}/sessions/{sessionId}/prompts/{promptId}/evaluations/{evaluationId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.securityCopilot.evaluation",
  "runStartDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "executionCount": "Integer",
  "isCancelled": "Boolean",
  "result": {
    "@odata.type": "microsoft.graph.security.securityCopilot.evaluationResult"
  },
  "state": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
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
```

