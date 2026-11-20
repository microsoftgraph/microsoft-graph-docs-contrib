---
title: "cloudPC: retrieveFlexCloudPcAccessConfiguration"
description: "Get the current access configuration of a Windows 365 Flex (formerly Windows 365 Frontline) Cloud PC."
author: "chikaishiro"
ms.date: 11/11/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: retrieveFlexCloudPcAccessConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the current access configuration of a Windows 365 Flex (formerly Windows 365 Frontline) [Cloud PC](../resources/cloudpc.md). The [cloudPcFlexAccessConfiguration](../resources/cloudpcflexaccessconfiguration.md) response contains the live **accessState** of the Cloud PC.

Use the `/me` endpoint to retrieve the access configuration of a Cloud PC that belongs to the signed-in user. An administrator or application can use the `/deviceManagement/virtualEndpoint` endpoint to retrieve the access configuration of a targeted Cloud PC.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {
  "blockType": "permissions",
  "name": "cloudpc-retrieveflexcloudpcaccessconfiguration-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudpc-retrieveflexcloudpcaccessconfiguration-permissions.md)]

> [!NOTE]
> - The `/me` endpoint supports delegated permissions for work or school accounts only. Its least privileged permission is `CloudPC.ReadWrite`; `CloudPC.Read.All` and `CloudPC.ReadWrite.All` are also supported. The Cloud PC must belong to the signed-in user.
> - For delegated access to the `/deviceManagement/virtualEndpoint` endpoint, the signed-in user must also have the `Microsoft.CloudPC/CloudPCs/Read` permission through Windows 365 role-based access control (RBAC). Scope tags and groups apply. For application access, the application must be authorized for the Cloud PC tenant.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/virtualEndpoint/cloudPCs/{cloudPCId}/retrieveFlexCloudPcAccessConfiguration
GET /me/cloudPCs/{cloudPCId}/retrieveFlexCloudPcAccessConfiguration
```

## Optional query parameters

This method doesn't support the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [cloudPcFlexAccessConfiguration](../resources/cloudpcflexaccessconfiguration.md) in the response body.

This function supports Flex Cloud PCs only. It returns a `400 Bad Request` response code if the Cloud PC isn't a Flex Cloud PC or its access configuration can't be resolved for the caller.

For information about other errors, see [Microsoft Graph error responses](/graph/errors).

## Examples

### Example 1: Get the signed-in user's access configuration

The following example shows how to get the signed-in user's access configuration.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "retrieve_flex_cloud_pc_access_configuration_me"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/cloudPCs/8c8a1f00-9a46-4f68-a8be-8713985c4576/retrieveFlexCloudPcAccessConfiguration
```


#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "retrieve_flex_cloud_pc_access_configuration_me",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcFlexAccessConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.cloudPcFlexAccessConfiguration",
  "accessState": "active"
}
```

### Example 2: Get access configuration as an administrator or application

The following example shows how to get access configuration as an administrator or application.

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "retrieve_flex_cloud_pc_access_configuration_admin"
} -->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/8c8a1f00-9a46-4f68-a8be-8713985c4576/retrieveFlexCloudPcAccessConfiguration
```

#### Response
The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "retrieve_flex_cloud_pc_access_configuration_admin",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcFlexAccessConfiguration"
} -->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.cloudPcFlexAccessConfiguration",
  "accessState": "active"
}
```
