---
title: "Create organizationalBrandingThemeLocalization"
description: "Create a new organizationalBrandingThemeLocalization object."
author: "AlexanderMars"
ms.date: 11/04/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create organizationalBrandingThemeLocalization

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [organizationalBrandingThemeLocalization](../resources/organizationalbrandingthemelocalization.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "organizationalbrandingtheme-post-localizations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/organizationalbrandingtheme-post-localizations-permissions.md)]

[!INCLUDE [rbac-org-branding-apis-write](../includes/rbac-for-apis/rbac-org-branding-apis-write.md)]

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
|accountResetCredentials|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|Represents "Can't access your account?" and "Reset it now" hyperlinks of self-service password reset (SSPR) that can be customized on the sign-in page for a theme. A destination URL can be updated. Optional.|
|bannerLogoRelativeUrl|String|A relative url for the bannerLogo property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|cannotAccessYourAccount|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|Represents "Can't access your account?" hyperlink of self-service password reset (SSPR) that can be customized on the sign-in page for a theme. A display text can be updated. Optional.|
|cdnHosts|String collection|A list of available CDN base urls that are serving the assets of the current resource. There are several CDNs used to provide redundancy hence eliminating Single Point of Failure for blob properties of this resource. Read-only. Optional.|
|contentCustomization|[contentCustomization](../resources/contentcustomization.md)|Represents the various content options to be customized throughout the authentication flow for a tenant. <br/><br/>**NOTE:** Supported by Microsoft Entra ID for customers tenants only. Optional.|
|customCSSRelativeUrl|String|A relative url for the customCSS property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|BackgroundImageRelativeUrl|String|A relative url for the backgroundImage property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|faviconRelativeUrl|String|A relative url for the favicon property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|forgotMyPassword|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|Represents "Forgot my password" hyperlink of self-service password reset (SSPR) that can be customized on the sign-in page for a theme. A display text can be updated. Optional.|
|headerBackgroundColor|String|The RGB color to apply to customize the color of the header. Optional.|
|headerLogoRelativeUrl|String|A relative url for the headerLogo property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|locale|String|An identifier that represents the locale specified using culture names. Culture names follow the RFC 1766 standard in the format "languagecode2-country/regioncode2". The portion "languagecode2" is a lowercase two-letter code derived from ISO 639-1 and "country/regioncode2" is an uppercase two-letter code derived from ISO 3166. For example, U.S. English is `en-US`. You can't create the default branding by setting the value of **locale** to the String types `0` or `default`.  <br/><br/>**NOTE:** Multiple branding for a single locale are currently not supported. Required.|
|loginPageLayoutConfiguration|[loginPageLayoutConfiguration](../resources/loginpagelayoutconfiguration.md)|Represents the layout configuration to be displayed on the login page for a tenant. Optional.|
|pageBackgroundColor|String|Color that appears in place of the background image in low-bandwidth connections. We recommend that you use the primary color of your banner logo or your organization color. Specify this in hexadecimal format, for example, white is `#FFFFFF`. Optional.|
|privacyAndCookies|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|Represents "Privacy & cookies" hyperlink in the footer of sign-in page that can be customized for a theme. A destination URL and a display text can be updated. Optional.|
|resetItNow|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|Represents "Reset it now" hyperlink of self-service password reset (SSPR) that can be customized on the sign-in page for a theme. A display text can be updated. Optional.|
|signInPageText|String|Text that appears at the bottom of the sign-in box. Use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be in Unicode format and not exceed 1024 characters. Optional.|
|squareLogoRelativeUrl|String|A relative url for the squareLogo property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|squareLogoDarkRelativeUrl|String|A relative url for the squareLogoDark property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|termsOfUse|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|Represents the Term of Use hyperlink that can be customized in the footer of login page for a theme. A destination URL and a display text can be updated. Optional.|
|usernameHintText|String| A string that shows as the hint in the username textbox on the sign-in screen. This text must be a Unicode, without links or code, and can't exceed 64 characters. Optional.|


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
POST https://graph.microsoft.com/beta/organization/aaaabbbb-0000-cccc-1111-dddd2222eeee/branding/themes/931cc1bb-5395-4fd7-aa54-406d793a4b05/localizations
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.organizationalBrandingThemeLocalization",
      "locale": "fr-FR",
      "headerBackgroundColor": "#3377ffff",
      "pageBackgroundColor": "#FFFF33",
      "signInPageText": "Welcome to Contoso",
      "usernameHintText": "ContosoUsername "
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
  "locale": "fr-FR",
    "accountResetCredentials": {
      "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
    },
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
    "headerLogoRelativeUrl": "/images/headerLogo.png",
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
```

