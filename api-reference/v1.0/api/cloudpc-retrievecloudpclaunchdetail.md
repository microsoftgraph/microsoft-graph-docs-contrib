---
title: "cloudPC: retrieveCloudPcLaunchDetail"
description: "Get the cloudPcLaunchDetail for a specific cloudPC that belongs to the current signed-in user."
author: "sentry-cy"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 11/25/2025
---

# cloudPC: retrieveCloudPcLaunchDetail
Namespace: microsoft.graph

Get the [cloudPcLaunchDetail](../resources/cloudpclaunchdetail.md) for a specific [cloudPC](../resources/cloudpc.md) that belongs to the current signed-in user.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpc_retrievecloudpclaunchdetail" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpc-retrievecloudpclaunchdetail-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

To get the [cloudPcLaunchDetail](../resources/cloudpclaunchdetail.md) for a specific [cloudPC](../resources/cloudpc.md) of the specified user (who is the signed-in user) in the organization using delegated permission:

``` http
GET /me/cloudPCs/{cloudPCId}/retrieveCloudPcLaunchDetail
GET /users/{userId}/cloudPCs/{id}/retrieveCloudPcLaunchDetail
```

## Optional query parameters
This method doesn't support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [cloudPcLaunchDetail](../resources/cloudpclaunchdetail.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "cloudpc.retrieveCloudPcLaunchDetail",
  "sampleKeys": ["a20d556d-85f7-88cc-bb9c-08d9902bb7bb"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/me/cloudPCs/a20d556d-85f7-88cc-bb9c-08d9902bb7bb/retrieveCloudPcLaunchDetail
```

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcLaunchDetail"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.cloudPcLaunchDetail",
  "cloudPcId": "a20d556d-85f7-88cc-bb9c-08d9902bb7bb",
  "cloudPcLaunchUrl": "https://rdweb-r0.wvdselfhost.microsoft.com/api/arm/weblaunch/tenants/662009bc-7732-4f6f-8726-25883518b33e/resources/662009bc-7732-4f6f-8726-25883518b33e",
  "windows365SwitchCompatible": false,
  "windows365SwitchCompatibilityFailureReasonType": "osVersionNotSupported"
}
```
