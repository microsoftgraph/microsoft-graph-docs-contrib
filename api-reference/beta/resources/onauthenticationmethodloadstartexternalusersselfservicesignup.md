---
title: "onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [onAuthenticationMethodLoadStartHandler](../resources/onauthenticationmethodloadstarthandler.md).

## Properties
None

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identityProviders|[identityProviderBase](../resources/identityproviderbase.md) collection|Required. List of identity providers which user can sign in (or sign up) with.  At least one Identity Provider must be specified.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp"
}
```

