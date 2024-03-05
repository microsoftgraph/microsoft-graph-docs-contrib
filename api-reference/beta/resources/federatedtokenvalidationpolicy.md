---
title: "federatedTokenValidationPolicy resource type"
description: "Represents a policy to control enabling or disabling validation of federation authentication tokens. It allows matching an on-premises federated account and a mapped Microsoft Entra ID account's root domain."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# federatedTokenValidationPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a policy to control enabling or disabling validation of federation authentication tokens. It allows matching an on-premises federated account and a mapped Microsoft Entra ID account's root domain. When enabled, Microsoft Entra ID rejects an authentication request if the on-premises federated account and the mapped Microsoft Entra ID account's root domain don't match.

Inherits from [directoryObject](../resources/directoryobject.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List federatedTokenValidationPolicies](../api/policyroot-list-federatedtokenvalidationpolicy.md)|[federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) collection|Get a list of the [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) objects and their properties.|
|[Get federatedTokenValidationPolicy](../api/federatedtokenvalidationpolicy-get.md)|[federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md)|Read the properties and relationships of a [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) object.|
|[Update federatedTokenValidationPolicy](../api/federatedtokenvalidationpolicy-update.md)|[federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md)|Update the properties of a [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|Date and time when this object was deleted. Always `null` when the object wasn't deleted. Inherited from [directoryObject](../resources/directoryobject.md).|
|ID|String|The unique identifier for the object. Key. Not nullable. Read-only. Inherited from [directoryObject](../resources/directoryobject.md).|
|validatingDomains|[validatingDomains](../resources/validatingdomains.md)|Verified Microsoft Entra ID domains that Microsoft Entra ID validates that the federated account's root domain matches with the mapped Microsoft Entra account's root domain.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.federatedTokenValidationPolicy",
  "baseType": "microsoft.graph.directoryObject",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.federatedTokenValidationPolicy",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "validatingDomains": {
    "@odata.type": "microsoft.graph.validatingDomains"
  }
}
```
