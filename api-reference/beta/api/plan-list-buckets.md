---
title: "List bucket objects"
description: "Get a list of the bucket objects and their properties."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# List bucket objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the bucket objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "plan-list-buckets-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/plan-list-buckets-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/planner/plans_v2/{planId}/buckets
GET /users/{usersId}/planner/plans_v2/{planId}/buckets
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [bucket](../resources/bucket.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_bucket"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/planner/plans_v2/{planId}/buckets
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bucket"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.bucket",
      "id": "206ac2f7-b3e0-e350-a95d-d7fe9091c22f",
      "displayName": "String",
      "planId": "String",
      "creationInfo": {
        "@odata.type": "microsoft.graph.creationInfo"
      },
      "lastModifiedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "lastModifiedDateTime": "String (timestamp)",
      "capabilities": {
        "@odata.type": "microsoft.graph.bucketCapability"
      },
      "extensions": {
        "@odata.type": "microsoft.graph.extensionFieldCollection"
      }
    }
  ]
}
```

