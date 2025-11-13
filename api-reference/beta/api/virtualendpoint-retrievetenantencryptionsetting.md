---
title: "virtualEndpoint: retrieveTenantEncryptionSetting"
description: "Retrieve the encryption setting of the tenant associated with the current authenticated user."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 08/14/2024
---

# virtualEndpoint: retrieveTenantEncryptionSetting

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the encryption setting of the tenant associated with the current authenticated user. This information can help users to determine whether to trigger an encryption change based on the current setting.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualendpoint_retrievetenantencryptionsetting" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-retrievetenantencryptionsetting-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /deviceManagement/virtualEndpoint/retrieveTenantEncryptionSetting
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [cloudPcTenantEncryptionSetting](../resources/cloudpctenantencryptionsetting.md) object in the response body.

## Examples

### Request

The following example shows the request.

```http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/retrieveTenantEncryptionSetting
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcTenantEncryptionSetting"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "#microsoft.graph.cloudPcTenantEncryptionSetting",
  "tenantDiskEncryptionType": "PlatformManagedKey"
}
```
