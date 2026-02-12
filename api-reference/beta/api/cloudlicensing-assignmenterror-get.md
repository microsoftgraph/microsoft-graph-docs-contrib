---
title: "Get assignmentError"
description: "Read the properties and relationships of an assignmentError object."
author: "patrick-starrin"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: apiPageType
---

# Get assignmentError

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [assignmentError](../resources/cloudlicensing-assignmenterror.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudlicensing-assignmenterror-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-assignmenterror-get-permissions.md)]

## HTTP request

To get an assignment error for the signed-in user using delegated (`/me`) permissions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/cloudLicensing/assignmentErrors/{assignmentErrorId}
```

To get an assignment error using either delegated or application permissions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/cloudLicensing/assignmentErrors/{assignmentErrorId}
GET /users/{userId}/cloudLicensing/assignmentErrors/{assignmentErrorId}
```

## Optional query parameters

This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.cloudLicensing.assignmentError](../resources/cloudlicensing-assignmenterror.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_assignmenterror",
  "sampleKeys": ["115bedd6-40d2-45c1-9220-a73c2a8f6226"]
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/cloudLicensing/assignmentErrors/115bedd6-40d2-45c1-9220-a73c2a8f6226
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudLicensing.assignmentError"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.cloudLicensing.assignmentError",    
    "id": "33ca790e-ed9f-b975-9ada-503e02e2b933",
    "code": "MissingDependency",
    "message": "Service plan 0337d124-4da1-45e4-9b28-936079cc72bb cannot be assigned without service plan f1df97e2-b3d9-4c17-b931-30fdbfeb5c18, which this user does not currently have.",
    "occurrenceDateTime": "2024-09-22T17:11:10.6635939+00:00",
    "skuId": "f48db87f-583c-486e-a6de-096155d8fb8f"
  }
}
```

