---
title: "unifiedRoleAssignmentScheduleInstance: filterByCurrentUser"
description: "Get a list of the unifiedRoleAssignmentScheduleInstance objects and their properties filtered by a particular user principal"
author: "shauliu1"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# unifiedRoleAssignmentScheduleInstance: filterByCurrentUser
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [unifiedRoleAssignmentScheduleInstance](../resources/unifiedRoleAssignmentScheduleInstance.md) objects and their properties associated with a particular principal object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleAssignmentSchedule.Read.Directory, RoleManagement.Read.Directory, RoleManagement.Read.All, RoleAssignmentSchedule.ReadWrite.Directory, RoleManagement.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagement.Read.All, RoleManagement.Read.Directory, RoleManagement.ReadWrite.Directory|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /roleManagement/directory/roleAssignmentScheduleInstances/filterByCurrentUser(on='principal')
```

## Function parameters
The following table shows the parameters that can be used with this method.

|Parameter|Type|Description|
|:---|:---|:---|
|on|roleAssignmentScheduleInstanceFilterByCurrentUserOptions|Filter to query objects for which the current user is the principal. Allowed value is `principal`. Required.|


## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).


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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "unifiedroleassignmentscheduleinstance_filterbycurrentuser"
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/roleAssignmentScheduleInstances/filterByCurrentUser(on='principal')
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/unifiedroleassignmentscheduleinstance-filterbycurrentuser-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/unifiedroleassignmentscheduleinstance-filterbycurrentuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/unifiedroleassignmentscheduleinstance-filterbycurrentuser-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/unifiedroleassignmentscheduleinstance-filterbycurrentuser-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleAssignmentScheduleInstance)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(unifiedRoleAssignmentScheduleInstance)",
  "value": [
    {
      "@odata.type": "#microsoft.graph.unifiedRoleAssignmentScheduleInstance",
      "id": "lAPpYvVpN0KRkAEhdxReECssmvzcHW1IohFf6Mp3-h8-1",
      "principalId": "fc9a2c2b-1ddc-486d-a211-5fe8ca77fa1f",
      "roleDefinitionId": "62e90394-69f5-4237-9190-012177145e10",
      "directoryScopeId": "/",
      "appScopeId": null,
      "startDateTime": null,
      "endDateTime": null,
      "assignmentType": "Assigned",
      "memberType": "Direct",
      "roleAssignmentOriginId": "lAPpYvVpN0KRkAEhdxReECssmvzcHW1IohFf6Mp3-h8-1",
      "roleAssignmentScheduleId": "lAPpYvVpN0KRkAEhdxReECssmvzcHW1IohFf6Mp3-h8-1"
    }
  ]
}
```

