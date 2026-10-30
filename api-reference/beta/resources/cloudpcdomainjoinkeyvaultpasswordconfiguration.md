---
title: "cloudPcDomainJoinKeyVaultPasswordConfiguration resource type"
description: "Represents a domain join configuration in which an Azure Key Vault secret contains the password."
author: "t-bzhan"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 09/17/2026
---

# cloudPcDomainJoinKeyVaultPasswordConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a domain join configuration in which an Azure Key Vault secret contains the password.

Use this type for the **keyVaultIntentConfiguration** property of [cloudPcKeyVaultDomainJoinCredential](../resources/cloudpckeyvaultdomainjoincredential.md). The **userIdentity** property identifies the Active Directory user associated with the password.

Inherits from [cloudPcDomainJoinKeyVaultIntentConfiguration](../resources/cloudpcdomainjoinkeyvaultintentconfiguration.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|userIdentity|[cloudPcDomainJoinUserIdentity](../resources/cloudpcdomainjoinuseridentity.md)|The Active Directory user identity used to join devices to the domain. Set **@odata.type** to `#microsoft.graph.cloudPcDomainJoinPlainTextUserIdentity` to specify the user principal name. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcDomainJoinKeyVaultPasswordConfiguration",
  "baseType": "microsoft.graph.cloudPcDomainJoinKeyVaultIntentConfiguration"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcDomainJoinKeyVaultPasswordConfiguration",
  "userIdentity": { "@odata.type": "microsoft.graph.cloudPcDomainJoinUserIdentity" }
}
```
