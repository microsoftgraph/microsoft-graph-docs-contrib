---
title: "clientCredentialAuthenticationInfo resource type"
description: "Represents client credential authentication information used to connect to an external system from Microsoft Entra Entitlement Management."
author: "vikama-microsoft"
ms.date: 11/06/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# clientCredentialAuthenticationInfo resource type

Namespace: microsoft.graph

Represents client credential (OAuth 2.0 client credentials) authentication information used by Microsoft Entra Entitlement Management to connect to an external system, including the client identifier, the Azure Key Vault secret reference, and the token endpoint.

Inherits from [authenticationInfo](../resources/authenticationinfo.md). Use this concrete type for the **authenticationInfo** property of [externalSapAcConnectionInfo](../resources/externalsapacconnectioninfo.md). The **secretName** property identifies a stored secret; it doesn't contain the secret value.

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessTokenUrl|String|The URL endpoint used to obtain access tokens for authentication with the external system. Nullable.|
|clientId|String|The client identifier used for authentication with the external system. Nullable.|
|secretName|String|The name of the secret in Azure Key Vault that contains the client secret. Nullable.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.clientCredentialAuthenticationInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.clientCredentialAuthenticationInfo",
  "clientId": "String",
  "secretName": "String",
  "accessTokenUrl": "String"
}
```
