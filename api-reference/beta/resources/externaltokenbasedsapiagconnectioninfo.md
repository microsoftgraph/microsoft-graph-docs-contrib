---
title: "externalTokenBasedSapIagConnectionInfo resource type"
description: "Represents connection information for token-based authentication to SAP IAG (Identity and Access Governance) systems."
author: "vikama-microsoft"
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# externalTokenBasedSapIagConnectionInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents connection information for token-based authentication to SAP IAG (Identity and Access Governance) systems. This resource contains the configuration details required to establish a secure connection between an Entitlement Management [accessPackageResource](../resources/accesspackageresource.md)'s **externalOriginResourceConnector** with SAP IAG, including token endpoint information and Azure Key Vault references for credential storage. Used when connectorType in [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md)  is `sapIag`.


Inherits from [connectionInfo](../resources/connectioninfo.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessTokenUrl|String|The URL endpoint used to obtain access tokens for authentication with the SAP IAG system.|
|clientId|String|The client identifier used for authentication with the SAP IAG system.|
|keyVaultName|String|The name of the Azure Key Vault that stores the client secret for authentication.|
|resourceGroup|String|The Azure resource group that contains the Key Vault.|
|secretName|String|The name of the secret in Azure Key Vault that contains the client secret.|
|subscriptionId|String|The Azure subscription ID that contains the Key Vault.|
|url|String|The endpoint that is used by Entitlement Management to communicate with the SAP IAG system. Inherited from [connectionInfo](../resources/connectioninfo.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalTokenBasedSapIagConnectionInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalTokenBasedSapIagConnectionInfo",
  "url": "String",
  "accessTokenUrl": "String",
  "clientId": "String",
  "keyVaultName": "String",
  "secretName": "String",
  "subscriptionId": "String",
  "resourceGroup": "String"
}
```

