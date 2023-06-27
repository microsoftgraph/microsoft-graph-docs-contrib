---
title: "Get longRunningOperation"
description: "Read the properties and relationships of a longRunningOperation object."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get longRunningOperation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [longRunningOperation](../resources/longrunningoperation.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### For role management alerts

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagementAlert.Read.Directory, RoleManagementAlert.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagementAlert.Read.Directory, RoleManagementAlert.ReadWrite.Directory|

[!INCLUDE [rbac-pim-alerts-apis-read](../includes/rbac-for-apis/rbac-pim-alerts-apis-read.md)]

## HTTP request

To retrieve details of a long running operation of role management alert refresh
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/roleManagementAlerts/operations/{longRunningOperationId}
```

## Optional query parameters
This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [longRunningOperation](../resources/longrunningoperation.md) object in the response body.
For role management alerts, the **resourceLocation** contains the url of the role management alert if the operation status is `succeeded`; otherwise, the **resourceLocation** is empty.

## Examples

### Example 1: Retrieve the details of a long running operation for role management alert refresh when the operation status is `running`

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_longrunningoperation_roleManagementalerts_running"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/operations/refresh:DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_StaleSignInAlert
```


#### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.longRunningOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/roleManagementAlerts/operations/$entity",
    "id": "refresh:DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_StaleSignInAlert",
    "createdDateTime": "2023-06-09T22:50:41.5414467Z",
    "lastActionDateTime": "2023-06-09T22:52:09.0296021Z",
    "resourceLocation": "",
    "status": "running",
    "statusDetail": ""
}
```

### Example 2: Retrieve the details of a long running operation for role management alert refresh when the operation status is `succeeded`

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_longrunningoperation_roleManagementalerts_succeeded"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/operations/refresh:DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_StaleSignInAlert
```


#### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.longRunningOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/roleManagementAlerts/operations/$entity",
    "id": "refresh:DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_StaleSignInAlert",
    "createdDateTime": "2023-06-09T22:50:41.5414467Z",
    "lastActionDateTime": "2023-06-09T22:56:09.0296021Z",
    "resourceLocation": "https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_StaleSignInAlert",
    "status": "succeeded",
    "statusDetail": ""
}
```
