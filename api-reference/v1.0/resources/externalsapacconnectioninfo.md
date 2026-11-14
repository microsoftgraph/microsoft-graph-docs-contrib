---
title: "externalSapAcConnectionInfo resource type"
description: "Represents connection information for connecting to SAP Access Control (AC) systems from Microsoft Entra Entitlement Management."
author: "vikama-microsoft"
ms.date: 11/06/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# externalSapAcConnectionInfo resource type

Namespace: microsoft.graph

Represents connection information for connecting to SAP Access Control (AC) systems from Microsoft Entra Entitlement Management. This resource contains the configuration details required to establish a secure connection between an Entitlement Management [accessPackageResource](../resources/accesspackageresource.md)'s **externalOriginResourceConnector** and an SAP AC system, including the target system identity and Azure Key Vault references for credential storage. The **connectionInfo** property of an [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md) uses this type when **connectorType** is `sapAc`.

Inherits from [connectionInfo](../resources/connectioninfo.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationInfo|[authenticationInfo](../resources/authenticationinfo.md)|The authentication configuration used to connect to the SAP AC system. Use a concrete derived type, such as [clientCredentialAuthenticationInfo](../resources/clientcredentialauthenticationinfo.md). Not nullable.|
|keyVaultName|String|The name of the Azure Key Vault that stores the credentials used for authentication. Nullable.|
|resourceGroup|String|The Azure resource group that contains the Key Vault. Nullable.|
|subscriptionId|String|The Azure subscription ID that contains the Key Vault. Nullable.|
|systemId|String|The identifier of the target SAP AC system. Nullable.|
|url|String|The endpoint that is used by Entitlement Management to communicate with the SAP AC system. Inherited from [connectionInfo](../resources/connectioninfo.md). Nullable.|
|userIdentifier|String|The user identifier used to connect to the SAP AC system. Nullable.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalSapAcConnectionInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalSapAcConnectionInfo",
  "url": "String",
  "subscriptionId": "String",
  "resourceGroup": "String",
  "keyVaultName": "String",
  "systemId": "String",
  "userIdentifier": "String",
  "authenticationInfo": {
    "@odata.type": "microsoft.graph.authenticationInfo"
  }
}
```
