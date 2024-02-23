---
title: "List localizations"
description: "Get the organizationalBrandingLocalization resources from the localizations navigation property."
author: "quievey"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List localizations
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve all localization branding objects, including the default branding.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "organizationalbranding_list_localizations" } -->
[!INCLUDE [permissions-table](../includes/permissions/organizationalbranding-list-localizations-permissions.md)]

[!INCLUDE [rbac-org-branding-apis-read](../includes/rbac-for-apis/rbac-org-branding-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /organization/{organizationId}/branding/localizations
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

If successful, this method returns a `200 OK` response code and a collection of [organizationalBrandingLocalization](../resources/organizationalbrandinglocalization.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_organizationalbrandinglocalization"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/organization/84841066-274d-4ec0-a5c1-276be684bdd3/branding/localizations/
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-organizationalbrandinglocalization-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-organizationalbrandinglocalization-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-organizationalbrandinglocalization-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-organizationalbrandinglocalization-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-organizationalbrandinglocalization-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-organizationalbrandinglocalization-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-organizationalbrandinglocalization-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-organizationalbrandinglocalization-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.organizationalBrandingLocalization)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#organization('84841066-274d-4ec0-a5c1-276be684bdd3')/branding/localizations",
    "value": [
        {
            "@odata.id": "https://graph.microsoft.com/v2/84841066-274d-4ec0-a5c1-276be684bdd3/directoryObjects/$/Microsoft.DirectoryServices.Organization('84841066-274d-4ec0-a5c1-276be684bdd3')//localizations/0",
            "id": "0",
            "backgroundColor": " ",
            "backgroundImageRelativeUrl": "c1c6b6c8-ctwpxrbizfcsectmtir3yvna3hrhaib9j7ueqv0ldne/logintenantbranding/0/illustration?ts=637635061764954395",
            "bannerLogoRelativeUrl": "c1c6b6c8-ctwpxrbizfcsectmtir3yvna3hrhaib9j7ueqv0ldne/logintenantbranding/0/bannerlogo?ts=637635061773126717",
            "cdnList": [
                "secure.aadcdn.microsoftonline-p.com",
                "aadcdn.msftauthimages.net",
                "aadcdn.msauthimages.net"
            ],
            "contentCustomization": {
              "attributeCollectionRelativeUrl": "dbd5a2dd-dt17xdjgu8kxc14xcav-rckknamct7yytiih-vm-ksm/logintenantbranding/1033/attributecollection?ts=638151133931615483",
              "attributeCollection": []
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
            "squareLogoDarkRelativeUrl": null,
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
        },
        {
            "@odata.id": "https://graph.microsoft.com/v2/84841066-274d-4ec0-a5c1-276be684bdd3/directoryObjects/$/Microsoft.DirectoryServices.Organization('84841066-274d-4ec0-a5c1-276be684bdd3')//localizations/fr",
            "id": "fr",
            "backgroundColor": "#FFFF33",
            "backgroundImageRelativeUrl": null,
            "bannerLogoRelativeUrl": null,
            "cdnList": [],
            "contentCustomization": {
              "attributeCollectionRelativeUrl": "dbd5a2dd-dt17xdjgu8kxc14xcav-rckknamct7yytiih-vm-ksm/logintenantbranding/1033/attributecollection?ts=638151133931615483",
              "attributeCollection": []
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
            "squareLogoDarkRelativeUrl": null,
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
    ]
}
```

