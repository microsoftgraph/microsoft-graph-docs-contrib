---
title: "api resource type"
description: "Specifies settings for a Web API application."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "davidmu1"
---

# api resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies settings for a Web API application.

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|`acceptMappedClaims`| Boolean | When true, allows an application to use claims mapping without specifying a custom signing key. |
|`knownClientApplications`| Guid collection |Used for bundling consent if you have a solution that contains two parts: a client app and a custom web API app. If you enter the appID of the client app into this value, the user will only have to consent once to the client app. Azure AD will know that consenting to the client means implicitly consenting to the web API and will automatically provision service principals for both the client and web API at the same time. Both the client and the web API app must be registered in the same tenant.|
|`oauth2PermissionScopes`| [permissionScope](permissionscope.md) collection | The collection of OAuth 2.0 permission scopes that the web API (resource) application exposes to client applications. These permission scopes may be granted to client applications during consent. |
|`preAuthorizedApplications`| [preAuthorizedApplications](preAuthorizedApplications.md) collection | Lists applications and requested permissions for implicit consent. Requires an admin to have provided consent to the application. preAuthorizedApplications do not require the user to consent to the requested permissions. Permissions listed in preAuthorizedApplications do not require user consent. However, any additional requested permissions not listed in preAuthorizedApplications require user consent. |
|`requestedAccessTokenVersion`| Int32 | Specifies the access token version expected by this resource. This changes the version and format of the JWT produced independent of the endpoint or client used to request the access token. <br><br> The endpoint used, v1.0 or v2.0, is chosen by the client and only impacts the version of id_tokens. Resources need to explicitly configure `requestedAccessTokenVersion` to indicate the supported access token format. <br><br> Possible values for `requestedAccessTokenVersion` are 1, 2, or null. If the value is null, this defaults to 1, which corresponds to the v1.0 endpoint. <br><br> If `signInAudience` on the application is configured as `AzureADandPersonalMicrosoftAccount`, the value for this property must be 2 |

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.apiApplication"
}-->

```json
{
  "acceptMappedClaims": true,
  "knownClientApplications": ["Guid"],
  "oauth2PermissionScopes": [{"@odata.type": "microsoft.graph.permissionScope"}],
  "preAuthorizedApplications": [{"@odata.type": "microsoft.graph.preAuthorizedApplication"}],
  "requestedAccessTokenVersion": 2
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "api resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
