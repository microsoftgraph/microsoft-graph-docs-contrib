---
title: "Get deviceTemplate"
description: "Get the properties and relationships of a deviceTemplate object."
author: "sofia-geislinger"
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
ms.date: 12/31/2024
---

# Get deviceTemplate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of a [deviceTemplate](../resources/devicetemplate.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "devicetemplate-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/devicetemplate-get-permissions.md)]

[!INCLUDE [rbac-devicestemplate-apis](../includes/rbac-for-apis/rbac-devicetemplate-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /directory/templates/deviceTemplates/{id}
```
>**Note:** The `{id}` in the request URL is the value of the **id** property of the **deviceTemplate**.

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [deviceTemplate](../resources/devicetemplate.md) object in the response body.

For more information, see [Microsoft Graph error responses and resource types](/graph/errors).

## Examples

### Request

The following example shows how to get a device template by its **id** with a certificate authority-issued mTLS certificate.

<!-- {
  "blockType": "request",
  "name": "get_devicetemplate"
}
-->
```http
GET https://graph.microsoft.com/beta/directory/templates/deviceTemplates/00f1e7a4-de6d-4070-84df-8aab629c4d1e
```

### Response
The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.deviceTemplate"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft/beta/$metadata#directory/templates/deviceTemplates/$entity",
  "id": "00f1e7a4-de6d-4070-84df-8aab629c4d1e",
  "deletedDateTime": null,
  "mutualTlsOauthConfigurationId": "00001111-aaaa-2222-bbbb-3333cccc4444",
  "mutualTlsOauthConfigurationTenantId": "00001111-aaaa-2222-bbbb-3333cccc4445",
  "deviceAuthority": "Lakeshore Retail",
  "manufacturer": "Tailwind Traders",
  "model": "washer734",
  "operatingSystem": "BootOS"
}
```