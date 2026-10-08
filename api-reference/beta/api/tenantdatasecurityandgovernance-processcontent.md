---
title: "tenantDataSecurityAndGovernance: processContent"
description: "Evaluate content against Microsoft Purview Data Loss Prevention (DLP) policies before or during agent-to-tool interactions and return policy actions for the supplied content."
author: "psanyal"
ms.date: 04/13/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# tenantDataSecurityAndGovernance: processContent

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Evaluate content against Microsoft Purview Data Loss Prevention (DLP) policies and return the policy actions that apply to the supplied content.

Use this API when an application needs to evaluate content before or during data movement. In Agent-to-Tool (A2T) scenarios, the agent runtime calls this API before invoking an external tool to determine whether the content should be allowed, blocked, or audited according to Microsoft Purview policies.

For A2T scenarios:

- Set `evaluationScope.type` to `agent`.
- Provide `protectedAppMetadata` to identify both the agent initiating the operation and the tool receiving the content.
- Use the protection scope returned by `protectionScopes/compute` to determine whether this API should be called.
- Pass the latest protection scope `ETag` value in the `If-None-Match` request header to enable policy change detection.

The response contains any applicable policy actions together with the protection scope state, allowing callers to determine whether cached protection scopes should be refreshed.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "tenantdatasecurityandgovernance_processcontent" } -->
[!INCLUDE [permissions-table](../includes/permissions/tenantdatasecurityandgovernance-processcontent-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /security/dataSecurityAndGovernance/processContent
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
|If-None-Match|Optional. The `ETag` value returned by the latest `protectionScopes/compute` response. Enables detection of protection scope changes between requests.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|contentToProcess|[processContentRequest](../resources/processcontentrequest.md)|Required. Specifies the content to evaluate together with the evaluation context. For this action, set **evaluationScope.type** to `agent` and identify the agent and tool in **protectedAppMetadata**.|

## Response

If successful, this action returns a `200 OK` response code and a [processContentResponse](../resources/processcontentresponse.md) in the response body.

The response contains the policy actions that apply to the submitted content. It also includes the protection scope state, which indicates whether the caller should refresh its cached protection scopes before processing future requests.

### Response headers

|Name|Description|
|:---|:---|
|ETag|Indicates the current protection scope state. If the value changes, refresh the cached protection scopes by calling [tenantProtectionScopeContainer: compute](tenantprotectionscopecontainer-compute.md).|

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "tenantdatasecurityandgovernance.processcontent"
}
-->
```http
POST https://graph.microsoft.com/beta/security/dataSecurityAndGovernance/processContent
Content-Type: application/json

{
  "contentToProcess": {
    "contentEntries": [
      {
        "@odata.type": "microsoft.graph.processConversationMetadata",
        "identifier": "78214691-2f04-4f01-99f8-55da9d25c260",
        "content": {
          "@odata.type": "microsoft.graph.textContent",
          "data": "Summarize the quarterly results for the project team."
        },
        "name": "Quarterly results request",
        "isTruncated": false,
        "createdDateTime": "2026-07-21T12:30:00Z",
        "modifiedDateTime": "2026-07-21T12:30:00Z"
      }
    ],
    "activityMetadata": {
      "activity": "uploadText"
    },
    "deviceMetadata": {
      "deviceType": "managed",
      "operatingSystemSpecifications": {
        "operatingSystemPlatform": "Windows",
        "operatingSystemVersion": "11"
      },
      "ipAddress": "192.0.2.1"
    },
    "evaluationScope": {
      "type": "agent"
    },
    "integratedAppMetadata": {
      "name": "Contoso agent runtime",
      "version": "1.0"
    },
    "protectedAppMetadata": {
      "name": "Contoso search tool",
      "version": "1.0",
      "applicationLocation": {
        "@odata.type": "microsoft.graph.policyLocationTool",
        "value": "search@mcp"
      },
      "sourceLocation": {
        "@odata.type": "microsoft.graph.policyLocationApplication",
        "value": "8f44d8d4-80c9-4d88-a487-a1940dc71b3d"
      }
    }
  }
}
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.processContentResponse"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.processContentResponse",
  "policyActions": [],
  "processingErrors": [],
  "protectionScopeState": "notModified"
}
```
