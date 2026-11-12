---
title: "List outputs"
description: "List the stored-file outputs owned by an agentic session."
author: "berver"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List outputs

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the stored-file outputs owned by an agentic session. This operation uses the [agentic output](../resources/investigationoutput.md) resource.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "investigationsession_list_outputs_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/investigationsession-list-outputs-permissions.md)]

The signed-in user must have access to the requested resources. Granting an OAuth permission does not override the service's access controls.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /security/agenticSecurity/sessions/{session-id}/outputs
```

## Optional query parameters

This method supports the `$select` OData query parameter. Use `$select=id` to request only the output identifiers. Other query parameters aren't supported.

When the response contains `@odata.nextLink`, send a GET request to that complete URL without modifying it. Continue until a response no longer contains `@odata.nextLink`. Don't construct continuation tokens or infer the last page from the number of returned items. For more information, see [Paging Microsoft Graph data](/graph/paging).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [agentic output](../resources/investigationoutput.md) objects in the response body.

The response contains output metadata, not the files' contents. Use the session **id** and each returned output **id** to [download its content](../api/investigationoutput-get-content.md) through `/beta/security/agenticSecurity/sessions/{session-id}/outputs/{output-id}/content`. Each request requires a Microsoft Graph access token authorized for the parent session.

**kind** identifies an output category, such as `summary` or `artifact`; it doesn't indicate whether the download is abbreviated. Each content download returns the complete stored file.

An empty **value** collection means that no outputs are listed in that response. It doesn't establish whether the session completed successfully; [get the session](../api/investigationsession-get.md) to check its processing status.

## Examples

### Example 1: List output metadata

#### Request

The following example lists three outputs for an investigation session. The session identifier is fictional, and the response is illustrative rather than a captured Microsoft Graph response. Output identifiers are opaque strings; use the values returned by the API without deriving file paths from them.

<!-- { "blockType": "request", "name": "investigationsession_list_outputs" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/sessions/6c27d97a-8003-4993-a6e3-e3a8b5a52d50/outputs
```

#### Response

The following example shows three outputs with **kind** `artifact`. The category doesn't identify a filename or file format; use each output's **content** endpoint to retrieve the stored file.

> **Note:** The response object shown here might be shortened for readability.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "Collection(microsoft.graph.investigationOutput)" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "c2hhcmVkL291dHB1dHMvcmVwb3J0X2V4ZWN1dGl2ZV9zdW1tYXJ5Lm1k",
      "kind": "artifact"
    },
    {
      "id": "c2hhcmVkL291dHB1dHMvcmVwb3J0X3JlbWVkaWF0aW9uX3BsYW4ubWQ",
      "kind": "artifact"
    },
    {
      "id": "c2hhcmVkL291dHB1dHMvcmVwb3J0X3RlY2huaWNhbC5tZA",
      "kind": "artifact"
    }
  ]
}
```

### Example 2: Select output identifiers

#### Request

Use this query when your application needs the output identifiers for downloading files without inspecting their categories. Follow any `@odata.nextLink` to retrieve additional outputs, then send an authenticated GET request to the **content** endpoint for each returned **id**. The client chooses the local filenames and destinations; don't derive them from identifiers or assume a fixed file count.

<!-- { "blockType": "request", "name": "investigationsession_list_outputs_download_metadata" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/sessions/6c27d97a-8003-4993-a6e3-e3a8b5a52d50/outputs?$select=id
```

#### Response

The following example shows the selected identifiers for the same three outputs.

> **Note:** The response object shown here might be shortened for readability.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "Collection(microsoft.graph.investigationOutput)" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "c2hhcmVkL291dHB1dHMvcmVwb3J0X2V4ZWN1dGl2ZV9zdW1tYXJ5Lm1k"
    },
    {
      "id": "c2hhcmVkL291dHB1dHMvcmVwb3J0X3JlbWVkaWF0aW9uX3BsYW4ubWQ"
    },
    {
      "id": "c2hhcmVkL291dHB1dHMvcmVwb3J0X3RlY2huaWNhbC5tZA"
    }
  ]
}
```
