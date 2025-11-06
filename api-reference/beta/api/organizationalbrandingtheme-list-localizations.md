---
title: "List organizationalBrandingThemeLocalization objects"
description: "Get a list of the organizationalBrandingThemeLocalization objects and their properties."
author: "AlexanderMars"
ms.date: 11/04/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List organizationalBrandingThemeLocalization objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [organizationalBrandingThemeLocalization](../resources/organizationalbrandingthemelocalization.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "organizationalbrandingtheme-list-localizations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/organizationalbrandingtheme-list-localizations-permissions.md)]

[!INCLUDE [rbac-org-branding-apis-read](../includes/rbac-for-apis/rbac-org-branding-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /organization/{organizationId}/branding/themes/{organizationalBrandingThemeId}/localizations
```

## Optional query parameters

This method supports only the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [organizationalBrandingThemeLocalization](../resources/organizationalbrandingthemelocalization.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_organizationalbrandingthemelocalization"
}
-->
``` http
GET https://graph.microsoft.com/beta/organization/aaaabbbb-0000-cccc-1111-dddd2222eeee/branding/themes/931cc1bb-5395-4fd7-aa54-406d793a4b05/localizations
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBrandingThemeLocalization"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.organizationalBrandingThemeLocalization",
      "locale": "fr-FR",
      "accountResetCredentials": {
        "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
      },
      "backgroundImage": "contosobackground.jpg",
      "backgroundImageRelativeUrl": "c1c6b6c8-urr-dzbkz44n5kuo9kzl1kziuujjcdqonoe2owyacso/logintenantbranding/fr-FR/illustration?ts=637535563816027796",
      "bannerLogo": "contosoLogo.jpg",
      "bannerLogoRelativeUrl": "c1c6b6c8-urr-dzbkz44n5kuo9kzl1kziuujjcdqonoe2owyacso/logintenantbranding/fr-FR/bannerlogo?ts=637535563824629275",
      "cannotAccessYourAccount": {
        "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
      },
      "cdnHosts": [
        "secure.aadcdn.microsoftonline-p.com",
        "aadcdn.msftauthimages.net",
        "aadcdn.msauthimages.net"
      ],
      "contentCustomization": {
        "@odata.type": "microsoft.graph.contentCustomization"
      },
      "customCSS": null,
      "customCSSRelativeUrl": null,
      "favicon": null,
      "faviconRelativeUrl": null,
      "forgotMyPassword": {
        "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
      },
      "headerBackgroundColor": "#3377ffff",
      "headerLogo": null,
      "headerLogoRelativeUrl": null,
      "loginPageLayoutConfiguration": {
        "@odata.type": "microsoft.graph.loginPageLayoutConfiguration"
      },
      "pageBackgroundColor": "#FFFF33",
      "privacyAndCookies": {
        "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
      },
      "resetItNow": {
        "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
      },
      "signInPageText": "Welcome to Contoso",
      "squareLogo": null,
      "squareLogoRelativeUrl": null,
      "squareLogoDark": null,
      "squareLogoDarkRelativeUrl": null,
      "termsOfUse": {
        "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
      },
      "usernameHintText": "ContosoUsername"
    }
  ]
}
```

