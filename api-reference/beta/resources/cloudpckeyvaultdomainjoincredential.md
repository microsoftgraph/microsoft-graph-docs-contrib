---
title: "cloudPcKeyVaultDomainJoinCredential resource type"
description: "Represents an Active Directory domain join credential whose password is stored in a customer-owned Azure Key Vault."
author: "t-bzhan"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 09/17/2026
---

# cloudPcKeyVaultDomainJoinCredential resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Active Directory domain join credential whose password is stored in a customer-owned Azure Key Vault.

Inherits from [cloudPcDomainJoinCredential](../resources/cloudpcdomainjoincredential.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|keyVaultIntentConfiguration|[cloudPcDomainJoinKeyVaultIntentConfiguration](../resources/cloudpcdomainjoinkeyvaultintentconfiguration.md)|The configuration that specifies how the Azure Key Vault secret is used as the Active Directory domain join credential. Set **@odata.type** to `#microsoft.graph.cloudPcDomainJoinKeyVaultPasswordConfiguration` to indicate that the secret contains the password. Required.|
|keyVaultResourceId|String|The full Azure Resource Manager resource ID of the Azure Key Vault that stores the domain join password. Required format: `/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}`. Required.|
|secretName|String|The name of the secret in the Azure Key Vault that stores the domain join password. Required.|
|serviceConnectorResourceId|String|The full Azure Resource Manager resource ID of the Windows 365 service connector that grants Windows 365 access to the Azure Key Vault. Required format when specified: `/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Windows365/serviceConnectors/{serviceConnectorName}`. Optional.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcKeyVaultDomainJoinCredential",
  "baseType": "microsoft.graph.cloudPcDomainJoinCredential"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcKeyVaultDomainJoinCredential",
  "keyVaultIntentConfiguration": { "@odata.type": "microsoft.graph.cloudPcDomainJoinKeyVaultIntentConfiguration" },
  "keyVaultResourceId": "String",
  "secretName": "String",
  "serviceConnectorResourceId": "String"
}
```
