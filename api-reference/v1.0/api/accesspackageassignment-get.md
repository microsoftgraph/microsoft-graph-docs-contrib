---
title: "Get accessPackageAssignment"
description: "Retrieve the properties and relationships of an accessPackageAssignment object."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---
# Get accessPackageAssignment

Namespace: microsoft.graph


In [Azure AD entitlement management](../resources/entitlementmanagement-overview.md), retrieve the properties and relationships of an [accessPackageAssignment](../resources/accesspackageassignment.md) object.

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
GET /identityGovernance/entitlementManagement/assignments/{accessPackageAssignmentId}
```

## Optional query parameters

This method supports the `$expand` OData query parameter to expand the `accessPackage`, `target` and `assignmentPolicy`. It also supports the `$select` query parameter. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer \{token\}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [accessPackageAssignment](../resources/accesspackageassignment.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_accesspackageassignment"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignments/{accessPackageAssignmentId}
```

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "a0134a12-ef14-42ff-adac-6fef258e720a",
  "state": "expired",
  "status": "ExpiredNotificationTriggered",
  "expiredDateTime": "2022-07-27T21:55:19.69Z"
}
```


