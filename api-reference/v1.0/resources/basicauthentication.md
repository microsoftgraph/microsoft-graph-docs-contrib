---
title: "basicAuthentication resource type"
description: "Represents configuration for using Basic authentication in an API call."
author: "nickgmicrosoft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# basicAuthentication resource type

Namespace: microsoft.graph

Represents configuration for using HTTP Basic authentication, which entails a username and password, in an API call. The username and password is sent as the Authorization header as `Basic {value}` where `value` is base 64 encoded version of username:password.

Inherits from [apiAuthenticationConfigurationBase](../resources/apiauthenticationconfigurationbase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|password|String| The password. It isn't returned in the responses. |
|username|String| The username. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.basicAuthentication"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.basicAuthentication",
  "password": "String",
  "username": "String"
}
```
