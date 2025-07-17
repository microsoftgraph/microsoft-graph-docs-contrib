---
title: "webApplication resource type"
description: "Specifies settings for a web application."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-applications"
author: "sureshja"
ms.date: 03/21/2024
ms.custom: sfi-ropc-nochange
---

# webApplication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies settings for a web application.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| homePageUrl | String | Home page or landing page of the application. |
| implicitGrantSettings | [implicitGrantSettings](implicitgrantsettings.md)| Specifies whether this web application can request tokens using the OAuth 2.0 implicit flow. |
| logoutUrl | String | Specifies the URL that will be used by Microsoft's authorization service to logout a user using [front-channel](https://openid.net/specs/openid-connect-frontchannel-1_0.html), [back-channel](https://openid.net/specs/openid-connect-backchannel-1_0.html) or SAML logout protocols. |
| redirectUris | String collection | Specifies the URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent. |
|redirectUriSettings| [redirectUriSettings](redirecturisettings.md) collection | Specifies the index of the URLs where user tokens are sent for sign-in. This is only valid for applications using SAML.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.webApplication"
}-->

```json
{
  "homePageUrl": "String",
  "implicitGrantSettings": {"@odata.type": "microsoft.graph.implicitGrantSettings"},
  "logoutUrl": "String",
  "redirectUris": ["String"],
  "redirectUriSettings": [
    {
      "@odata.type": "microsoft.graph.redirectUriSettings"
    }
  ],
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "webApplication resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


