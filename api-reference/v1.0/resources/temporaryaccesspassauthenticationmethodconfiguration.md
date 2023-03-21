---
title: "temporaryAccessPassAuthenticationMethodConfiguration resource type"
description: "Represents a Temporary Access Pass authentication methods policy that defines the configuration settings and users or groups who are enabled to use the authentication method."
author: "tilarso"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# temporaryAccessPassAuthenticationMethodConfiguration resource type
Namespace: microsoft.graph

Represents a Temporary Access Pass authentication methods policy that defines the configuration settings and users or groups who are enabled to use the [Temporary Access Pass authentication method](temporaryaccesspassauthenticationmethod.md).

Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/temporaryaccesspassauthenticationmethodconfiguration-get.md)|[temporaryaccesspassauthenticationmethodconfiguration](../resources/temporaryaccesspassauthenticationmethodconfiguration.md)|Read the properties and relationships of a **temporaryAccessPassAuthenticationMethodConfiguration** object.|
|[Update](../api/temporaryaccesspassauthenticationmethodconfiguration-update.md)|None|Update the properties of a **temporaryAccessPassAuthenticationMethodConfiguration** object.|
|[Delete](../api/temporaryaccesspassauthenticationmethodconfiguration-delete.md)|None|Reverts the **temporaryAccessPassAuthenticationMethodConfiguration** object to its default configuration.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultLength|Int|Default length in characters of a Temporary Access Pass object. Must be between 8 and 48 characters.|
|defaultLifetimeInMinutes|Int|Default lifetime in minutes for a Temporary Access Pass. Value can be any integer between the **minimumLifetimeInMinutes** and **maximumLifetimeInMinutes**.|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|Groups of users that are excluded from the policy.|
|id|String|The identifier of the authentication method policy. Inherited from [entity](entity.md).|
|isUsableOnce|Boolean	|If `true`, all the passes in the tenant will be restricted to one-time use. If `false`, passes in the tenant can be created to be either one-time use or reusable.|
|maximumLifetimeInMinutes|Int|Maximum lifetime in minutes for any Temporary Access Pass created in the tenant. Value can be between 10 and 43200 minutes (equivalent to 30 days).|
|minimumLifetimeInMinutes|Int|Minimum lifetime in minutes for any Temporary Access Pass created in the tenant. Value can be between 10 and 43200 minutes (equivalent to 30 days).|
|state|authenticationMethodState|Whether the Temporary Access Pass method is enabled in the tenant. Possible values are: `enabled`, `disabled`. Inherited from [authenticationMethodConfiguration](authenticationmethodconfiguration.md). |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|A collection of groups that are enabled to use the authentication method.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration",
  "baseType": "microsoft.graph.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String",
    "excludeTargets": [
    {
      "@odata.type": "microsoft.graph.excludeTarget"
    }
  ],
  "defaultLifetimeInMinutes": "Integer",
  "defaultLength": "Integer",
  "minimumLifetimeInMinutes": "Integer",
  "maximumLifetimeInMinutes": "Integer",
  "isUsableOnce": "Boolean",
  "includeTargets": [ { "@odata.type": "microsoft.graph.authenticationMethodTarget" } ]
}
```
