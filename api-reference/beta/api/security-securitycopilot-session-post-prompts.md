---
title: "Create prompt"
description: "Create a new prompt in a Security Copilot session."
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security-copilot"
doc_type: apiPageType
---

# Create prompt

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [prompt](../resources/security-securitycopilot-prompt.md) in a Security Copilot session.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_securitycopilot_session_post_prompts" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-securitycopilot-session-post-prompts-permissions.md)]

[!INCLUDE [rbac-security-copilot-apis](../includes/rbac-for-apis/rbac-security-copilot-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/securityCopilot/workspaces/{workspaceId}/sessions/{sessionId}/prompts
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.security.securityCopilot.prompt](../resources/security-securitycopilot-prompt.md) object.

You can specify the following properties when creating a **prompt**.  

|Property|Type|Description|
|:---|:---|:---|
|type|microsoft.graph.security.securityCopilot.promptType|The type of input prompts. The possible values are: `unknown`, `context`, `prompt`, `skill`, `feedback`, `unknownFutureValue`. **Only `prompt` is currently supported.** |
|content|String|Input text when used with type `prompt` for evaluation. Required for AI evaluation.|


## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.securityCopilot.prompt](../resources/security-securitycopilot-prompt.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_prompt_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/securityCopilot/workspaces/default/sessions/ecdfb9b3-58f5-457f-a18c-4a477890b252/prompts
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.securityCopilot.prompt",
  "type": "prompt",
  "content": "who am I",
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-prompt-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-prompt-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-prompt-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-prompt-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-prompt-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-prompt-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.securityCopilot.prompt"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/securityCopilot/workspaces('default')/sessions('ecdfb9b3-58f5-457f-a18c-4a477890b252')/prompts/$entity",
    "id": "76a9b8c6-6656-4ef4-a4c7-7ed07fb93e01",
    "type": "prompt",
    "createdDateTime": "2025-10-22T20:12:13.759634Z",
    "lastModifiedDateTime": "2025-10-22T20:12:13.759634Z",
    "skillName": null,
    "content": "who am I",
    "inputs": {
        "keyValuePairs": []
    },
    "skillInputDescriptors": []
}
```

