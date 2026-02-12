---
title: "List assignmentErrors"
description: "Get a list of the assignmentError objects within an organization or affecting a specific user."
author: "patrick-starrin"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: apiPageType
---

# List assignmentErrors

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [assignmentError](../resources/cloudlicensing-assignmenterror.md) objects within an organization or affecting a specific user.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudlicensing-admincloudlicensing-list-assignmenterrors-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-admincloudlicensing-list-assignmenterrors-permissions.md)]

## HTTP request

To list the assignment errors for the signed-in user using delegated (`/me`) permissions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/cloudLicensing/assignmentErrors
```

To list the assignment errors using either delegated or application permissions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/cloudLicensing/assignmentErrors
GET /users/{userId}/cloudLicensing/assignmentErrors
```

## Optional query parameters

This method supports the `$select`, `$top`, `$expand`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.cloudLicensing.assignmentError](../resources/cloudlicensing-assignmenterror.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_assignmenterror"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/cloudLicensing/assignmentErrors
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudLicensing.assignmentError)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.cloudLicensing.assignmentError",
      "code": "MissingDependency",
      "id": "33ca790e-ed9f-b975-9ada-503e02e2b933",
      "message": "Service plan 0337d124-4da1-45e4-9b28-936079cc72bb cannot be assigned without service plan f1df97e2-b3d9-4c17-b931-30fdbfeb5c18, which this user does not currently have.",
      "occurrenceDateTime": "2024-09-22T17:11:10.6635939+00:00",
      "skuId": "f48db87f-583c-486e-a6de-096155d8fb8f"
    }
  ]
}
```

