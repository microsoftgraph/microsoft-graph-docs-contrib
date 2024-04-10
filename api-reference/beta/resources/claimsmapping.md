---
title: "claimsMapping resource type"
description: "Map the claims from a token to the claims that Azure Active Directory B2C recognizes and uses."
author: "namkedia"
ms.localizationpriority: high
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# claimsMapping resource type

Namespace: microsoft.graph

After the custom identity provider sends an ID token back to Azure AD B2C, Azure AD B2C maps the claims from a token to the claims that Azure AD B2C recognizes and uses.

## Properties
|Property|Type|Description|
|:-------|:---|:----------|
|userId|String|The claim that provides the unique identifier for the signed-in user. It is a required property.|
|displayName|String|The claim that provides the display name or full name for the user. It's a required property.|
|givenName|String|The claim that provides the first name of the user.|
|surname|String|The claim that provides the last name of the user.|
|email|String|The claim that provides the email address of the user.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.claimsMapping"
}
-->

``` json
{
  "userId": "String",
  "givenName": "String",
  "surname": "String",
  "email": "String",
  "displayName": "String"
  }
```


