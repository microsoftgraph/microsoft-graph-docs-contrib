---
title: "Update organizationalBrandingThemeLocalization"
description: "Update the properties of an organizationalBrandingThemeLocalization object."
author: "AlexanderMars"
ms.date: 10/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update organizationalBrandingThemeLocalization

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

To update String data types, such as signInPageText and usernameHintText, use the PATCH method. To update Stream data types, such as backgroundLogo and backgroundImage, use the PUT method. You can't update Stream types with other data types in the same request.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "organizationalbrandingthemelocalization-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/organizationalbrandingthemelocalization-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /organization/{organizationId}/branding/themes/{organizationalBrandingThemeId}/localizations/{organizationalBrandingThemeLocalizationId}
PUT /organization/{organizationId}/branding/themes/{organizationalBrandingThemeId}/localizations/{organizationalBrandingThemeLocalizationId}/{Stream object type such as backgroundImage}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|locale|String|An identifier that represents the locale specified using culture names. Culture names follow the RFC 1766 standard in the format "languagecode2-country/regioncode2". The portion "languagecode2" is a lowercase two-letter code derived from ISO 639-1 and "country/regioncode2" is an uppercase two-letter code derived from ISO 3166. For example, U.S. English is `en-US`. You can't create the default branding by setting the value of **locale** to the String types `0` or `default`.  <br/><br/>**NOTE:** Multiple branding for a single locale are currently not supported.|
|accountResetCredentials|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|Represents "Can't access your account?" and "Reset it now" hyperlinks of self-service password reset (SSPR) that can be customized on the sign-in page for a theme. A destination URL can be updated. Optional.|
|backgroundImage|Stream|**TODO: Add Description** Optional.|
|backgroundImageRelativeUrl|String|**TODO: Add Description** Optional.|
|bannerLogo|Stream|**TODO: Add Description** Optional.|
|bannerLogoRelativeUrl|String|**TODO: Add Description** Optional.|
|cannotAccessYourAccount|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|Represents "Can't access your account?" hyperlink of self-service password reset (SSPR) that can be customized on the sign-in page for a theme. A display text can be updated. Optional.|
|cdnHosts|String collection|**TODO: Add Description** Optional.|
|contentCustomization|[contentCustomization](../resources/contentcustomization.md)|**TODO: Add Description** Optional.|
|customCSS|Stream|**TODO: Add Description** Optional.|
|customCSSRelativeUrl|String|**TODO: Add Description** Optional.|
|favicon|Stream|**TODO: Add Description** Optional.|
|faviconRelativeUrl|String|**TODO: Add Description** Optional.|
|forgotMyPassword|[loginPageBrandingVisualElement](../resources/loginpagebrandingvisualelement.md)|**TODO: Add Description** Optional.|
|headerBackgroundColor|String|**TODO: Add Description** Optional.|
|headerLogo|Stream|**TODO: Add Description** Optional.|
|headerLogoRelativeUrl|String|**TODO: Add Description** Optional.|
|loginPageLayoutConfiguration|[loginPageLayoutConfiguration](../resources/loginpagelayoutconfiguration.md)|**TODO: Add Description** Optional.|
|pageBackgroundColor|String|**TODO: Add Description** Optional.|
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

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandingthemelocalization"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/organization/{organizationId}/branding/themes/{organizationalBrandingThemeId}/localizations/{organizationalBrandingThemeLocalizationId}
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


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
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

