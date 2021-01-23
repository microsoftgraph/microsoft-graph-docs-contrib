---
title: "List unifiedRoleAssignmentScheduleInstances"
description: "Get a list of the unifiedRoleAssignmentScheduleInstance objects and their properties."
author: "shauliu"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# List unifiedRoleAssignmentScheduleInstances
Namespace: microsoft.graph

Get a list of the [unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PrivilegedAccess.ReadWrite.AzureAD|
|Delegated (personal Microsoft account)|Not supported|
|Application|PrivilegedAccess.Read.AzureAD|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /roleManagement/directory/roleAssignmentScheduleInstances
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [unifiedRoleAssignmentScheduleInstance](../resources/unifiedroleassignmentscheduleinstance.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_unifiedroleassignmentscheduleinstance"
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/roleAssignmentScheduleInstances
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.Identity.Governance.Common.Data.ExternalModels.V1.unifiedRoleAssignmentScheduleInstance)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#Microsoft.Identity.Governance.Common.Data.ExternalModels.V1.unifiedRoleAssignmentScheduleInstance",
      "id": "eb18c026-c026-eb18-26c0-18eb26c018eb",
      "principalId": "String",
      "roleDefinitionId": "String",
      "directoryScopeId": "String",
      "appScopeId": "String",
      "startDateTime": "String (timestamp)",
      "endDateTime": "String (timestamp)",
      "assignmentType": "String",
      "memberType": "String",
      "roleAssignmentOriginId": "String",
      "roleAssignmentScheduleId": "String"
    }
  ]
}
```

