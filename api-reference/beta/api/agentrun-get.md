---
title: "Get agentRun"
description: "Get an agent run and its processing status."
author: "berver"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get agentRun

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get an agent run and its processing status. This operation uses the [agentRun](../resources/agentrun.md) resource.

[List the session's agent runs](../api/investigationsession-list-agentruns.md) to find the run **id**. Use that value unchanged with the same parent session identifier; the embedded **agent** object's **key** isn't the run identifier.

Use this method to inspect one agent's execution. For the overall playbook state, [get the parent session](../api/investigationsession-get.md) rather than inferring it from an individual run.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentrun_get_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentrun-get-permissions.md)]

The signed-in user must have access to the requested resources. Granting an OAuth permission does not override the service's access controls.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /security/agenticSecurity/sessions/{session-id}/agentRuns/{agentRun-id}
```

## Optional query parameters

This method supports the `$select` OData query parameter. Other query parameters aren't supported.

Use `$select=id,status,statusDetail` for a lightweight status check. Include **failureInfo** in the selection when you need any recorded run-level failure details.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [agentRun](../resources/agentrun.md) object in the response body.

A `200 OK` confirms that the resource was retrieved, not that the agent run completed successfully. Inspect **status** and **statusDetail** to determine its processing state.

Agent-run **statusDetail** is a String, not a closed enumeration. The documented pairs include `running` / `pendingInput` for an input request and `failed` / `canceled` for a canceled execution. These are run-level details, not the session's status-detail mapping.

If **status** is `failed`, inspect [**failureInfo**](../resources/agentrunfailureinfo.md) when available. Run-level failure information is distinct from an HTTP error returned while reading the resource.

The **startedDateTime** currently reflects creation time, not a separately measured execution-start time. The **completedDateTime** and **durationInMilliseconds** properties describe successful completion and are absent for other states.

## Examples

The following examples use fictional identifiers and illustrative lifecycle snapshots. They aren't captured Microsoft Graph responses. Selecting a property doesn't guarantee that the service has populated a value.

### Example 1: Get an agent run

#### Request

<!-- { "blockType": "request", "name": "agentrun_get" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/sessions/6c27d97a-8003-4993-a6e3-e3a8b5a52d50/agentRuns/4814c125-e355-4a15-9cbc-cdd5bbd85a0c
```

#### Response

<!-- { "blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.agentRun" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

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
```

### Example 2: Check an individual run's status

#### Request

Use this query when you only need the processing state of the selected run, without its agent description or timing properties.

<!-- { "blockType": "request", "name": "agentrun_get_status" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/sessions/6c27d97a-8003-4993-a6e3-e3a8b5a52d50/agentRuns/4814c125-e355-4a15-9cbc-cdd5bbd85a0c?$select=id,status,statusDetail
```

#### Response

The response contains the selected properties for the same run. This example shows a run that is still processing.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.agentRun" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "4814c125-e355-4a15-9cbc-cdd5bbd85a0c",
  "status": "running",
  "statusDetail": "inProgress"
}
```
