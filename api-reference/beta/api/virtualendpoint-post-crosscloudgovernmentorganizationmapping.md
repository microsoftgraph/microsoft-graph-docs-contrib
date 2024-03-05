---
title: "Create cloudPcCrossCloudGovernmentOrganizationMapping"
description: "Create a new cloudPcCrossCloudGovernmentOrganizationMapping object."
author: "SuyliuMS"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# Create cloudPcCrossCloudGovernmentOrganizationMapping
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [cloudPcCrossCloudGovernmentOrganizationMapping](../resources/cloudpccrosscloudgovernmentorganizationmapping.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualendpoint_post_crosscloudgovernmentorganizationmapping" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-post-crosscloudgovernmentorganizationmapping-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/crossCloudGovernmentOrganizationMapping
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
|X-MS-CloudPC-USGovCloudTenantAADToken|{token}. Required. Represents the Microsoft Entra token of the government cloud tenant.|

## Request body
The request body is an empty JSON string.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcCrossCloudGovernmentOrganizationMapping](../resources/cloudpccrosscloudgovernmentorganizationmapping.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_cloudpccrosscloudgovernmentorganizationmapping_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/crossCloudGovernmentOrganizationMapping
Content-Type: application/json
X-MS-CloudPC-USGovCloudTenantAADToken: {token}

{}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-cloudpccrosscloudgovernmentorganizationmapping-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcCrossCloudGovernmentOrganizationMapping"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcCrossCloudGovernmentOrganizationMapping",
  "id": "7e6e7d5b-8dd5-5078-16cf-d1e488be48a8",
  "organizationIdsInUSGovCloud": [
    "String"
  ]
}
```
