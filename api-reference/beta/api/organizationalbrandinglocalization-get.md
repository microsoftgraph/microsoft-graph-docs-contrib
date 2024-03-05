---
title: "Get organizationalBrandingLocalization"
description: "Read the properties and relationships of an organizationalBrandingLocalization object."
author: "quievey"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get organizationalBrandingLocalization
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [organizationalBrandingLocalization](../resources/organizationalbrandinglocalization.md) object. To retrieve a localization branding object, specify the value of **id** in the URL.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "organizationalbrandinglocalization_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/organizationalbrandinglocalization-get-permissions.md)]

[!INCLUDE [rbac-org-branding-apis-read](../includes/rbac-for-apis/rbac-org-branding-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /organization/{organizationId}/branding/localizations/{organizationalBrandingLocalizationId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [organizationalBrandingLocalization](../resources/organizationalbrandinglocalization.md) object in the response body.

## Examples

### Example 1: Get the localized branding for a specific locale (fr-FR)

#### Request

Here's an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_organizationalbrandinglocalization",
  "sampleKeys": ["fr-FR", "d69179bf-f4a4-41a9-a9de-249c0f2efb1d"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/fr-FR
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-organizationalbrandinglocalization-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-organizationalbrandinglocalization-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-organizationalbrandinglocalization-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-organizationalbrandinglocalization-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-organizationalbrandinglocalization-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-organizationalbrandinglocalization-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-organizationalbrandinglocalization-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-organizationalbrandinglocalization-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

Here's an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBrandingLocalization"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#organization('99b24e1b-abec-4598-9d63-a2baf0a3cea1')/branding/localizations/$entity",
    "@odata.type": "#microsoft.graph.organizationalBrandingProperties",
    "@odata.id": "https://graph.microsoft.com/v2/99b24e1b-abec-4598-9d63-a2baf0a3cea1/directoryObjects/$/Microsoft.DirectoryServices.Organization('99b24e1b-abec-4598-9d63-a2baf0a3cea1')//localizations('fr-FR')/fr-FR",
    "id": "fr-FR",
    "backgroundColor": " ",
    "backgroundImageRelativeUrl": null,
    "bannerLogoRelativeUrl": "c1c6b6c8-urr-dzbkz44n5kuo9kzl1kziuujjcdqonoe2owyacso/logintenantbranding/1036/bannerlogo?ts=637673868626068858",
    "cdnList": [
        "secure.aadcdn.microsoftonline-p.com",
        "aadcdn.msftauthimages.net",
        "aadcdn.msauthimages.net"
    ],
    "contentCustomization": {
      "attributeCollectionRelativeUrl": "dbd5a2dd-dt17xdjgu8kxc14xcav-rckknamct7yytiih-vm-ksm/logintenantbranding/1033/attributecollection?ts=638151133931615483",
      "attributeCollection": [
            {
                "key": "AttributeCollection_Description",
                "value": "We just need a little more information to set up your account."
            },
            {
                "key": "AttributeCollection_Title",
                "value": "Add details"
            },
            {
                "key": "Attribute_City",
                "value": "City"
            },
            {
                "key": "Attribute_Country",
                "value": "Country/Region"
            },
            {
                "key": "Attribute_DisplayName",
                "value": "Display Name"
            },
            {
                "key": "Attribute_Email",
                "value": "Email Address"
            },
            {
                "key": "Attribute_Generic_ConfirmationLabel",
                "value": "Re-enter"
            },
            {
                "key": "Attribute_GivenName",
                "value": "Given Name"
            },
            {
                "key": "Attribute_JobTitle",
                "value": "Job Title"
            },
            {
                "key": "Attribute_Password",
                "value": "Password"
            },
            {
                "key": "Attribute_Password_MismatchErrorString",
                "value": "Passwords do not match."
            },
            {
                "key": "Attribute_PostalCode",
                "value": "Postal Code"
            },
            {
                "key": "Attribute_State",
                "value": "State/Province"
            },
            {
                "key": "Attribute_StreetAddress",
                "value": "Street Address"
            },
            {
                "key": "Attribute_Surname",
                "value": "Sasha Surname"
            },
            {
                "key": "SignIn_Description",
                "value": "Sign in to access"
            },
            {
                "key": "SignIn_Title",
                "value": "Sign in"
            },
            {
                "key": "SignUp_Description",
                "value": "Sign up to access"
            },
            {
                "key": "SignUp_Title",
                "value": "Create account"
            },
            {
                "key": "SisuOtc_Title",
                "value": "Enter code"
            },
            {
                "key": "Attribute_extension_82936c774db949fcac549215e8857017_Total_Job_Experience_Years",
                "value": "Total_Job_Experience_Years"
            }
        ]
    },     
    "customAccountResetCredentialsUrl": null,
    "customCannotAccessYourAccountText": null,
    "customCannotAccessYourAccountUrl": null,
    "customCSS": null,
    "customCSSRelativetUrl": null,
    "customForgotMyPasswordText": null,
    "customPrivacyAndCookiesText": null,
    "customPrivacyAndCookiesUrl": null,
    "customTermsOfUseText": null,
    "customTermsOfUseUrl": null,
    "customResetItNowText": null,
    "faviconRelativeUrl": null,
    "headerBackgroundColor": null,
    "headerLogoRelativeUrl": null,
    "signInPageText": "Contoso",
    "squareLogoRelativeUrl": "c1c6b6c8-urr-dzbkz44n5kuo9kzl1kziuujjcdqonoe2owyacso/logintenantbranding/0/tilelogo?ts=637535563832888580",
    "squareLogoDarkRelativeUrl": "c1c6b6c8-urr-dzbkz44n5kuo9kzl1kziuujjcdqonoe2owyacso/logintenantbranding/0/tilelogo?ts=637535563832888580",    
    "usernameHintText": " ",
    "loginPageLayoutConfiguration": {
      "layoutTemplateType": "default",
      "isHeaderShown": false,
      "isFooterShown": true
    },
    "loginPageTextVisibilitySettings": {
      "hideCannotAccessYourAccount": false,
      "hideForgotMyPassword": false,
      "hideResetItNow": false,
      "hideTermsOfUse": true,
      "hidePrivacyAndCookies": true
    }
}
```

### Example 2: Get the value of signInPageText for a specific locale

#### Request

Here's an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_organizationalbrandinglocalization_locale_signInPageText",
  "sampleKeys": ["fr-FR", "99b24e1b-abec-4598-9d63-a2baf0a3cea1"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/organization/99b24e1b-abec-4598-9d63-a2baf0a3cea1/branding/localizations/fr-FR/signInPageText
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-organizationalbrandinglocalization-locale-signinpagetext-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

Here's an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBrandingLocalization"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#organization('99b24e1b-abec-4598-9d63-a2baf0a3cea1')/branding/localizations('fr-FR')/usernameHintText",
    "value": "Welcome to Contoso France"
}
```

### Example 3: Get the bannerLogo for the default locale

The following example returns the **bannerLogo** object for the default locale. You may specify the **id** as `default` or `0` in the request URL. If the object isn't set, the request returns an empty response.

#### Request

Here's an example of the request.

<!-- {
  "blockType": "ignored",
  "name": "get_organizationalbranding_defaultlocale_bannerLogo"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/default/bannerLogo
```

#### Response

Here's an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBranding"
} -->

```http
HTTP/1.1 200 OK
Content-Type: image/*

<Image>
```

### Example 4: Get the bannerLogo for the fr-FR locale

The following example returns the **bannerLogo** object for the `fr-FR` locale whose bannerLogo isn't set.

#### Request

Here's an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_organizationalbranding_frlocale_default_bannerLogo",
  "sampleKeys": ["d69179bf-f4a4-41a9-a9de-249c0f2efb1d"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/default/bannerLogo
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-organizationalbranding-frlocale-default-bannerlogo-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-organizationalbranding-frlocale-default-bannerlogo-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-organizationalbranding-frlocale-default-bannerlogo-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-organizationalbranding-frlocale-default-bannerlogo-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-organizationalbranding-frlocale-default-bannerlogo-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-organizationalbranding-frlocale-default-bannerlogo-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-organizationalbranding-frlocale-default-bannerlogo-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-organizationalbranding-frlocale-default-bannerlogo-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

Here's an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBranding"
} -->

```http
HTTP/1.1 200 OK

{}
```
