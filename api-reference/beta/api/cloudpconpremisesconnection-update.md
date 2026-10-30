---
title: "Update cloudPcOnPremisesConnection"
description: "Update the properties of a cloudPcOnPremisesConnection object."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 04/05/2024
---

# Update cloudPcOnPremisesConnection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.

[!INCLUDE [on-premise-rename-note](../../includes/on-premise-rename-note.md)]

[!INCLUDE [national-cloud-support](../../includes/global-us-l4.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpconpremisesconnection_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpconpremisesconnection-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
PATCH /deviceManagement/virtualEndpoint/onPremisesConnections/{id}
```

## Request headers

| Name          | Description                |
| :------------ | :------------------------  |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.

The following table lists the properties that you can update. Supply only the properties that you want to change; omitted properties retain their current values.

When you specify **domainJoinCredential**, set its **@odata.type** to `#microsoft.graph.cloudPcPlainTextDomainJoinCredential` or `#microsoft.graph.cloudPcKeyVaultDomainJoinCredential`. If **domainJoinCredential** and **adDomainPassword** are both supplied, **domainJoinCredential** takes precedence.

To rotate the domain join credential on a successful connection, use [updateAdDomainPassword](../api/cloudpconpremisesconnection-updateaddomainpassword.md).

|Property|Type|Description|
|:---|:---|:---|
|adDomainName|String|The fully qualified domain name (FQDN) of the Active Directory domain you want to join.|
|connectionType|[cloudPcOnPremisesConnectionType](../resources/cloudpconpremisesconnection.md#cloudpconpremisesconnectiontype-values)|Specifies the method by which a provisioned Cloud PC is joined to Microsoft Entra. The `azureADJoin` option indicates the absence of an on-premises Active Directory (AD) in the current tenant that results in the Cloud PC device only joining to Microsoft Entra. The `hybridAzureADJoin` option indicates the presence of an on-premises AD in the current tenant and that the Cloud PC joins both the on-premises AD and Microsoft Entra. The selected option also determines the types of users who can be assigned and can sign into a Cloud PC. The `azureADJoin` option allows both cloud-only and hybrid users to be assigned and sign in, whereas `hybridAzureADJoin` is restricted to hybrid users only. The default value is `hybridAzureADJoin`. The possible values are: `hybridAzureADJoin`, `azureADJoin`, `unknownFutureValue`.|
|displayName|String|The display name for the Azure network connection.|
|domainJoinCredential|[cloudPcDomainJoinCredential](../resources/cloudpcdomainjoincredential.md)|The Active Directory domain join credential. Optional. If provided, include all required properties of the selected credential type.|
|organizationalUnit|String|The organizational unit (OU) in which the computer account is created.|
|resourceGroupId|String|The ID of the target resource group. Required format: `/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}`.|
|subnetId|String|The ID of the target subnet. Required format: `/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}`.|
|subscriptionId|String|The ID of the target Azure subscription that’s associated with your tenant.|
|virtualNetworkId|String|The ID of the target virtual network. Required format: `/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}`.|
|adDomainPassword (deprecated)|String|The password associated with **adDomainUsername**. This property is deprecated and will be removed on December 31, 2026. Going forward use the **domainJoinCredential** property instead.|
|adDomainUsername (deprecated)|String|The UPN of an Active Directory account that has permissions to create computer objects in Active Directory, for example, `dcadmin@contoso.com`. This property is deprecated and will be removed on December 31, 2026. Going forward use the **domainJoinCredential/domainUserPrincipalName** property instead.|
|type (deprecated)|[cloudPcOnPremisesConnectionType](../resources/cloudpconpremisesconnection.md#cloudpconpremisesconnectiontype-values)|Specifies how the provisioned Cloud PC joins to Microsoft Entra ID. The default value is `hybridAzureADJoin`. The possible values are: `hybridAzureADJoin`, `azureADJoin`, `unknownFutureValue`. The **type** property is deprecated and stopped returning data on January 31, 2024. Use **connectionType** instead.|

## Response

If successful, this method returns a `200 OK` response code and an updated [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object in the response body.

## Examples

### Example 1: Update connection properties using adDomainPassword and adDomainUsername

The following example shows how to update connection properties using **adDomainPassword** and **adDomainUsername**. For credential changes going forward, use **domainJoinCredential** as shown in the following examples.

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_onpremisesconnections"
}
-->

``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/onPremisesConnections/{id}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnection",
  "displayName": "Display Name value",
  "subscriptionId": "0ac520ee-14c0-480f-b6c9-0a90c585ffff",
  "subscriptionName": "Subscription Name value",
  "adDomainName": "Active Directory Domain Name value",
  "adDomainUsername": "Active Directory Domain User Name value",
  "organizationalUnit": "Organization Unit value",
  "resourceGroupId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ffff/resourceGroups/ExampleRG",
  "virtualNetworkId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet",
  "subnetId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ffff/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet/subnets/default"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-onpremisesconnections-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-onpremisesconnections-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-onpremisesconnections-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-onpremisesconnections-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-onpremisesconnections-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-onpremisesconnections-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-onpremisesconnections-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcOnPremisesConnection"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnection",
  "id": "9ec90ff8-fd63-4fb9-ab5a-aa4fdcc4ffff",
  "managedBy": "windows365",
  "type": "hybridAzureADJoin",
  "connectionType": "hybridAzureADJoin",
  "displayName": "Display Name value",
  "subscriptionId": "0ac520ee-14c0-480f-b6c9-0a90c585ffff",
  "subscriptionName": "Subscription Name value",
  "adDomainName": "Active Directory Domain Name value",
  "adDomainUsername": "Active Directory Domain User Name value",
  "organizationalUnit": "Organization Unit value",
  "resourceGroupId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ffff/resourceGroups/ExampleRG",
  "virtualNetworkId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet",
  "subnetId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ffff/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet/subnets/default",
  "healthCheckStatus": "running",
  "virtualNetworkLocation": "westus2"
}
```

### Example 2: Use a password stored in Azure Key Vault

The following example shows how to update the domain join credential to reference an Azure Key Vault secret.

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_onpremisesconnections_keyvault"
}
-->

``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/onPremisesConnections/9ec90ff8-fd63-4fb9-ab5a-aa4fdcc4ffff
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

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcOnPremisesConnection"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnection",
  "id": "9ec90ff8-fd63-4fb9-ab5a-aa4fdcc4ffff",
  "managedBy": "windows365",
  "connectionType": "hybridAzureADJoin",
  "displayName": "Contoso Azure network connection",
  "subscriptionId": "0ac520ee-14c0-480f-b6c9-0a90c585ad47",
  "subscriptionName": "Contoso subscription",
  "adDomainName": "contoso.com",
  "adDomainUsername": "dcadmin@contoso.com",
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
  },
  "organizationalUnit": "OU=Cloud PCs,DC=contoso,DC=com",
  "resourceGroupId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/ExampleRG",
  "virtualNetworkId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet",
  "subnetId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet/subnets/default",
  "healthCheckStatus": "running",
  "virtualNetworkLocation": "westus2"
}
```

### Example 3: Update a plain-text credential

The following example provides the domain join user principal name and password through **domainJoinCredential**.

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_onpremisesconnections_plaintext"
}
-->

```http
PATCH https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/onPremisesConnections/9ec90ff8-fd63-4fb9-ab5a-aa4fdcc4ffff
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

The following example shows the response. The **domainPassword** property isn't returned.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcOnPremisesConnection"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnection",
  "id": "9ec90ff8-fd63-4fb9-ab5a-aa4fdcc4ffff",
  "displayName": "Contoso Azure network connection",
  "connectionType": "hybridAzureADJoin",
  "adDomainName": "contoso.com",
  "adDomainUsername": "dcadmin@contoso.com",
  "domainJoinCredential": {
    "@odata.type": "#microsoft.graph.cloudPcPlainTextDomainJoinCredential",
    "domainUserPrincipalName": "dcadmin@contoso.com"
  },
  "healthCheckStatus": "running"
}
```
