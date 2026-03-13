---
title: "Create assignment for user"
description: "Create a new license assignment by posting to a user's assignments collection."
author: "patrick-starrin"
ms.localizationpriority: medium
ms.date: 07/18/2025
ms.subservice: "cloud-licensing"
doc_type: apiPageType
---

# Create assignment for user

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new license [assignment](../resources/cloudlicensing-assignment.md) by posting to a [user](../resources/user.md)'s **assignments** collection.

An assignment must always have a direct relationship to an allotment and to a user or group. If an assignment is created by posting to a user's assignments collection, located at `/users/{userId}/cloudLicensing/assignments`, the **allotment** relationship must be established in the request body. Assignments can also be created by posting to the **assignments** collection of an organization, the **assignments** collection of an allotment, or the **assignments** collection of a group.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudlicensing-usercloudlicensing-post-assignments-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-usercloudlicensing-post-assignments-permissions.md)]

## HTTP request

To create an assignment for the signed-in user using delegated (`/me`) permissions:

<!-- { "blockType": "ignored" } -->
``` http
POST /me/cloudLicensing/assignments
```

To create an assignment for a specific user using either delegated or application permissions:

<!-- { "blockType": "ignored" } -->

``` http
POST /users/{userId}/cloudLicensing/assignments
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [assignment](../resources/cloudlicensing-assignment.md) object.

You can specify the following properties when you create an **assignment**.

|Property|Type|Description|
|:---|:---|:---|
|disabledServicePlanIds|Guid collection|The list of disabled service plans for this assignment. An empty list indicates that all services are enabled. Required. Not nullable.|

You can specify the following relationships when you create an **assignment**.

|Relationship|Type|Description|
|:---|:---|:---|
|allotment|[microsoft.graph.cloudLicensing.allotment](../resources/cloudlicensing-allotment.md)|The allotment from which licenses are assigned. Required. Not nullable.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_assignment_from_user"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/6d645c5f-089f-40d8-b0e7-136fb5c56d5b/cloudLicensing/assignments
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudLicensing.assignment",
  "allotment@odata.bind": "https://graph.microsoft.com/beta/admin/cloudLicensing/allotments/rkocgef3dgjhnu3gmu2mqhbdbmwcymnf6fk3k6a7zbui5e7gfpmi",
  "disabledServicePlanIds": [
    "bed136c6-b799-4462-824d-fc045d3a9d25"
  ]
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudLicensing.assignment"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudLicensing.assignment",
  "disabledServicePlanIds": [
    "bed136c6-b799-4462-824d-fc045d3a9d25"
  ]
}
```
