---
title: "Get organizationalBrandingThemeLocalization"
description: "Read the properties and relationships of organizationalBrandingThemeLocalization object."
author: "AlexanderMars"
ms.date: 11/04/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get organizationalBrandingThemeLocalization

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [organizationalBrandingThemeLocalization](../resources/organizationalbrandingthemelocalization.md) object.

If the **Accept-Language** header is set to an existing **locale**, this method retrieves the branding theme for the specified locale.



## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "organizationalbrandingthemelocalization_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/organizationalbrandingthemelocalization-get-permissions.md)]

[!INCLUDE [rbac-org-branding-apis-read](../includes/rbac-for-apis/rbac-org-branding-apis-read.md)]

## HTTP request

To retrieve String data types, such as **signInPageText** and **usernameHintText**:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /organization/{organizationId}/branding/themes/{organizationalBrandingThemeId}/localizations/{organizationalBrandingThemeLocalizationId}
```

## Optional query parameters

This method supports only the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept-language|A valid ISO 639-1 locale. Optional.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [organizationalBrandingThemeLocalization](../resources/organizationalbrandingthemelocalization.md) object in the response body.

## Examples

### Example 1: Get the localized branding theme for a specific locale (fr-FR) 

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_organizationalbrandingthemelocalization_strings"
}
-->
``` http
GET https://graph.microsoft.com/beta/organization/84841066-274d-4ec0-a5c1-276be684bdd3/branding/themes/931cc1bb-5395-4fd7-aa54-406d793a4b05/localizations/fr-FR
```


#### Response

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
  "value": {
    "@odata.type": "#microsoft.graph.organizationalBrandingThemeLocalization",
      "locale": "fr-FR",
      "accountResetCredentials": {
        "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
      },
      "backgroundImageRelativeUrl": "c1c6b6c8-urr-dzbkz44n5kuo9kzl1kziuujjcdqonoe2owyacso/logintenantbranding/fr-FR/illustration?ts=637535563816027796",
      "bannerLogoRelativeUrl": "c1c6b6c8-urr-dzbkz44n5kuo9kzl1kziuujjcdqonoe2owyacso/logintenantbranding/fr-FR/bannerlogo?ts=637535563824629275",
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
}
```

### Example 2: Get the bannerLogo for the localized branding theme for a specific locale (fr-FR) 

#### Request

The following example shows a request.
<!-- {
  "blockType": "ignored",
  "name": "get_organizationalbrandingthemelocalization_stream"
}
-->
``` http
GET https://graph.microsoft.com/beta/organization/84841066-274d-4ec0-a5c1-276be684bdd3/branding/themes/931cc1bb-5395-4fd7-aa54-406d793a4b05/localizations/fr-FR/bannerLogo
```


#### Response

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
