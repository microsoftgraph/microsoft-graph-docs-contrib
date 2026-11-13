---
title: "Create agentic session"
description: "Create an agentic session to run an existing playbook against typed inputs."
author: "berver"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Create agentic session

Namespace: microsoft.graph

Create an agentic session to run an existing playbook against typed inputs. This operation uses the [agentic session](../resources/investigationsession.md) resource.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agenticsecurityroot_post_sessions" } -->
[!INCLUDE [permissions-table](../includes/permissions/agenticsecurityroot-post-sessions-permissions.md)]

The signed-in user must have access to the requested resources. Granting an OAuth permission does not override the service's access controls.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /security/agenticSecurity/sessions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of an [agentic session](../resources/investigationsession.md) with the following values.

|Property|Type|Description|
|:---|:---|:---|
|inputs|[investigationInput](../resources/investigationinput.md) collection|Required inline array. Each input requires **kind** and **value**. The array can be empty if the selected playbook permits it. Don't supply input **id** or **displayName**.|
|playbookDefinition@odata.bind|String|Required reference to an existing [playbookDefinition](../resources/playbookdefinition.md), using its GUID-string **id**. Definition deep insert isn't supported.|

Don't supply service-generated properties such as **id**, **displayName**, **status**, **statusDetail**, **createdDateTime**, **lastModifiedDateTime**, **initiatedBy**, or **tags**. Don't deep-insert agent runs or outputs.

## Response

If successful, this method returns a `201 Created` response code and the created [agentic session](../resources/investigationsession.md), including its created inputs. The `Location` response header identifies the session. Creation starts asynchronous processing; read the session to monitor **status** and **statusDetail**.

## Examples

### Request

The following example creates an agentic session for the Extract threat intelligence playbook using a supplied article ID. The playbook runs the Threat Intelligence agent. The article ID and response values are illustrative.

<!-- { "blockType": "request", "name": "agenticsecurityroot_post_sessions" } -->
```http
POST https://graph.microsoft.com/beta/security/agenticSecurity/sessions
Content-Type: application/json

{
  "playbookDefinition@odata.bind": "https://graph.microsoft.com/beta/security/agenticSecurity/playbookDefinitions/4471901f-118e-4254-8822-f141b8f9c5e7",
  "inputs": [
    {
      "kind": "defenderThreatIntelligenceId",
      "value": "2f7b3a5c-94d1-4f90-b2d8-6e8c1a0473ad"
    }
  ]
}
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.investigationSession" } -->
```http
HTTP/1.1 201 Created
Location: https://graph.microsoft.com/beta/security/agenticSecurity/sessions/b6f1c52a-e3d8-4a02-9c75-87d1b054e6a3
Content-Type: application/json

{
  "id": "b6f1c52a-e3d8-4a02-9c75-87d1b054e6a3",
  "status": "running",
  "statusDetail": "inProgress",
  "displayName": "Analyze threat intelligence article",
  "createdDateTime": "2026-10-22T10:00:00Z",
  "lastModifiedDateTime": "2026-10-22T10:00:10Z",
  "initiatedBy": {
    "user": {
      "id": "00000000-0000-4000-8000-000000000001"
    }
  },
  "tags": [],
  "inputs": [
    {
      "id": "c2394a6f-0d52-4c8b-a7e1-6f9d320b815e",
      "kind": "defenderThreatIntelligenceId",
      "value": "2f7b3a5c-94d1-4f90-b2d8-6e8c1a0473ad",
      "displayName": "Threat intelligence article"
    }
  ]
}
```
