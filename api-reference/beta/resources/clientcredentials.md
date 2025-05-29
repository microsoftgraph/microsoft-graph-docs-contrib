---
title: "clientCredentials resource type"
description: "clientCredentials are one of the pre-requisites for the admins to call the UTCM Application Onboarding API. The clientCredentials will include keyVault and certificateName that have been generated during Key Vault creation.**"
author: "swatya"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: resourcePageType
---

# clientCredentials resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

clientCredentials are one of the pre-requisites for the admins to call the UTCM Application Onboarding API. The clientCredentials will include keyVault and certificateName that have been generated during Key Vault creation.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|certificateName|String|Name of the certificate that is uploaded by the admin in Azure Key Vault|
|keyVaultUri|String|The Key Vault URI generated during Azure Key Vault creation|

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
  "keyVaultUri": "String",
  "certificateName": "String"
}
```

