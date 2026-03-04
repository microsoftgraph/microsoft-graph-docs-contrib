---
title: "Create assignment"
description: "Create a new license assignment by posting to the assignments collection of an organization."
author: "patrick-starrin"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: apiPageType
---

# Create assignment

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new license [assignment](../resources/cloudlicensing-assignment.md) by posting to the **assignments** collection of an organization.

An assignment must always have a direct relationship to an allotment and to a user or group. If an assignment is created by posting to the central **assignments** collection located at `/admin/cloudLicensing/assignments`, both of those relationships must be established in the request body. Assignments can also be created by posting to the **assignments** collection of an allotment, the **assignments** collection of a user or the **assignments** collection of a group.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudlicensing-admincloudlicensing-post-assignments-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-admincloudlicensing-post-assignments-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/cloudLicensing/assignments
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
|disabledServicePlanIds|GUID collection|The list of disabled service plans for this assignment. An empty list indicates that all services are enabled. Required.|

You can specify the following relationships when you create an **assignment**.

|Relationship|Type|Description|
|:---|:---|:---|
|allotment|[microsoft.graph.cloudLicensing.allotment](../resources/cloudlicensing-allotment.md)|The allotment from which licenses are assigned. Required.|
|assignedTo|[directoryObject](../resources/directoryobject.md)|The user or group to which licenses are assigned. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_cloudlicensing_assignment"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/cloudLicensing/assignments
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudLicensing.assignment",
  "allotment@odata.bind": "https://graph.microsoft.com/beta/admin/cloudLicensing/allotments/rkocgef3dgjhnu3gmu2mqhbdbmwcymnf6fk3k6a7zbui5e7gfpmi",
  "assignedTo@odata.bind": "https://graph.microsoft.com/beta/users/6d645c5f-089f-40d8-b0e7-136fb5c56d5b",
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
  "id": "405ee855-dd74-f695-8d7e-be35a6788fe8",
  "disabledServicePlanIds": [
    "bed136c6-b799-4462-824d-fc045d3a9d25"
  ]
}
```

