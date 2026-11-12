---
title: "List sessions"
description: "List the agentic sessions visible to the signed-in user."
author: "berver"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List sessions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the agentic sessions visible to the signed-in user. This operation uses the [agentic session](../resources/investigationsession.md) resource.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agenticsecurityroot_list_sessions" } -->
[!INCLUDE [permissions-table](../includes/permissions/agenticsecurityroot-list-sessions-permissions.md)]

The signed-in user must have access to the requested resources. Granting an OAuth permission does not override the service's access controls.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /security/agenticSecurity/sessions
```

## Optional query parameters

This method supports the following OData query parameters.

|Parameter|Description|
|:---|:---|
|`$filter`|Filter on **status** using `eq`, `or`, or `in`. Use overall status values such as `running` or `succeeded`, not substatus values such as `inProgress` or `completed`. Filtering on **statusDetail** isn't supported.|
|`$select`|Request specific properties. Include both **status** and **statusDetail** when you need the overall processing state and its substatus. Requesting a property doesn't guarantee that it has a populated value.|
|`$top`|Request a page size. Don't assume that the service returns exactly the requested number of sessions or that this limits the total number across all pages.|

`$orderby`, `$search`, `$expand`, `$count`, `$skip`, and delta tracking aren't supported.

When a response contains `@odata.nextLink`, send a GET request to that complete URL without modifying it. Continue until a response no longer contains `@odata.nextLink`. Don't construct paging URLs, extract continuation tokens, or append the original query parameters to a returned link. Don't use the number of items on a page to determine whether another page exists. For more information, see [Paging Microsoft Graph data](/graph/paging).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [agentic session](../resources/investigationsession.md) objects in the response body.

## Examples

Spaces in filter expressions are shown unencoded for readability. Encode them as `%20` when constructing a request URL.

### Example 1: List agentic sessions

#### Request

The following example lists sessions visible to the signed-in user. The response examples use fictional identifiers, scenario names, and tag values. They illustrate lifecycle combinations at different points in time, not captured API responses. The examples populate **statusDetail** to explain each scenario; actual responses can omit unavailable optional values.

<!-- { "blockType": "request", "name": "agenticsecurityroot_list_sessions" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/sessions
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "Collection(microsoft.graph.investigationSession)" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "847fca66-eb45-43af-93fb-4eca7bace70d",
      "displayName": "Investigate incident 12345",
      "status": "running",
      "statusDetail": "inProgress",
      "initiatedBy": {
        "user": {
          "id": "094c2f8f-1182-45ad-82d7-e01a6bdaba89"
        }
      },
      "tags": [
        "workflow-tag-01",
        "workflow-tag-02"
      ]
    }
  ]
}
```

### Example 2: Monitor running sessions

#### Request

Use this query to monitor ongoing work without retrieving the full session resource. The following example filters on **status**, requests four properties, and requests a page size of two sessions. A session waiting for input also has `running` status; inspect **statusDetail** to distinguish it from active processing. For the lifecycle combinations, see [Get agentic session](../api/investigationsession-get.md#session-status-and-status-details).

<!-- { "blockType": "request", "name": "agenticsecurityroot_list_sessions_running_selected" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/sessions?$filter=status eq 'running'&$select=id,displayName,status,statusDetail&$top=2
```

#### Response

The following example shows an actively processing session and a session waiting for input. If an actual response omits **statusDetail**, don't infer a specific substatus from **status** alone. Follow `@odata.nextLink` whenever it is returned, even if a page contains fewer sessions than requested.

> **Note:** The response object shown here might be shortened for readability.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "Collection(microsoft.graph.investigationSession)" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "847fca66-eb45-43af-93fb-4eca7bace70d",
      "displayName": "Investigate incident 12345",
      "status": "running",
      "statusDetail": "inProgress"
    },
    {
      "id": "a56adc7e-d1dc-4d4d-a1d3-763bf9222f2d",
      "displayName": "Analyze threat intelligence article",
      "status": "running",
      "statusDetail": "waitingForInput"
    }
  ]
}
```

### Example 3: Read a lightweight status snapshot

#### Request

Use `$select` when an application only needs session identifiers and processing status, not session names, timestamps, tags, or initiator details. This example doesn't filter sessions by status. Follow any `@odata.nextLink` to read additional pages, and handle substatus values that aren't populated.

<!-- { "blockType": "request", "name": "agenticsecurityroot_list_sessions_status_snapshot" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/sessions?$select=id,status,statusDetail&$top=2
```

#### Response

The following example shows one page with the requested properties.

> **Note:** The response object shown here might be shortened for readability.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "Collection(microsoft.graph.investigationSession)" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "c396e931-e39a-48c0-b770-6ef2d66dc790",
      "status": "succeeded",
      "statusDetail": "completed"
    },
    {
      "id": "847fca66-eb45-43af-93fb-4eca7bace70d",
      "status": "running",
      "statusDetail": "inProgress"
    }
  ]
}
```

### Example 4: Review successfully completed sessions

#### Request

Use a status filter to find sessions whose processing completed successfully. [List each session's outputs](../api/investigationsession-list-outputs.md) to inspect any produced files.

This example uses `eq` to select `succeeded` and returns only identifiers, names, and processing status. It doesn't filter or sort by timestamps and isn't an incremental-sync query.

<!-- { "blockType": "request", "name": "agenticsecurityroot_list_sessions_finished_selected" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/sessions?$filter=status eq 'succeeded'&$select=id,displayName,status,statusDetail&$top=2
```

#### Response

The following example illustrates `succeeded` / `completed` from the [session lifecycle table](../api/investigationsession-get.md#session-status-and-status-details). Failed or running sessions and the `notStarted` / `completed` fallback aren't included. Use **status**, not the detail text alone, to identify successful completion.

> **Note:** The response object shown here might be shortened for readability.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "Collection(microsoft.graph.investigationSession)" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "c396e931-e39a-48c0-b770-6ef2d66dc790",
      "displayName": "Investigate incident 12346",
      "status": "succeeded",
      "statusDetail": "completed"
    },
    {
      "id": "a56adc7e-d1dc-4d4d-a1d3-763bf9222f2d",
      "displayName": "Analyze threat intelligence article",
      "status": "succeeded",
      "statusDetail": "completed"
    }
  ]
}
```
