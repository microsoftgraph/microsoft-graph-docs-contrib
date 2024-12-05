---
title: "List deviceTemplates"
description: "List all device templates."
author: "sofia-geislinger"
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
ms.date: 11/24/2024
---

# List deviceTemplates

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of devicesTemplates registered in the directory.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "template-list-devicetemplates-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/template-list-devicetemplates-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /directory/templates/deviceTemplates
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [deviceTemplate](../resources/devicetemplate.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_devicetemplate"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/templates/deviceTemplates
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.deviceTemplate"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/templates/deviceTemplates",
  "value": [
    {
      "id": "16f1d02a-af59-4ca7-b2ea-494a262353b9",
      "mutualTlsOauthConfigurationId": "471995a2-9504-4a2d-ba1e-017c48da1d19",
      "mutualTlsOauthConfigurationTenantId": "5142e292-4586-4888-856a-a0661219fdab",
      "deviceAuthority": "IoT Device Authority",
      "manufacturer": "IoT Manufacturer",
      "model": "IoT Device K1",
      "operatingSystem": "WindowsIoT"
    },
    {
      "id": "3a0698d9-fd85-4b9e-9655-e26d19013459",
      "mutualTlsOauthConfigurationId": "471995a2-9504-4a2d-ba1e-017c48da1d19",
      "mutualTlsOauthConfigurationTenantId": "5142e292-4586-4888-856a-a0661219fdab",
      "deviceAuthority": "IoT Test for owner",
      "manufacturer": "IoT manufacturer",
      "model": "IoT Devices",
      "operatingSystem": null
    }
  ]
}
```

