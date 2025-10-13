---
title: "Create organizationalBrandingThemeLocalization"
description: "Create a new organizationalBrandingThemeLocalization object."
author: "AlexanderMars"
ms.date: 09/25/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create organizationalBrandingThemeLocalization

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new organizationalBrandingThemeLocalization object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "organizationalbrandingtheme-post-localizations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/organizationalbrandingtheme-post-localizations-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /organization/{organizationId}/branding/themes/{organizationalBrandingThemeId}/localizations
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [organizationalBrandingThemeLocalization](../resources/organizationalbrandingthemelocalization.md) object.

You can specify the following properties when creating an **organizationalBrandingThemeLocalization**.

|Property|Type|Description|
|:---|:---|:---|
|locale|String| An identifier that represents the locale specified using culture names. Culture names follow the RFC 1766 standard in the format "languagecode2-country/regioncode2". The portion "languagecode2" is a lowercase two-letter code derived from ISO 639-1 and "country/regioncode2" is an uppercase two-letter code derived from ISO 3166. For example, U.S. English is `en-US`. You can't create the default branding by setting the value of **locale** to the String types `0` or `default`.  <br/><br/>**NOTE:** Multiple branding for a single locale are currently not supported.|


## Response

If successful, this method returns a `201 Created` response code and an [organizationalBrandingThemeLocalization](../resources/organizationalbrandingthemelocalization.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_organizationalbrandingthemelocalization_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/organization/84841066-274d-4ec0-a5c1-276be684bdd3/branding/themes/931cc1bb-5395-4fd7-aa54-406d793a4b05/localizations
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.organizationalBrandingThemeLocalization",
      "locale": "fr-FR",
      "accountResetCredentials": {
        "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
      },
      "backgroundColor": "#FFFF33",
      "backgroundImage": null,
      "backgroundImageRelativeUrl": null,
      "bannerLogo": null,
      "bannerLogoRelativeUrl": null,
      "cannotAccessYourAccount": {
        "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
      },
      "cdnHosts": [],
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
      "headerLogoRelativeUrl": #FFFF33,
      "loginPageLayoutConfiguration": {
        "@odata.type": "microsoft.graph.loginPageLayoutConfiguration"
      },
      "pageBackgroundColor": null,
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
      "usernameHintText": " "
}
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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.organizationalBrandingThemeLocalization",
  "locale": "73a89ed8-cd09-b6f2-d265-4cb03b747b33",
  "accountResetCredentials": {
    "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
  },
  "backgroundImage": "Stream",
  "backgroundImageRelativeUrl": "String",
  "bannerLogo": "Stream",
  "bannerLogoRelativeUrl": "String",
  "cannotAccessYourAccount": {
    "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
  },
  "cdnHosts": [
    "String"
  ],
  "contentCustomization": {
    "@odata.type": "microsoft.graph.contentCustomization"
  },
  "customCSS": "Stream",
  "customCSSRelativeUrl": "String",
  "favicon": "Stream",
  "faviconRelativeUrl": "String",
  "forgotMyPassword": {
    "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
  },
  "headerBackgroundColor": "String",
  "headerLogo": "Stream",
  "headerLogoRelativeUrl": "String",
  "loginPageLayoutConfiguration": {
    "@odata.type": "microsoft.graph.loginPageLayoutConfiguration"
  },
  "pageBackgroundColor": "String",
  "privacyAndCookies": {
    "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
  },
  "resetItNow": {
    "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
  },
  "signInPageText": "String",
  "squareLogo": "Stream",
  "squareLogoRelativeUrl": "String",
  "squareLogoDark": "Stream",
  "squareLogoDarkRelativeUrl": "String",
  "termsOfUse": {
    "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
  },
  "usernameHintText": "String"
}
```

