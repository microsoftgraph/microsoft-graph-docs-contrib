---
title: "cloudPC: retrieveFlexCloudPcConfigurationDetail"
description: "Get Windows 365 Flex (formerly Windows 365 Frontline) configuration details for a Cloud PC, including license availability."
author: "chikaishiro"
ms.date: 11/11/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: retrieveFlexCloudPcConfigurationDetail

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get Windows 365 Flex (formerly Windows 365 Frontline) configuration details for a [Cloud PC](../resources/cloudpc.md), including license availability. The [cloudPcFlexConfigurationDetail](../resources/cloudpcflexconfigurationdetail.md) response indicates whether a Flex license is available, based on the service plan and concurrent-access group for the Cloud PC.

This function retrieves license availability, not the power state of the Cloud PC. To retrieve its live access state, use [retrieveFlexCloudPcAccessConfiguration](../api/cloudpc-retrieveflexcloudpcaccessconfiguration.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudpc-retrieveflexcloudpcconfigurationdetail-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudpc-retrieveflexcloudpcconfigurationdetail-permissions.md)]

> [!NOTE]
> For delegated access, the signed-in user must also have the `Microsoft.CloudPC/CloudPCs/Read` permission through Windows 365 role-based access control (RBAC). For application access, the application must be authorized for the Cloud PC tenant.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/virtualEndpoint/cloudPCs/{cloudPCId}/retrieveFlexCloudPcConfigurationDetail
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

If successful, this function returns a `200 OK` response code and a [cloudPcFlexConfigurationDetail](../resources/cloudpcflexconfigurationdetail.md) in the response body.

This function can also return the following errors.

|Status code|Condition|
|:---|:---|
|`400 Bad Request`|The Cloud PC identifier is malformed or the Cloud PC isn't supported by the Flex configuration-detail flow, including non-Flex Cloud PCs.|
|`500 Internal Server Error`|The service can't resolve the Cloud PC or retrieve its Flex license availability from a downstream service.|

For information about other errors, see [Microsoft Graph error responses](/graph/errors).

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "retrieve_flex_cloud_pc_configuration_detail"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/8c8a1f00-9a46-4f68-a8be-8713985c4576/retrieveFlexCloudPcConfigurationDetail
```

### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "retrieve_flex_cloud_pc_configuration_detail",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcFlexConfigurationDetail"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.cloudPcFlexConfigurationDetail",
  "flexCloudPcAvailability": "available"
}
```
