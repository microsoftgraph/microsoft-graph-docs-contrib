---
title: "Get deviceTemplate"
description: "Get the properties and relationships of a deviceTemplate object."
author: "sofia-geislinger"
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
ms.date: 11/24/2024
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

This method supports the `$select` and `$filter` [OData query parameters](/graph/query-parameters) to help customize the response. The following table lists examples.

|Parameter|Example|
|:------|:-----|
|$filter|`/directory/templates/deviceTemplates/?$filter=id eq '{guid}'`|
|$select|`/directory/templates/deviceTemplates/?$select=id,operatingSystem'`|

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

### Example 1: Get a device template by ID with a certificate authority-issued mTLS certificate

The following example shows how to get a device template by its **id** with a certificate authority-issued mTLS certificate.

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_devicetemplate"
}
-->
```http
GET https://graph.microsoft.com/beta/directory/templates/deviceTemplates/00f1e7a4-de6d-4070-84df-8aab629c4d1e
```

#### Response
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
  "mutualTlsOauthConfigurationId": "3cdc013f-7db9-4139-819f-3fd0a3c99346",
  "mutualTlsOauthConfigurationTenantId": "f35bf5fa-7977-447c-a1af-4c457bad7d7e",
  "deviceAuthority": "Acme 1234",
  "manufacturer": "Acme",
  "model": "washer734",
  "operatingSystem": "BootOS"
}
```

### Example 2: Get a device and return only its ID and the operatingSystem property

The following example shows how to use the `$select` query parameter to get the **id** and **operatingSystem** properties of a device.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_devicetemplate_using_select"
}
-->
```http
GET https://graph.microsoft.com/beta/directory/templates/deviceTemplates?$select=id,operatingSystem
```

#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.deviceTemplate"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/templates/deviceTemplates(id,operatingSystem)",
  "value": [
    {
      "id": "00f1e7a4-de6d-4070-84df-8aab629c4d1e",
      "operatingSystem": "BootOS"
    },
    {
      "id": "03118739-2050-44cd-98ed-ed28b147af70",
      "operatingSystem": "BootOS"
    },
    {
      "id": "037a01c6-2605-4eda-b746-9e41ecca1623",
      "operatingSystem": "Linux"
    }
  ]
}
```

### Example 3: Get a device that uses a self-signed certificate authority

The following example shows how to get a device that uses a self-signed certificate authority.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_devicetemplate_with_self_signed_certificate_authority"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/templates/deviceTemplates/2d62b12a-0163-457d-9796-9602e9807e1
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.deviceTemplate"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json
Location: "https://graph.microsoft.com/beta/directory/templates/deviceTemplates/2d62b12a-0163-457d-9796-9602e9807e1"

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/templates/deviceTemplates/$entity",
  "id": "c0ff9329-3596-4ece-8aa9-3dd23a925356",
  "mutualTlsOauthConfigurationId": "eec5ba11-2fc0-4113-83a2-ed986ed13cdb",
  "mutualTlsOauthConfigurationTenantId": "39cdb54e-21ca-4d66-bacd-f9a5b945b322",
  "deletedDateTime": null,
  "deviceAuthority": "ADT",
  "manufacturer": "Acme",
  "model": "DeepFreezerModelAB",
  "operatingSystem": "WindowsIoT"
}
```
