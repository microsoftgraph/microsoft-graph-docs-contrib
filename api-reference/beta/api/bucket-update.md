---
title: "Update bucket"
description: "Update the properties of a bucket object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Update bucket

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a bucket object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "bucket-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/bucket-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /me/planner/plans_v2/{planId}/buckets/{bucketId}
PATCH /users/{usersId}/planner/plans_v2/{planId}/buckets/{bucketId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Title of the bucket. Required.|
|planId|String|ID of the plan that contains the bucket. Immutable after creation. Optional.|
|extensions|[extensionFieldCollection](../resources/extensionfieldcollection.md)|Custom extension field values set on the entity. Supports $select. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [bucket](../resources/bucket.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_bucket"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/planner/plans_v2/{planId}/buckets/{bucketId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.bucket",
  "displayName": "To do",
  "planId": "b3d9f9a2-3e14-4a4b-9b2b-6b6d9e6a2f31",
  "extensions": {
    "@odata.type": "microsoft.graph.extensionFieldCollection"
  }
}
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
  "@odata.type": "#microsoft.graph.bucket",
  "id": "206ac2f7-b3e0-e350-a95d-d7fe9091c22f",
  "displayName": "To do",
  "planId": "b3d9f9a2-3e14-4a4b-9b2b-6b6d9e6a2f31",
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
```

