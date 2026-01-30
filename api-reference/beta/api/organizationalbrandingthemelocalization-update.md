---
title: "Update organizationalBrandingThemeLocalization"
description: "Update the properties of an organizationalBrandingThemeLocalization object."
author: "AlexanderMars"
ms.date: 11/04/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update organizationalBrandingThemeLocalization

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an [organizationalBrandingThemeLocalization](../resources/organizationalbrandingthemelocalization.md) object.  

To update String data types, such as **signInPageText** and **usernameHintText**, use the PATCH method. To update Stream data types, such as **bannerLogo** and **pageBackgroundImage**, use the PUT method. You can't update Stream types with other data types in the same request.  
 

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "organizationalbrandingthemelocalization_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/organizationalbrandingthemelocalization-update-permissions.md)]

[!INCLUDE [rbac-org-branding-apis-write](../includes/rbac-for-apis/rbac-org-branding-apis-write.md)]

## HTTP request

To update String data types, such as **signInPageText** and **usernameHintText**:

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /organization/{organizationId}/branding/themes/{organizationalBrandingThemeId}/localizations/{organizationalBrandingThemeLocalizationId}
```

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|accountResetCredentials|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|Represents "Can't access your account?" and "Reset it now" hyperlinks of self-service password reset (SSPR) that can be customized on the sign-in page for a theme. A destination URL can be updated. Optional.|
|bannerLogo|Stream|A banner version of your company logo that appears on the sign-in page. The allowed types are PNG or JPEG not larger than 245 x 36 pixels. We recommend using a transparent image with no padding around the logo. Optional.|
|bannerLogoRelativeUrl|String|A relative url for the bannerLogo property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|cannotAccessYourAccount|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|Represents "Can't access your account?" hyperlink of self-service password reset (SSPR) that can be customized on the sign-in page for a theme. A display text can be updated. Optional.|
|cdnHosts|String collection|A list of available CDN base urls that are serving the assets of the current resource. There are several CDNs used to provide redundancy hence eliminating Single Point of Failure for blob properties of this resource. Read-only. Optional.|
|contentCustomization|[contentCustomization](../resources/contentcustomization.md)|Represents the various content options to be customized throughout the authentication flow for a tenant. <br/><br/>**NOTE:** Supported by Microsoft Entra ID for customers tenants only. Optional.|
|customCSS|Stream|CSS styling that appears on the sign-in page. The allowed format is .css format only and not larger than 25KB. Optional.|
|customCSSRelativeUrl|String|A relative url for the customCSS property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|BackgroundImage|Stream|Image that appears as the background of the sign-in page. The allowed types are PNG or JPEG not smaller than 300 KB and not larger than 1920 × 1080 pixels. A smaller image will reduce bandwidth requirements and make the page load faster. Optional.|
|BackgroundImageRelativeUrl|String|A relative url for the backgroundImage property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|favicon|Stream|A custom icon (favicon) to replace a default Microsoft product favicon on a Microsoft Entra tenant. Optional.|
|faviconRelativeUrl|String|A relative url for the favicon property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|forgotMyPassword|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|Represents "Forgot my password" hyperlink of self-service password reset (SSPR) that can be customized on the sign-in page for a theme. A display text can be updated. Optional.|
|headerBackgroundColor|String|The RGB color to apply to customize the color of the header. Optional.|
|headerLogo|Stream|A company logo that appears in the header of the sign-in page. The allowed types are PNG or JPEG not larger than 245 x 36 pixels. We recommend using a transparent image with no padding around the logo. Optional.|
|headerLogoRelativeUrl|String|A relative url for the headerLogo property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|locale|String|An identifier that represents the locale specified using culture names. Culture names follow the RFC 1766 standard in the format "languagecode2-country/regioncode2". The portion "languagecode2" is a lowercase two-letter code derived from ISO 639-1 and "country/regioncode2" is an uppercase two-letter code derived from ISO 3166. For example, U.S. English is `en-US`. You can't create the default branding by setting the value of **locale** to the String types `0` or `default`.  <br/><br/>**NOTE:** Multiple branding for a single locale are currently not supported.|
|loginPageLayoutConfiguration|[loginPageLayoutConfiguration](../resources/loginpagelayoutconfiguration.md)|Represents the layout configuration to be displayed on the login page for a tenant. Optional.|
|pageBackgroundColor|String|Color that appears in place of the background image in low-bandwidth connections. We recommend that you use the primary color of your banner logo or your organization color. Specify this in hexadecimal format, for example, white is `#FFFFFF`. Optional.|
|privacyAndCookies|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|Represents "Privacy & cookies" hyperlink in the footer of sign-in page that can be customized for a theme. A destination URL and a display text can be updated. Optional.|
|resetItNow|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|Represents "Reset it now" hyperlink of self-service password reset (SSPR) that can be customized on the sign-in page for a theme. A display text can be updated. Optional.|
|signInPageText|String|Text that appears at the bottom of the sign-in box. Use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be in Unicode format and not exceed 1024 characters. Optional.|
|squareLogo|Stream|A square version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG not larger than 240 x 240 pixels and not more than 10 KB in size. We recommend using a transparent image with no padding around the logo. Optional.|
|squareLogoRelativeUrl|String|A relative url for the squareLogo property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|squareLogoDark|Stream|A square dark version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG not larger than 240 x 240 pixels and not more than 10 KB in size. We recommend using a transparent image with no padding around the logo. Optional.|
|squareLogoDarkRelativeUrl|String|A relative url for the squareLogoDark property that is combined with a CDN base URL from the cdnList to provide the version served by a CDN. Read-only. Optional.|
|termsOfUse|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|Represents the Term of Use hyperlink that can be customized in the footer of login page for a theme. A destination URL and a display text can be updated. Optional.|
|usernameHintText|String| A string that shows as the hint in the username textbox on the sign-in screen. This text must be a Unicode, without links or code, and can't exceed 64 characters. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [organizationalBrandingThemeLocalization](../resources/organizationalbrandingthemelocalization.md) object in the response body.

