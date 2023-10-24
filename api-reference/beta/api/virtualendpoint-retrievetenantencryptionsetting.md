---
title: "virtualEndpoint: retrieveTenantEncryptionSetting"
description: "Retrieve the encryption setting of the tenant associated with authenticated IT admin."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# virtualEndpoint: retrieveTenantEncryptionSetting

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the encryption setting of the tenant associated with authenticated IT admin, helping customers to decide whether need to trigger encryption change based on the current tenant setting.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All, CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account) | Not supported.|
|Application| Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/retrieveTenantEncryptionSetting
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [cloudPcTenantEncryptionSetting](../resources/cloudpctenantencryptionsetting.md) objects in the response body.

## Examples

### Request

The following is an example of the request.

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/retrieveTenantEncryptionSetting
```

### Response

The following is an example of the response.

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
