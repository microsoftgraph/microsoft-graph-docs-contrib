---
title: "List agentRuns"
description: "List the agent runs owned by an agentic session."
author: "berver"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List agentRuns

Namespace: microsoft.graph

List the agent runs owned by an agentic session. This operation uses the [agentRun](../resources/agentrun.md) resource.

Use this method to inspect individual agents contributing to a session. To monitor the overall playbook execution, [get the session](../api/investigationsession-get.md) and inspect its status instead of inferring the session state from one agent run.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "investigationsession_list_agentruns" } -->
[!INCLUDE [permissions-table](../includes/permissions/investigationsession-list-agentruns-permissions.md)]

The signed-in user must have access to the requested resources. Granting an OAuth permission does not override the service's access controls.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /security/agenticSecurity/sessions/{session-id}/agentRuns
```

## Optional query parameters

This method supports the `$select` OData query parameter. Other query parameters aren't supported. Use `$select=id,agent,status,statusDetail` for a lightweight view of agent identity and processing status.

When the response contains `@odata.nextLink`, follow that complete URL unchanged until no next link is returned. Don't construct a paging token or append query parameters to the returned URL.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [agentRun](../resources/agentrun.md) objects in the response body.

A `200 OK` confirms that the collection was retrieved, not that any agent run has completed. Inspect **status** and **statusDetail** for each run. An empty **value** array means that no runs were returned at that point; it doesn't confirm that the session has finished.

Use each returned run **id** with the same parent session identifier to [get an individual run](../api/agentrun-get.md). The embedded **agent** object describes the agent that performed the run; its **key** isn't the run identifier or an independently addressable agent resource.

Agent-run **statusDetail** is a String, not a closed enumeration. The documented pairs include `running` / `pendingInput` for an input request and `failed` / `canceled` for a canceled execution. These are run-level details, not the session's status-detail mapping.

As described in the resource, **startedDateTime** currently reflects creation time, not a separately measured execution-start time.

## Examples

The following examples use fictional identifiers and illustrative lifecycle snapshots. They aren't captured Microsoft Graph responses. Selecting a property doesn't guarantee that the service has populated a value.

### Example 1: List agent runs in a session

#### Request

<!-- { "blockType": "request", "name": "investigationsession_list_agentruns" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/sessions/6c27d97a-8003-4993-a6e3-e3a8b5a52d50/agentRuns
```

#### Response

<!-- { "blockType": "response", "truncated": true, "@odata.type": "Collection(microsoft.graph.agentRun)" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "4814c125-e355-4a15-9cbc-cdd5bbd85a0c",
      "agent": {
        "key": "incident-investigator",
        "displayName": "Incident investigator"
      },
      "status": "running",
      "statusDetail": "inProgress",
      "createdDateTime": "2026-10-22T10:00:00Z",
      "lastModifiedDateTime": "2026-10-22T10:00:10Z",
      "startedDateTime": "2026-10-22T10:00:00Z"
    }
  ]
}
```

### Example 2: Monitor agent-run status

#### Request

Use this query to retrieve each run's identifier, embedded agent description, status, and status detail without the timing properties. Follow any `@odata.nextLink` to retrieve additional runs, and inspect the returned statuses in your application.

<!-- { "blockType": "request", "name": "investigationsession_list_agentruns_status" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/sessions/6c27d97a-8003-4993-a6e3-e3a8b5a52d50/agentRuns?$select=id,agent,status,statusDetail
```

#### Response

The following example shows the selected properties for the same run.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "Collection(microsoft.graph.agentRun)" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "4814c125-e355-4a15-9cbc-cdd5bbd85a0c",
      "agent": {
        "key": "incident-investigator",
        "displayName": "Incident investigator"
      },
      "status": "running",
      "statusDetail": "inProgress"
    }
  ]
}
```
