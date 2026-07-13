---
title: "externalSapAcConnectionInfo resource type"
description: "Represents connection information for connecting to SAP Access Control (AC) systems from Microsoft Entra Entitlement Management."
author: "vikama-microsoft"
ms.date: 07/13/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# externalSapAcConnectionInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents connection information for connecting to SAP Access Control (AC) systems from Microsoft Entra Entitlement Management. This resource contains the configuration details required to establish a secure connection between an Entitlement Management [accessPackageResource](../resources/accesspackageresource.md)'s **externalOriginResourceConnector** and an SAP AC system, including the target system identity and Azure Key Vault references for credential storage. Used when connectorType in [externalOriginResourceConnector](../resources/externaloriginresourceconnector.md) is `sapAc`.

Inherits from [connectionInfo](../resources/connectioninfo.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationInfo|[microsoft.graph.authenticationInfo](../resources/authenticationinfo.md)|The authentication configuration used to connect to the SAP AC system.|
|keyVaultName|String|The name of the Azure Key Vault that stores the credentials used for authentication.|
|resourceGroup|String|The Azure resource group that contains the Key Vault.|
|subscriptionId|String|The Azure subscription ID that contains the Key Vault.|
|systemId|String|The identifier of the target SAP AC system.|
|url|String|The endpoint that is used by Entitlement Management to communicate with the SAP AC system. Inherited from [connectionInfo](../resources/connectioninfo.md).|
|userIdentifier|String|The user identifier used to connect to the SAP AC system.|

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
