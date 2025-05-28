---
title: "configurationApplication resource type"
description: "The configurationApplication is meant to ensures that UTCM gets to read and download application Certificate from the Customer Key Vault which will help UTCM during the background job flow to get access token for the service principal."
author: "swatyario"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: resourcePageType
---

# configurationApplication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The configurationApplication is meant to ensures that UTCM gets to read and download application Certificate from the Customer Key Vault which will help UTCM during the background job flow to get access token for the service principal. The configurationApplicaton will help UTCM to:
1.	Read certificate using Key Vault URI and Certificate name
2.	Use that Certificate to get token from MS Entra for Exchange and other workload scopes depending on the resources the admin want to setup monitor on or take snapshot of.
3.	Ensure that the Certificate from Key Vault is associated with the right application in Azure.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/configurationmanagement-list-configurationapplications.md)|[configurationApplication](../resources/configurationapplication.md) collection|Get a list of the configurationApplication objects and their properties.|
|[Create](../api/configurationmanagement-post-configurationapplications.md)|[configurationApplication](../resources/configurationapplication.md)|Create a new configurationApplication object.|
|[Get](../api/configurationapplication-get.md)|[configurationApplication](../resources/configurationapplication.md)|Read the properties and relationships of a configurationApplication object.|
|[Update](../api/configurationapplication-update.md)|[configurationApplication](../resources/configurationapplication.md)|Update the properties of a configurationApplication object.|
|[Delete](../api/configurationmanagement-delete-configurationapplications.md)|None|Delete a configurationApplication object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|The app ID is the app ID of the application created in Azure portal Required.|
|displayName|String|User friendly name given by the user while creating a configurationApplication. Required.|
|description|String|User friendly description of the configurationApplication. Optional.|
|clientCredentials|[clientCredentials](../resources/clientcredentials.md)| clientCredentials will include keyVaultURI & certificateName that the user must have obtained while creating a Key Vault. Required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.configurationApplication",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationApplication",
  "id": "String (identifier)",
  "tenantId": "String",
  "appId": "String",
  "displayName": "String",
  "description": "String",
  "clientCredentials": {
    "@odata.type": "microsoft.graph.clientCredentials"
    },
}
```

