---
title: "Get agentic output content"
description: "Download the content of an output owned by an agentic session."
author: "berver"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get agentic output content

Namespace: microsoft.graph

Download the content of an output owned by an agentic session. This operation uses the [agentic output](../resources/investigationoutput.md) resource.

[List the session's outputs](../api/investigationsession-list-outputs.md) or [get an output](../api/investigationoutput-get.md) to retrieve its metadata. Use the session **id** and returned output **id** in the **content** route. Send the GET request with a Microsoft Graph access token authorized for the parent session.

Treat the output **id** as opaque and use it unchanged; don't derive it from a filename or decode it to choose a local destination.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "investigationoutput_get_content" } -->
[!INCLUDE [permissions-table](../includes/permissions/investigationoutput-get-content-permissions.md)]

The signed-in user must have access to the requested resources. Granting an OAuth permission does not override the service's access controls.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /security/agenticSecurity/sessions/{session-id}/outputs/{output-id}/content
```

## Optional query parameters

This method doesn't support OData query parameters.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the output bytes in the response body. The `Content-Type` response header describes the stored content. This request returns file bytes, not the metadata object containing **id** and **kind**.

Save the complete response body. The output's **kind**, such as `summary` or `artifact`, doesn't indicate whether the download is shortened; this method returns the complete stored file.

The client chooses the local destination and filename based on the returned content. For example, an executive-summary report can be saved locally as `executive-summary.md`; the output identifier doesn't prescribe a local filename or folder structure.

## Examples

### Request

The following example downloads one of the outputs shown in [List outputs](../api/investigationsession-list-outputs.md) and [Get output](../api/investigationoutput-get.md). The request uses the same output **id** in the **content** route, and the response excerpt illustrates an executive-summary report. The session identifier is fictional.

<!-- { "blockType": "request", "name": "investigationoutput_get_content" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/sessions/6c27d97a-8003-4993-a6e3-e3a8b5a52d50/outputs/c2hhcmVkL291dHB1dHMvcmVwb3J0X2V4ZWN1dGl2ZV9zdW1tYXJ5Lm1k/content
```

### Response

The following example is adapted from a downloaded executive-summary report, with customer-specific information masked using illustrative values. It isn't a captured Microsoft Graph response. The excerpt is shortened for readability; the download itself returns the complete stored file.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "stream" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/octet-stream

# Contoso - Executive Summary

## Top Risks

| Risk | Severity | Evidence | Recommended Action |
|---|---|---|---|
| Blocked account with administrative access | Critical | Not confirmed | Review technical evidence and recommended security actions. |

## Immediate Actions

1. Review the supporting technical evidence for the flagged account-access risk.
```

Read the actual `Content-Type` header and handle the returned bytes accordingly. This example contains text; other outputs can contain different content and formats. Downloading a report doesn't execute its recommendations or perform remediation.
