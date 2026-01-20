---
title: "clientCredentials resource type"
description: "Represents the information and properties of a clientCredentials object that is one of the prerequisites for administrators to call the unified tenant configuration management application onboarding API."
author: "swatya"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: resourcePageType
---

# clientCredentials resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the information and properties of a [clientCredentials](../resources/clientcredentials.md) object that is one of the prerequisites for administrators to call the unified tenant configuration management application onboarding API. The **clientCredentials** includes the key-vault URI and certificate name that are generated during the creation of the Azure Key Vault.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|certificateName|String|Name of the certificate that is uploaded by the admin in the Azure Key Vault.|
|keyVaultUri|String|The key-vault URI generated during the creation of the Azure Key Vault.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.clientCredentials"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.clientCredentials",
  "certificateName": "String",
  "keyVaultUri": "String"
}
```

