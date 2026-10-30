---
title: "verifiableCredentialsAuthenticationMethodConfiguration resource type"
description: "Represents a Verifiable Credential authentication methods policy."
author: "tilarso"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# verifiableCredentialsAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Verifiable Credential authentication methods policy. Authentication methods policies define configuration settings and users or groups who are enabled to use the authentication method.


Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/verifiablecredentialsauthenticationmethodconfiguration-list.md)|[verifiableCredentialsAuthenticationMethodConfiguration](../resources/verifiablecredentialsauthenticationmethodconfiguration.md) collection|Get a list of the verifiableCredentialsAuthenticationMethodConfiguration objects and their properties.|
|[Get](../api/verifiablecredentialsauthenticationmethodconfiguration-get.md)|[verifiableCredentialsAuthenticationMethodConfiguration](../resources/verifiablecredentialsauthenticationmethodconfiguration.md)|Read the properties and relationships of [verifiableCredentialsAuthenticationMethodConfiguration](../resources/verifiablecredentialsauthenticationmethodconfiguration.md) object.|
|[Update](../api/verifiablecredentialsauthenticationmethodconfiguration-update.md)|[verifiableCredentialsAuthenticationMethodConfiguration](../resources/verifiablecredentialsauthenticationmethodconfiguration.md)|Update the properties of a verifiableCredentialsAuthenticationMethodConfiguration object.|
|[Delete](../api/verifiablecredentialsauthenticationmethodconfiguration-delete.md)|None|Delete a verifiableCredentialsAuthenticationMethodConfiguration object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|Groups of users that are excluded from the policy. Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).|
|id|String|The authentication method policy identifier.|
|identityVerificationEventsConfiguration|[identityVerificationEventsConfiguration](../resources/identityverificationeventsconfiguration.md)|The optional tenant-level configuration that controls whether identity verification events and credential provenance information are collected and exposed for Verified ID verification. This setting isn't scoped to individual Verified ID profiles. If no configuration is stored or the stored value is `null`, event collection and exposure are disabled. Omitting this property from a PATCH request leaves its existing value unchanged.|
|state|authenticationMethodState|The possible values are: `enabled`, `disabled`. Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md). The possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[verifiableCredentialAuthenticationMethodTarget](../resources/verifiablecredentialauthenticationmethodtarget.md) collection|A collection of groups that are enabled to use the authentication method.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.verifiableCredentialsAuthenticationMethodConfiguration",
  "baseType": "microsoft.graph.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.verifiableCredentialsAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String",
  "excludeTargets": [
    {
      "@odata.type": "microsoft.graph.excludeTarget"
    }
  ],
  "identityVerificationEventsConfiguration": {
    "@odata.type": "microsoft.graph.identityVerificationEventsConfiguration",
    "isEnabled": "Boolean"
  }
}
```
