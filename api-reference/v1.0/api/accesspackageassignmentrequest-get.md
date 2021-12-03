---
title: "Get accessPackageAssignmentRequest"
description: "Retrieve the properties and relationships of an accessPackageAssignmentRequest object."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---
# Get accessPackageAssignmentRequest

Namespace: microsoft.graph


In [Azure AD entitlement management](../resources/entitlementmanagement-root.md), retrieve the properties and relationships of an  [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All  |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/assignmentRequests/{accessPackageAssignmentRequestId}
```

## Optional query parameters

This method supports the `$expand` OData query parameter to expand the relationships, to retrieve the `accessPackage`, `requestor` and `acccessPackageAssignment`.  For example, to retrieve the target of the access package assignment, include `$expand=accessPackageAssignment($expand=target)` in the query.  For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer \{token\}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_accesspackageassignmentrequest"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignmentRequests/{accessPackageAssignmentRequestId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequest"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "7999249e-249e-7999-9e24-99799e249979",
  "requestType": "adminAdd",
  "state": "delivered",
  "status": "Delivered",
  "createdDateTime": "2019-10-25T22:55:11.623Z",
  "completedDate": "2019-10-26T22:55:11.623Z",
  "schedule": {
    "@odata.type": "microsoft.graph.entitlementManagementSchedule"
  }
}
```


