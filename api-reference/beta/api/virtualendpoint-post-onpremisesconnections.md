---
title: "Create cloudPcOnPremisesConnection"
description: "Create a new cloudPcOnPremisesConnection object for provisioning Cloud PCs."
author: "Emma0727"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 04/05/2024
---

# Create cloudPcOnPremisesConnection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object for provisioning Cloud PCs.

[!INCLUDE [on-premise-rename-note](../../includes/on-premise-rename-note.md)]

[!INCLUDE [national-cloud-support](../../includes/global-us-l4.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualendpoint_post_onpremisesconnections" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-post-onpremisesconnections-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
POST /deviceManagement/virtualEndpoint/onPremisesConnections
```

## Request headers

| Name          | Description                |
| :------------ | :------------------------  |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.

The following table lists the properties that you can supply when you create the object.

For a hybrid Microsoft Entra join connection, provide **adDomainName** and either **domainJoinCredential** or the deprecated **adDomainUsername** and **adDomainPassword** properties. Domain join credentials aren't required for a Microsoft Entra join connection.

When you specify **domainJoinCredential**, set its **@odata.type** to `#microsoft.graph.cloudPcPlainTextDomainJoinCredential` or `#microsoft.graph.cloudPcKeyVaultDomainJoinCredential`. If **domainJoinCredential** and the deprecated credential properties are both supplied, **domainJoinCredential** takes precedence.

|Property|Type|Description|
|:---|:---|:---|
|adDomainName|String|The fully qualified domain name (FQDN) of the Active Directory domain you want to join. Required for a hybrid Microsoft Entra join connection.|
|connectionType|[cloudPcOnPremisesConnectionType](../resources/cloudpconpremisesconnection.md#cloudpconpremisesconnectiontype-values)|Specifies the method by which a provisioned Cloud PC is joined to Microsoft Entra. The `azureADJoin` option indicates the absence of an on-premises Active Directory (AD) in the current tenant that results in the Cloud PC device only joining to Microsoft Entra. The `hybridAzureADJoin` option indicates the presence of an on-premises AD in the current tenant and that the Cloud PC joins both the on-premises AD and Microsoft Entra. The selected option also determines the types of users who can be assigned and can sign into a Cloud PC. The `azureADJoin` option allows both cloud-only and hybrid users to be assigned and sign in, whereas `hybridAzureADJoin` is restricted to hybrid users only. The default value is `hybridAzureADJoin`. The possible values are: `hybridAzureADJoin`, `azureADJoin`, `unknownFutureValue`.|
|displayName|String|The display name for the Azure network connection. Required.|
|domainJoinCredential|[cloudPcDomainJoinCredential](../resources/cloudpcdomainjoincredential.md)|The Active Directory domain join credential. Required for a hybrid Microsoft Entra join connection unless the deprecated **adDomainUsername** and **adDomainPassword** properties are supplied.|
|organizationalUnit|String|The organizational unit (OU) in which the computer account is created. If omitted, the default computer object container in the Active Directory domain is used. Optional.|
|resourceGroupId|String|The ID of the target resource group. Required format: `/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}`. Required.|
|subnetId|String|The ID of the target subnet. Required format: `/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}`. Required.|
|subscriptionId|String|The ID of the target Azure subscription associated with your tenant. Required.|
|virtualNetworkId|String|The ID of the target virtual network. Required format: `/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}`. Required.|
|adDomainPassword (deprecated)|String|The password associated with **adDomainUsername**. Required with **adDomainUsername** for a hybrid Microsoft Entra join connection when **domainJoinCredential** isn't provided. This property is deprecated and will be removed on December 31, 2026. Going forward use the **domainJoinCredential** property instead.|
|adDomainUsername (deprecated)|String|The UPN of an Active Directory account that has permissions to create computer objects in Active Directory, for example, `dcadmin@contoso001.com`. Required with **adDomainPassword** for a hybrid Microsoft Entra join connection when **domainJoinCredential** isn't provided. This property is deprecated and will be removed on December 31, 2026. Going forward use the **domainJoinCredential** property instead.|
|type (deprecated)|[cloudPcOnPremisesConnectionType](../resources/cloudpconpremisesconnection.md#cloudpconpremisesconnectiontype-values)|Specifies how the provisioned Cloud PC joins to Microsoft Entra ID. The default value is `hybridAzureADJoin`. The possible values are: `hybridAzureADJoin`, `azureADJoin`, `unknownFutureValue`. The **type** property is deprecated and stopped returning data on January 31, 2024. Use **connectionType** instead.|

## Response

If successful, this method returns a `201 Created` response code and a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object in the response body.

## Examples

### Example 1: Create a connection using the adDomainPassword and adDomainUsername properties

For compatibility reasons, the following example shows how to create a connection using the deprecated properties. Going forward use **domainJoinCredential** as shown in the following examples.

#### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_cloudpconpremisesconnection_from_cloudpconpremisesconnection"
}
-->

```http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/onPremisesConnections
Content-Type: application/json

{
  "displayName": "test-canary-02",
  "connectionType": "hybridAzureADJoin",
  "type": "hybridAzureADJoin",
  "subscriptionId": "0ac520ee-14c0-480f-b6c9-0a90c585ffff",
  "adDomainName": "contoso001.com",
  "adDomainPassword": "ExamplePassword!42",
  "adDomainUsername": "dcadmin@contoso001.com",
  "organizationalUnit": "OU=Domain Controllers, DC=contoso001, DC=com",
  "resourceGroupId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG",
  "virtualNetworkId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET",
  "subnetId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET/subnets/canary01-Subnet"
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcOnPremisesConnection"
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnection",
  "id": "ac2ad805-167e-49ee-9bef-196c4ce7ffff",
  "managedBy": "windows365",
  "displayName": "test-canary-02",
  "connectionType": "hybridAzureADJoin",
  "type": "hybridAzureADJoin",
  "subscriptionId": "0ac520ee-14c0-480f-b6c9-0a90c585ffff",
  "subscriptionName": "CPC customer 001 test subscription",
  "adDomainName": "contoso001.com",
  "adDomainUsername": "dcadmin@contoso001.com",
  "organizationalUnit": "OU=Domain Controllers, DC=contoso001, DC=com",
  "resourceGroupId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG",
  "virtualNetworkId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET",
  "subnetId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET/subnets/canary01-Subnet",
  "healthCheckStatus": "pending"
}
```

### Example 2: Create a connection with a password stored in Azure Key Vault

The following example provides the domain join user principal name directly and references an Azure Key Vault secret for the password.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_cloudpconpremisesconnection_keyvault"
}
-->

```http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/onPremisesConnections
Content-Type: application/json

{
  "displayName": "test-canary-02",
  "connectionType": "hybridAzureADJoin",
  "subscriptionId": "0ac520ee-14c0-480f-b6c9-0a90c585ad47",
  "adDomainName": "contoso001.com",
  "organizationalUnit": "OU=Domain Controllers, DC=contoso001, DC=com",
  "resourceGroupId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG",
  "virtualNetworkId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET",
  "subnetId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET/subnets/canary01-Subnet",
  "domainJoinCredential": {
    "@odata.type": "#microsoft.graph.cloudPcKeyVaultDomainJoinCredential",
    "keyVaultResourceId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/contoso-rg/providers/Microsoft.KeyVault/vaults/contoso-kv",
    "secretName": "ad-domain-join-password",
    "serviceConnectorResourceId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/contoso-rg/providers/Microsoft.Windows365/serviceConnectors/anc-kv-connector",
    "keyVaultIntentConfiguration": {
      "@odata.type": "#microsoft.graph.cloudPcDomainJoinKeyVaultPasswordConfiguration",
      "userIdentity": {
        "@odata.type": "#microsoft.graph.cloudPcDomainJoinPlainTextUserIdentity",
        "domainUserPrincipalName": "dcadmin@contoso001.com"
      }
    }
  }
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcOnPremisesConnection"
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnection",
  "id": "ac2ad805-167e-49ee-9bef-196c4ce7ffff",
  "managedBy": "windows365",
  "displayName": "test-canary-02",
  "connectionType": "hybridAzureADJoin",
  "subscriptionId": "0ac520ee-14c0-480f-b6c9-0a90c585ad47",
  "subscriptionName": "CPC customer 001 test subscription",
  "adDomainName": "contoso001.com",
  "adDomainUsername": "dcadmin@contoso001.com",
  "domainJoinCredential": {
    "@odata.type": "#microsoft.graph.cloudPcKeyVaultDomainJoinCredential",
    "keyVaultResourceId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/contoso-rg/providers/Microsoft.KeyVault/vaults/contoso-kv",
    "secretName": "ad-domain-join-password",
    "serviceConnectorResourceId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/contoso-rg/providers/Microsoft.Windows365/serviceConnectors/anc-kv-connector",
    "keyVaultIntentConfiguration": {
      "@odata.type": "#microsoft.graph.cloudPcDomainJoinKeyVaultPasswordConfiguration",
      "userIdentity": {
        "@odata.type": "#microsoft.graph.cloudPcDomainJoinPlainTextUserIdentity",
        "domainUserPrincipalName": "dcadmin@contoso001.com"
      }
    }
  },
  "organizationalUnit": "OU=Domain Controllers, DC=contoso001, DC=com",
  "resourceGroupId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG",
  "virtualNetworkId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET",
  "subnetId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET/subnets/canary01-Subnet",
  "healthCheckStatus": "pending"
}
```

### Example 3: Create a connection with a plain-text credential

The following example provides the domain join user principal name and password through **domainJoinCredential**, without the deprecated credential properties.

#### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_cloudpconpremisesconnection_plaintext"
}
-->

```http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/onPremisesConnections
Content-Type: application/json

{
  "displayName": "Contoso plain-text connection",
  "connectionType": "hybridAzureADJoin",
  "subscriptionId": "0ac520ee-14c0-480f-b6c9-0a90c585ad47",
  "adDomainName": "contoso001.com",
  "resourceGroupId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG",
  "virtualNetworkId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET",
  "subnetId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET/subnets/canary01-Subnet",
  "domainJoinCredential": {
    "@odata.type": "#microsoft.graph.cloudPcPlainTextDomainJoinCredential",
    "domainUserPrincipalName": "dcadmin@contoso001.com",
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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnection",
  "id": "5ab42e01-828b-4a80-8a5f-e80bd4b78534",
  "managedBy": "windows365",
  "displayName": "Contoso plain-text connection",
  "connectionType": "hybridAzureADJoin",
  "subscriptionId": "0ac520ee-14c0-480f-b6c9-0a90c585ad47",
  "adDomainName": "contoso001.com",
  "adDomainUsername": "dcadmin@contoso001.com",
  "domainJoinCredential": {
    "@odata.type": "#microsoft.graph.cloudPcPlainTextDomainJoinCredential",
    "domainUserPrincipalName": "dcadmin@contoso001.com"
  },
  "resourceGroupId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG",
  "virtualNetworkId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET",
  "subnetId": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET/subnets/canary01-Subnet",
  "healthCheckStatus": "pending"
}
```
