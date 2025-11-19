---
title: "cloudPC: getCloudPcLaunchInfo (deprecated)"
description: "Get the cloudPCLaunchInfo for a specific cloudPC that belongs to the current signed-in user."
author: "andrewku0409"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 04/04/2024
---

# cloudPC: getCloudPcLaunchInfo (deprecated)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!CAUTION]
> This API is deprecated and will stop returning data on October 30, 2026. Going forward, use the [retrieveCloudPcLaunchDetail](../api/cloudpc-retrievecloudpclaunchdetail.md) API.

Get the [cloudPCLaunchInfo](../resources/cloudpclaunchinfo.md) for a specific [cloudPC](../resources/cloudpc.md) that belongs to the current signed-in user.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpc_getcloudpclaunchinfo" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpc-getcloudpclaunchinfo-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

To get the [cloudPCLaunchInfo](../resources/cloudpclaunchinfo.md) for a specific [cloudPC](../resources/cloudpc.md) of the specified user (who is the signed-in user) in the organization using delegated permission:

```http
GET /me/cloudPCs/{cloudPCId}/getCloudPcLaunchInfo
GET /users/{userId}/cloudPCs/{id}/getCloudPcLaunchInfo
```

To get the [cloudPCLaunchInfo](../resources/cloudpclaunchinfo.md) for a specific [cloudPC](../resources/cloudpc.md) in the organization using delegated permission (the signed-in user should be the administrator):

```http
GET /deviceManagement/virtualEndpoint/cloudPCs/{cloudPCId}/getCloudPcLaunchInfo
```

> [!CAUTION]
> The `/deviceManagement/virtualEndpoint/cloudPCs/{cloudPCId}/getCloudPcLaunchInfo` endpoint is deprecated and will stop returning data on October 30, 2025.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [cloudPcLaunchInfo](../resources/cloudpclaunchinfo.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpc.getcloudpclaunchinfo"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/cloudPCs/{cloudPCId}/getCloudPcLaunchInfo
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcgetcloudpclaunchinfo-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcgetcloudpclaunchinfo-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcgetcloudpclaunchinfo-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcgetcloudpclaunchinfo-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcgetcloudpclaunchinfo-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpcgetcloudpclaunchinfo-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcLaunchInfo"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.cloudPcLaunchInfo",
  "cloudPcId": "a20d556d-85f7-88cc-bb9c-08d9902bb7bb",
  "cloudPcLaunchUrl": "https://rdweb-r0.wvdselfhost.microsoft.com/api/arm/weblaunch/tenants/662009bc-7732-4f6f-8726-25883518b33e/resources/662009bc-7732-4f6f-8726-25883518b33e",
  "windows365SwitchCompatible":false,
  "windows365SwitchNotCompatibleReason":"CPCHardwareNotMeetRequirement"
}
```

