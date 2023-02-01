---
title: "claimsMapping resource type"
description: "Map the claims from a token to the claims that Azure Active Directory B2C recognizes and uses."
author: "namkedia"
ms.localizationpriority: high
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# claimsMapping resource type
Namespace: microsoft.graph

After the custom identity provider sends an ID token back to Azure AD B2C, Azure AD B2C maps the claims from a token to the claims that Azure AD B2C recognizes and uses.

## Properties
|Property|Type|Description|
|:-------|:---|:----------|
|displayName|String|The claim that provides the display name or full name for the user. Required.|
|email|String|The claim that provides the email address of the user.|
|givenName|String|The claim that provides the first name of the user.|
|surname|String|The claim that provides the last name of the user.|
|userId|String|The claim that provides the unique identifier for the signed-in user. Required.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.claimsMapping"
}
-->

``` json
{
  "displayName": "String",
  "email": "String",
  "givenName": "String",
  "surname": "String",
  "userId": "String"
  }
```

