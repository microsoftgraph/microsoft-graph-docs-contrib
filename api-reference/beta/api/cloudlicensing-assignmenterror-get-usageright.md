---
title: "Get usageRight"
description: "Get a usageRight object affected by an assignmentError."
author: "patrick-starrin"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: apiPageType
---

# Get usageRight

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [usageRight](../resources/cloudlicensing-usageright.md) object affected by an [assignmentError](../resources/cloudlicensing-assignmenterror.md). A **usageRight** object is returned only if a preexisting one is in effect and can't be updated due to this **assignmentError**.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudlicensing-assignmenterror-get-usageright-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-assignmenterror-get-usageright-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/cloudLicensing/assignmentErrors/{assignmentErrorId}/usageRight
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_assignmenterror_usageright",
  "sampleKeys": ["405ee855-dd74-f695-8d7e-be35a6788fe8"]
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/cloudLicensing/assignmentErrors/405ee855-dd74-f695-8d7e-be35a6788fe8/usageRight
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudLicensing.usageRight"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudLicensing.usageRight",
  "id": "j6sq63x2vd3esbkifv7m42xdaugc6lfpqf3ozgvdlvk3ttnamby4",
  "skuId": "f48db87f-583c-486e-a6de-096155d8fb8f",
  "skuPartNumber": "TIME_TRAVEL_BACKUP_RESTORE",
  "services": [
    {
      "@odata.type": "microsoft.graph.cloudLicensing.service",
      "assignableTo": "user,group",
      "planId": "fe6c28b3-d468-44ea-bbd0-a10a5167435c",
      "planName": "TIME_TRAVEL_BACKUP_RESTORE_PREMIUM"
    }
  ]
}
```
