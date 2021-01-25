---
title: "List unifiedRoleAssignmentRequests"
description: "Get a list of the unifiedRoleAssignmentRequest objects and their properties."
author: "shauliu"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# List unifiedRoleAssignmentRequests

Namespace: microsoft.graph

Get a list of the [unifiedRoleAssignmentRequest](../resources/unifiedroleassignmentrequest.md) objects and their properties.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | PrivilegedAccess.ReadWrite.AzureAD          |
| Delegated (personal Microsoft account) | Not supported                               |
| Application                            | PrivilegedAccess.Read.AzureAD               |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /roleManagement/directory/roleAssignmentRequests
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [unifiedRoleAssignmentRequest](../resources/unifiedroleassignmentrequest.md) objects in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "list_unifiedroleassignmentrequest"
}
-->

```http
GET https://graph.microsoft.com/beta/roleManagement/directory/roleAssignmentRequests
```

### Response

**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleAssignmentRequest)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "024fadf0-d058-4c27-b676-a8e3a4a75960",
      "status": "Provisioned",
      "createdDateTime": "2021-01-15T20:41:01.897Z",
      "completedDateTime": null,
      "action": "AdminAssign",
      "principalId": "310f12cc-979f-42ba-84f5-dc1dd3aa5392",
      "roleDefinitionId": "d37c8bed-0711-4417-ba38-b4abe66ce4c2",
      "directoryScopeId": "/",
      "appScopeId": null,
      "isValidationOnly": false,
      "targetScheduleId": "29f84688-4095-4f1b-bca3-9b822cbae49a",
      "justification": "test",
      "scheduleInfo": {
      "startDateTime": "2021-01-15T20:40:20.079Z",
      "expiration": {
      "type": "afterDuration",
      "endDateTime": null,
      "duration": "PT0S"
      }
      },
      "ticketInfo": {
      "ticketNumber": null,
      "ticketSystem": null
      }
    }
  ]
}
```
