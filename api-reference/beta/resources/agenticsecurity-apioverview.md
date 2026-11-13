---
title: "Use Project Perception in Microsoft Graph"
description: "Use agentic security APIs in Microsoft Graph to run supported security playbooks, monitor agentic sessions, and retrieve outputs."
author: "Yaniv-Shasha"
ms.date: 10/27/2026
ms.localizationpriority: high
ms.subservice: "security"
doc_type: conceptualPageType
---

# Use Project Perception in Microsoft Graph

[Project Perception](https://www.microsoft.com/en-us/security/business/ai-powered-cybersecurity/project-perception-agentic-system) is Microsoft's agentic security system. It brings specialized AI agents into security workflows to support proactive defense, while keeping critical decisions under human control.

Use the agentic security APIs in Microsoft Graph to run supported security playbooks from your applications and workflows. Discover [playbook definitions](../resources/playbookdefinition.md), create an [agentic session](../resources/investigationsession.md) with the required inputs, monitor its progress, and retrieve [outputs](../resources/investigationoutput.md).

## Authentication and permissions

These APIs support delegated access with a work or school account. Application permissions (app-only access) and personal Microsoft accounts aren't supported.

[Register your application with Microsoft Entra ID](/graph/auth-register-app-v2) and [obtain a Microsoft Graph access token on behalf of the signed-in user](/graph/auth-v2-user). Include `Authorization: Bearer {token}` in each request. The HTTP examples omit this header for readability.

|Scenario|Delegated permission|
|:---|:---|
|Read supported resources and download output content|`Perception.Read.All` (least privileged) or `Perception.Manage.All`|
|Create or cancel a session|`Perception.Manage.All`|

Use `Perception.Manage.All` for this end-to-end walkthrough because it creates a session. That permission also allows the read operations shown here; you don't need to request both permissions for this workflow. Read-only clients should use the least privileged read permission.

Follow your organization's consent process for these delegated permissions. For more information, see [Overview of Microsoft Graph permissions](/graph/permissions-overview).

The signed-in user must have access to the requested resources. Granting an OAuth permission doesn't override the service's access controls. Workload-specific RBAC role assignment is outside the scope of this overview.

## Example: Investigate a Defender incident

This walkthrough manually starts the Investigate attack playbook (`investigate-incident`), supplies a Defender incident identifier, monitors the resulting agentic session, and downloads the complete stored report.

The playbook starts the Investigation agent (`Microsoft.Defender.InvestigationAgent`) to prepare a detailed attack report covering the attack story, timelines, attack techniques, indicators, and affected assets. Its template supports incident or alert selection; this walkthrough follows the incident path.

> [!NOTE]
> Catalog names, identifiers, responses, and output files in this walkthrough are illustrative, not a live API trace or a guarantee of playbook availability. Use the definitions and identifiers returned by your catalog. Responses are shortened, and collection responses can be paged: follow the complete `@odata.nextLink` URL when present.
>
> The report preview on this page is shortened and uses a synthetic incident identifier. The content download returns the complete stored file; only its display in this documentation is abbreviated. Original identity, network, cloud-resource, and credential identifiers are omitted from the preview. Its layout and file format aren't a Graph response schema or a guaranteed format for every playbook.

### 1. Find the investigation playbook

[List the playbook definitions](../api/agenticsecurityroot-list-playbookdefinitions.md) available to the signed-in user. In this example, Investigate attack has the catalog name `investigate-incident`.

#### Request

<!-- { "blockType": "request", "name": "agenticsecurity_overview_investigation_list_playbooks" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/playbookDefinitions
```

#### Response

<!-- { "blockType": "response", "truncated": true, "@odata.type": "Collection(microsoft.graph.playbookDefinition)" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "732b84ae-26ad-4eb4-b4fb-f2f45d7571e6",
      "uniqueName": "investigate-incident",
      "displayName": "Investigate attack",
      "description": "Prepare a detailed report about an attack. This playbook outlines the full attack story, providing timelines, attack techniques, indicators, and affected assets.",
      "acceptedInputTypes": [
        "defenderIncidentId",
        "defenderAlertId"
      ]
    }
  ]
}
```

Use the returned **id** to retrieve and select the definition. **uniqueName** is a catalog name, not an alternate addressing key. Don't construct a definition URL from its name.

### 2. Inspect the playbook's accepted inputs

[Get the selected definition](../api/playbookdefinition-get.md) and inspect **acceptedInputTypes**. The illustrative definition below accepts `defenderIncidentId` and `defenderAlertId`. This walkthrough takes the incident path, so the session supplies `defenderIncidentId` as its input **kind** and incident identifier `12345` as its **value**.

The supplied playbook template describes its trigger input selector as follows:

|Template input field|Value|
|:---|:---|
|displayName|Investigate incident or alert|
|description|Triggered by an existing incident or alert ID or name.|
|entity|`incident-and-alert`|
|filter|`""` (empty string)|

This is the input selector's description, not the playbook's overall description. The selector configuration isn't returned as additional properties in the Graph response below. Although the template mentions IDs or names, this Graph walkthrough uses an incident ID and doesn't demonstrate name lookup.

#### Request

<!-- { "blockType": "request", "name": "agenticsecurity_overview_investigation_get_playbook" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/playbookDefinitions/732b84ae-26ad-4eb4-b4fb-f2f45d7571e6
```

#### Response

<!-- { "blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.playbookDefinition" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "732b84ae-26ad-4eb4-b4fb-f2f45d7571e6",
  "uniqueName": "investigate-incident",
  "displayName": "Investigate attack",
  "description": "Prepare a detailed report about an attack. This playbook outlines the full attack story, providing timelines, attack techniques, indicators, and affected assets.",
  "acceptedInputTypes": [
    "defenderIncidentId",
    "defenderAlertId"
  ]
}
```

The collection identifies accepted input kinds; it isn't a complete parameter schema or a statement that every listed kind is required. Each [input](../resources/investigationinput.md) supplied at creation requires **kind** and **value**, and the selected playbook must accept that kind. Don't copy the selector's **displayName**, **description**, **entity**, or **filter** into a Graph creation input.

### 3. Start an agentic session

[Create a session](../api/agenticsecurityroot-post-sessions.md) with the existing definition's URL in **playbookDefinition@odata.bind** and the incident input in **inputs**. Don't supply service-generated session or input identifiers.

#### Request

<!-- { "blockType": "request", "name": "agenticsecurity_overview_investigation_create_session" } -->
```http
POST https://graph.microsoft.com/beta/security/agenticSecurity/sessions
Content-Type: application/json

{
  "playbookDefinition@odata.bind": "https://graph.microsoft.com/beta/security/agenticSecurity/playbookDefinitions/732b84ae-26ad-4eb4-b4fb-f2f45d7571e6",
  "inputs": [
    {
      "kind": "defenderIncidentId",
      "value": "12345"
    }
  ]
}
```

#### Response

<!-- { "blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.investigationSession" } -->
```http
HTTP/1.1 201 Created
Location: https://graph.microsoft.com/beta/security/agenticSecurity/sessions/6c27d97a-8003-4993-a6e3-e3a8b5a52d50
Content-Type: application/json

{
  "id": "6c27d97a-8003-4993-a6e3-e3a8b5a52d50",
  "status": "running",
  "statusDetail": "inProgress",
  "displayName": "Investigate incident 12345",
  "inputs": [
    {
      "id": "982f3662-a455-4f31-afd7-c9b483190888",
      "kind": "defenderIncidentId",
      "value": "12345",
      "displayName": "Incident 12345"
    }
  ]
}
```

`201 Created` means the session was created, not that the investigation finished. Save the session **id** and the URL in the `Location` header to monitor processing.

### 4. Check the session's progress

[Get the session](../api/investigationsession-get.md) to check its current progress.

#### Request

<!-- { "blockType": "request", "name": "agenticsecurity_overview_investigation_get_running_session" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/sessions/6c27d97a-8003-4993-a6e3-e3a8b5a52d50
```

#### Response

<!-- { "blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.investigationSession" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "6c27d97a-8003-4993-a6e3-e3a8b5a52d50",
  "status": "running",
  "statusDetail": "inProgress"
}
```

### 5. Poll again and confirm successful completion

Wait before checking again rather than polling in a tight loop. No fixed execution duration is implied by these examples. [Get the same session](../api/investigationsession-get.md) again using its **id**.

#### Request

<!-- { "blockType": "request", "name": "agenticsecurity_overview_investigation_get_completed_session" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/sessions/6c27d97a-8003-4993-a6e3-e3a8b5a52d50
```

#### Response

<!-- { "blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.investigationSession" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "6c27d97a-8003-4993-a6e3-e3a8b5a52d50",
  "status": "succeeded",
  "statusDetail": "completed"
}
```

Here, **status** is `succeeded`, indicating successful completion. `completed` is the example's **statusDetail** text, not an additional status enum value. An HTTP `200 OK` alone only means the read succeeded.

For other outcomes, inspect **status** and **statusDetail** rather than treating every response as success. If the session is `failed`, stop this success-path walkthrough and inspect **statusDetail** for available context. `unknownFutureValue` isn't evidence of completion. If **statusDetail** is `waitingForInput`, don't assume repeated polling will resolve it; this preview doesn't expose input-update or message-creation operations.

For playbooks with multiple agents, you can optionally inspect an [agentRun](../resources/agentrun.md) for a specific agent's execution. Individual run details aren't required for this session-level walkthrough.

### 6. List the session's outputs

[List the session's outputs](../api/investigationsession-list-outputs.md) to discover their identifiers. The shortened response below shows one output. Use the identifiers returned for your session.

#### Request

<!-- { "blockType": "request", "name": "agenticsecurity_overview_investigation_list_outputs" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/sessions/6c27d97a-8003-4993-a6e3-e3a8b5a52d50/outputs
```

#### Response

<!-- { "blockType": "response", "truncated": true, "@odata.type": "Collection(microsoft.graph.investigationOutput)" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "c2hhcmVkL291dHB1dHMvcmVwb3J0X3RlY2huaWNhbC5tZA"
    }
  ]
}
```

This response lists outputs, not their file contents. Retrieve each file through its **content** endpoint as shown in the next step. Output categories such as `summary` and `artifact` don't indicate whether a download is abbreviated or complete.

Follow any `@odata.nextLink` to retrieve all listed outputs. Treat each output **id** as opaque: don't construct or decode identifiers, or assume a fixed filename or file count. If no outputs are returned, there is no listed file to download.

### 7. Download the full investigation report

[Download the complete report](../api/investigationoutput-get-content.md) by sending an authenticated GET request to `/beta/security/agenticSecurity/sessions/{session-id}/outputs/{output-id}/content`. Use the session **id** and an output **id** returned in the previous step. This content endpoint requires a Microsoft Graph access token authorized for the parent session.

Save the complete HTTP response body: it contains the stored file's bytes, not an inline JSON report. Repeat this request for every listed output **id** to retrieve all produced files.

#### Request

<!-- { "blockType": "request", "name": "agenticsecurity_overview_investigation_download_report" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/sessions/6c27d97a-8003-4993-a6e3-e3a8b5a52d50/outputs/c2hhcmVkL291dHB1dHMvcmVwb3J0X3RlY2huaWNhbC5tZA/content
```

#### Response

The API returns the complete stored file. For readability, the HTTP example below displays only an abridged Markdown preview; it doesn't demonstrate a shortened API download. The client chooses the local destination and filename, such as `investigation-report.md`, based on the returned content rather than by decoding the output identifier.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "stream" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/octet-stream

# Investigation Report - Incident 12345

## Verdict

**Incident Classification:** True Positive
**Incident Determination:** Multi-staged attack
**Confidence:** High

## Summary

The investigation correlated Okta and Microsoft Entra account activity with AWS administrative actions. It found valid-account abuse, unauthorized federation changes, administrator-level persistence, impaired defensive controls, and RDS snapshot sharing to an external AWS account.

## Key findings

- Compromised identities were used across identity providers and AWS federation.
- Attacker-created federation and IAM resources provided privileged persistence.
- GuardDuty detectors were deleted, S3 public-access controls were weakened, and CloudTrail logging was stopped.
- RDS snapshots were created and shared externally as data-theft staging.
- Pre-existing legitimate federation components were abused. Separate provisioning activity was assessed as baseline context, not the same attacker activity.

## Visibility limits

No S3 object data access, RDS restore/copy/export, or later use of the attacker-created IAM key was observed in available telemetry. CloudTrail logging was stopped, and activity in the external AWS account wasn't visible. These gaps mean that a lack of observed access isn't proof that no data was accessed or exfiltrated.

## Recommended response

- Review containment of compromised identities and revoke their active sessions.
- Remove attacker-created persistence after validating ownership and operational impact.
- Restore cloud monitoring and public-access protections, and review external snapshot sharing.
- Validate potential data access using AWS-native logs and account-owner records.
```

Read the actual `Content-Type` header and handle the returned bytes accordingly. This example output contains text; other outputs can contain different content and formats. Response recommendations in a report aren't evidence that these Graph requests performed remediation.
