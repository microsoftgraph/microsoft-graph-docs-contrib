---
title: "numberAssignment: assignNumber"
description: "Assign a telephone number to a user account"
author: "pavellatif"
ms.date: 07/23/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# numberAssignment: assignNumber

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Creates an asynchronous order to assign a telephone number to a user account.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "teamsadministration-numberassignment-assignnumber-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/teamsadministration-numberassignment-assignnumber-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/teams/telephoneNumberManagement/numberAssignments/assignNumber
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|telephoneNumber|String|The telephone number intended to be assigned. (Mandatory parameter).|
|assignmentTargetId|String|The ID associated with User account. (Mandatory parameter).|
|numberType|microsoft.graph.teamsAdministration.numberType|Number type can be direct routing, calling plan, or operator connect. (Mandatory parameter)|
|assignmentCategory|microsoft.graph.teamsAdministration.assignmentCategory|Indicates the type of number assignment. Example: primary or private. Default is primary.|
|locationId|String|The ID associated with an emergency address.|

## Response

If successful, the method returns a `202 Accepted` response code with the URL in the response Location to retrieve the action result.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "numberassignmentthis.assignnumber"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/teams/telephoneNumberManagement/numberAssignments/assignNumber
Content-Type: application/json

{
  "telephoneNumber": "12061234567",
  "assignmentTargetId": "94ec379d-30a2-4cdb-a377-75e42f7a61e5",
  "numberType": "directRouting",
  "assignmentCategory": "primary"
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/admin/teams/telephoneNumberManagement/operations('QXNzaWdubWVudHw2Y2E4Yjc0Ni00YzgxLTRhY2EtOTUyNi1jZmNjNGRiYWYyMmI')
```
