---
title: "Create configurationApplication"
description: "Create a new configurationApplication object."
author: "swatyario"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: apiPageType
---

# Create configurationApplication

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [configurationApplication](../resources/configurationapplication.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "configurationmanagement-post-configurationapplications-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/configurationmanagement-post-configurationapplications-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/configurationManagement/configurationApplications
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [configurationApplication](../resources/configurationapplication.md) object.

You can specify the following properties when you create a configurationApplication.

|Property|Type|Description|
|:---|:---|:---|
|appId|String|The app ID of the application created in the Azure portal. Required.|
|clientCredentials|[clientCredentials](../resources/clientcredentials.md)| Includes the **keyVaultURI** and **certificateName** properties that the user must have obtained during the creation of the key vault. Required.|
|description|String|User friendly description of the **configurationApplication**. Optional.|
|displayName|String|User friendly name given by the user during the creation the **configurationApplication**. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [configurationApplication](../resources/configurationapplication.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_configurationapplication_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/configurationManagement/configurationApplications
Content-Type: application/json

{
  "appId": "ac6dea86-c6a8-467f-90c4-928419f73f79",
  "displayName": "Contoso Test App",
  "description": "Contoso Test App description",
  "clientCredentials": {
    "keyVaultUri": "https://TestKeyVault.vault.azure.net/",
    "certificateName": "Contoso Test Cert"
  }
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.configurationApplication"

-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "f6db8379-6071-6f8a-e313-a97b31f4f6b5",
  "tenantId": "c6df07c4-c1c8-4485-9043-ca1dff83a25f",
  "appId": "ac6dea86-c6a8-467f-90c4-928419f73f79",
  "displayName": "Contoso Test App",
  "description": "Contoso Test App description",
  "clientCredentials": {
    "keyVaultUri": "https://TestKeyVault.vault.azure.net/",
    "certificateName": "Contoso Test Cert"
  }
}
```
