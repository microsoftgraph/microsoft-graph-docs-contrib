---
title: "cloudPcCloudApp: publish"
description: "Publish a cloudPcCloudApp object to make it available to end users through their portal, such as the Windows App."
author: "niniliu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 06/12/2025
---

# cloudPcCloudApp: publish

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Publish a [cloudPcCloudApp](../resources/cloudpccloudapp.md) object to make it available to end users through their portal, such as the Windows App. 

> [!NOTE]
> An admin can publish up to 500 cloud apps under a single provisioning policy

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpccloudapp_publish" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpccloudapp-publish-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /deviceManagement/virtualEndpoint/cloudApps/publish
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type | application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameter that you can use with this action.

|Property|Type|Description|
|:---|:---|:---|
|cloudAppIds|String collection|The selected app ID list to be published. The maximum number of apps an admin can publish under a single provisioning policy is 500.|

## Response

If successful, this method returns a `202 Accepted` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "publish_cloudpccloudapp"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudApps/publish
Content-Type: application/json

{
   "cloudAppIds": ["30d0e128-de93-41dc-89ec-33d84bb662a0", "40d0e128-de93-41dc-89ec-33d84bb662a0"]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/publish-cloudpccloudapp-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/publish-cloudpccloudapp-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/publish-cloudpccloudapp-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/publish-cloudpccloudapp-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/publish-cloudpccloudapp-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/publish-cloudpccloudapp-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
```
