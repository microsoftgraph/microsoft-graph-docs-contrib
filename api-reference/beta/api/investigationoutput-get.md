---
title: "Get agentic output"
description: "Get the metadata of a stored output owned by an agentic session."
author: "berver"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get agentic output

Namespace: microsoft.graph

Get the metadata of a stored output owned by an agentic session. This operation uses the [agentic output](../resources/investigationoutput.md) resource.

[List the session's outputs](../api/investigationsession-list-outputs.md) to find its output identifiers. Use the returned **id** unchanged for `{output-id}`; treat it as opaque and don't derive it from a filename.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "investigationoutput_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/investigationoutput-get-permissions.md)]

The signed-in user must have access to the requested resources. Granting an OAuth permission does not override the service's access controls.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /security/agenticSecurity/sessions/{session-id}/outputs/{output-id}
```

## Optional query parameters

This method supports the `$select` OData query parameter. Other query parameters aren't supported.

Use `$select=id` to request only the output identifier without the output category. The identifier can be used in the authenticated **content** route to download the file.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [agentic output](../resources/investigationoutput.md) object in the response body.

This response contains metadata, not report bytes. The **content** stream isn't inline in the JSON object. The **kind** property identifies an output category, such as `summary` or `artifact`, not whether a download is shortened.

To [download the file](../api/investigationoutput-get-content.md), use the session **id** and output **id** in `/beta/security/agenticSecurity/sessions/{session-id}/outputs/{output-id}/content`. Send the request with a Microsoft Graph access token authorized for the parent session.

## Examples

The following examples use a fictional session identifier and illustrative metadata. They aren't captured Microsoft Graph responses.

### Example 1: Get output metadata

#### Request

The following example retrieves the executive-summary artifact shown in [List outputs](../api/investigationsession-list-outputs.md).

<!-- { "blockType": "request", "name": "investigationoutput_get" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/sessions/6c27d97a-8003-4993-a6e3-e3a8b5a52d50/outputs/c2hhcmVkL291dHB1dHMvcmVwb3J0X2V4ZWN1dGl2ZV9zdW1tYXJ5Lm1k
```

#### Response

<!-- { "blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.investigationOutput" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "c2hhcmVkL291dHB1dHMvcmVwb3J0X2V4ZWN1dGl2ZV9zdW1tYXJ5Lm1k",
  "kind": "artifact"
}
```

### Example 2: Select the output identifier

#### Request

The following example requests only the identifier of an output without its category.

<!-- { "blockType": "request", "name": "investigationoutput_get_download_metadata" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/sessions/6c27d97a-8003-4993-a6e3-e3a8b5a52d50/outputs/c2hhcmVkL291dHB1dHMvcmVwb3J0X2V4ZWN1dGl2ZV9zdW1tYXJ5Lm1k?$select=id
```

#### Response

The response contains the selected identifier for the same output. It doesn't contain the file's contents.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.investigationOutput" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "c2hhcmVkL291dHB1dHMvcmVwb3J0X2V4ZWN1dGl2ZV9zdW1tYXJ5Lm1k"
}
```