## Examples

### Example 1: Update string properties for the localized branding theme of the specific locale (fr-FR)

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandingthemelocalization_string"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/organization/84841066-274d-4ec0-a5c1-276be684bdd3/branding/themes/931cc1bb-5395-4fd7-aa54-406d793a4b05/localizations/fr-FR
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.organizationalBrandingThemeLocalization",
  "locale": "en-US",
  "accountResetCredentials": {
    "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
  },
  "backgroundImageRelativeUrl": null,
  "bannerLogoRelativeUrl": null,
  "cannotAccessYourAccount": {
    "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
  },
  "cdnHosts": [],
  "contentCustomization": {
    "@odata.type": "microsoft.graph.contentCustomization"
  },
  "customCSSRelativeUrl": null,
  "faviconRelativeUrl": null,
  "forgotMyPassword": {
    "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
  },
  "headerBackgroundColor": "#3377ffff",
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
  "squareLogoRelativeUrl": null,
  "squareLogoDarkRelativeUrl": null,
  "termsOfUse": {
    "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
  },
  "usernameHintText": "ContosoUsername"
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.organizationalBrandingThemeLocalization",
  "locale": "en-US",
  "accountResetCredentials": {
    "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
  },
  "backgroundImageRelativeUrl": null,
  "bannerLogoRelativeUrl": null,
  "cannotAccessYourAccount": {
    "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
  },
  "cdnHosts": [],
  "contentCustomization": {
    "@odata.type": "microsoft.graph.contentCustomization"
  },
  "customCSSRelativeUrl": null,
  "faviconRelativeUrl": null,
  "forgotMyPassword": {
    "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
  },
  "headerBackgroundColor": "#3377ffff",
  "headerLogoRelativeUrl": "/branding/logo-header.png",
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
  "squareLogoRelativeUrl": null,
  "squareLogoDarkRelativeUrl": null,
  "termsOfUse": {
    "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
  },
  "usernameHintText": "ContosoUsername"
}
```
### Example 2: Update a stream property for the localized branding theme of the specific locale (fr-FR)

#### Request

The following example shows a request.
<!-- {
  "blockType": "ignored",
  "name": "update_organizationalbrandingthemelocalization_stream"
}
-->
``` http
PUT https://graph.microsoft.com/beta/organization/84841066-274d-4ec0-a5c1-276be684bdd3/branding/themes/931cc1bb-5395-4fd7-aa54-406d793a4b05/localizations/fr-FR/bannerLogo
Content-Type: image/jpeg

<Image>
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
Content-Type: image/*

<Image>
```
