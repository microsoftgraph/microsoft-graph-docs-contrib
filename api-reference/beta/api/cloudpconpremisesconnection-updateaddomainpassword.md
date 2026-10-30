---
title: "cloudPcOnPremisesConnection: updateAdDomainPassword"
description: "Update the Active Directory domain join credential for a successful Azure network connection."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 04/05/2024
---

# cloudPcOnPremisesConnection: updateAdDomainPassword

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the Active Directory domain join credential for a successful [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md). This API is supported when the **connectionType** of the **cloudPcOnPremisesConnection** object is `hybridAzureADJoin`.

[!INCLUDE [on-premise-rename-note](../../includes/on-premise-rename-note.md)]

[!INCLUDE [national-cloud-support](../../includes/global-us-l4.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpconpremisesconnection_updateaddomainpassword" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpconpremisesconnection-updateaddomainpassword-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/onPremisesConnections/{id}/updateAdDomainPassword
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that you can use with this action.

Going forward, use the **domainJoinCredential** or the deprecated **adDomainPassword** parameter for backward compatibility. If both parameters are provided, **domainJoinCredential** takes precedence. If neither parameter is supplied, the request returns a `400 Bad Request` response code.

|Parameter|Type|Description|
|:---|:---|:---|
|domainJoinCredential|[cloudPcDomainJoinCredential](../resources/cloudpcdomainjoincredential.md)|The Active Directory domain join credential. Set **@odata.type** to `#microsoft.graph.cloudPcPlainTextDomainJoinCredential` to update the username and password directly or to `#microsoft.graph.cloudPcKeyVaultDomainJoinCredential` to retrieve the password from a customer-owned Azure Key Vault. Required unless **adDomainPassword** is provided.|
|adDomainPassword (deprecated)|String|The new password for the service account identified by **adDomainUsername** on the connection. Optional when **domainJoinCredential** is provided; otherwise required. This parameter is deprecated and will be removed on December 31, 2026. Going forward, use the **domainJoinCredential** parameter instead.|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Example 1: Update the password using the deprecated adDomainPassword parameter

The following example shows how to update a password using the deprecated **adDomainPassword** parameter. Going forward use **domainJoinCredential** as shown in the following examples.

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpconpremisesconnection_updateaddomainpassword",
  "sampleKeys": ["07f12770-a225-4957-9127-0d247cf4ffff"]
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/onPremisesConnections/07f12770-a225-4957-9127-0d247cf4ffff/updateAdDomainPassword
Content-Type: application/json

{
  "adDomainPassword": "AdDomainPassword_XXXX"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpconpremisesconnection-updateaddomainpassword-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpconpremisesconnection-updateaddomainpassword-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpconpremisesconnection-updateaddomainpassword-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpconpremisesconnection-updateaddomainpassword-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpconpremisesconnection-updateaddomainpassword-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpconpremisesconnection-updateaddomainpassword-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2: Update the user principal name and password

The following example rotates the domain join credential by providing the user principal name and password using the **domainJoinCredential** parameter.

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "cloudpconpremisesconnection_updateaddomainpassword_plaintext",
  "sampleKeys": ["07f12770-a225-4957-9127-0d247cf4ffff"]
}
-->

```http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/onPremisesConnections/07f12770-a225-4957-9127-0d247cf4ffff/updateAdDomainPassword
Content-Type: application/json

{
  "domainJoinCredential": {
    "@odata.type": "#microsoft.graph.cloudPcPlainTextDomainJoinCredential",
    "domainUserPrincipalName": "dcadmin@contoso.com",
    "domainPassword": "ExamplePassword!42"
  }
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 204 No Content
```

### Example 3: Use a password stored in Azure Key Vault

The following example configures the domain join credential to retrieve its password from an Azure Key Vault secret.

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "cloudpconpremisesconnection_updateaddomainpassword_keyvault",
  "sampleKeys": ["07f12770-a225-4957-9127-0d247cf4ffff"]
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/onPremisesConnections/07f12770-a225-4957-9127-0d247cf4ffff/updateAdDomainPassword
Content-Type: application/json

{
  "domainJoinCredential": {
    "@odata.type": "#microsoft.graph.cloudPcKeyVaultDomainJoinCredential",
    "keyVaultResourceId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/contoso-rg/providers/Microsoft.KeyVault/vaults/contoso-kv",
    "secretName": "ad-domain-join-password",
    "serviceConnectorResourceId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/contoso-rg/providers/Microsoft.Windows365/serviceConnectors/anc-kv-connector",
    "keyVaultIntentConfiguration": {
      "@odata.type": "#microsoft.graph.cloudPcDomainJoinKeyVaultPasswordConfiguration",
      "userIdentity": {
        "@odata.type": "#microsoft.graph.cloudPcDomainJoinPlainTextUserIdentity",
        "domainUserPrincipalName": "dcadmin@contoso.com"
      }
    }
  }
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
