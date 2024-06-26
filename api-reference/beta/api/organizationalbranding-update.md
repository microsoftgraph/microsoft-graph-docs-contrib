---
title: "Update organizationalBranding"
description: "Update the properties of an organizationalBranding object."
author: "quievey"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update organizationalBranding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of the default branding object specified by the [organizationalBranding](../resources/organizationalbranding.md) resource.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "organizationalbranding_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/organizationalbranding-update-permissions.md)]

[!INCLUDE [rbac-org-branding-apis-write](../includes/rbac-for-apis/rbac-org-branding-apis-write.md)]

## HTTP request

To update String data types, such as signInPageText and usernameHintText, use the PATCH method. To update Stream data types, such as backgroundLogo and backgroundImage, use the PUT method. You can't update Stream types with other data types in the same request.

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /organization/{organizationId}/branding
PUT /organization/{organizationId}/branding/localizations/{organizationalBrandingLocalizationId}/{Stream object type such as backgroundImage}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
|Accept-Language|A valid ISO 639-1 locale or `0` for the default locale. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| backgroundColor | String | Color that appears in place of the background image in low-bandwidth connections. We recommend that you use the primary color of your banner logo or your organization color. Specify this in hexadecimal format, for example, white is `#FFFFFF`. |
| backgroundImage | Stream | Image that appears as the background of the sign-in page. The allowed types are PNG or JPEG not smaller than 300 KB and not larger than 1920 × 1080 pixels. A smaller image will reduce bandwidth requirements and make the page load faster. |
| bannerLogo | Stream | A banner version of your company logo that appears on the sign-in page. The allowed types are PNG or JPEG not larger than 245 x 36 pixels. We recommend using a transparent image with no padding around the logo. |
| contentCustomization | [contentCustomization](../resources/contentcustomization.md) | Represents the various content options to be customized throughout the authentication flow for a tenant. <br/><br/>**NOTE:** Supported by Microsoft Entra ID for customers tenants only. |
| customAccountResetCredentialsUrl | String | A custom URL for resetting account credentials. This URL must be in ASCII format or non-ASCII characters must be URL encoded, and not exceed 128 characters. |
| customCannotAccessYourAccountText | String | A string to replace the default "Can't access your account?" self-service password reset (SSPR) hyperlink text on the sign-in page. This text must be in Unicode format and not exceed 256 characters. |
| customCSS | Stream | CSS styling that appears on the sign-in page. The allowed format is .css format only and not larger than 25KB. |
| customForgotMyPasswordText | String | A string to replace the default "Forgot my password" hyperlink text on the sign-in form. This text must be in Unicode format and not exceed 256 characters. |
| customPrivacyAndCookiesText | String | A string to replace the default "Privacy and Cookies" hyperlink text in the footer. This text must be in Unicode format and not exceed 256 characters. |
| customPrivacyAndCookiesUrl | String | A custom URL to replace the default URL of the "Privacy and Cookies" hyperlink in the footer. This URL must be in ASCII format or non-ASCII characters must be URL encoded, and not exceed 128 characters. |
| customTermsOfUseText | String | A string to replace the the default "Terms of Use" hyperlink text in the footer. This text must be in Unicode format and not exceed 256 characters. |
| customTermsOfUseUrl | String | A custom URL to replace the default URL of the "Terms of Use" hyperlink in the footer. This URL must be in ASCII format or non-ASCII characters must be URL encoded, and not exceed 128characters. |
| favicon | Stream | A custom icon (favicon) to replace a default Microsoft product favicon on a Microsoft Entra tenant. |
| headerBackgroundColor | String | The RGB color to apply to customize the color of the header. |
| headerLogo | Stream | A company logo that appears in the header of the sign-in page. The allowed types are PNG or JPEG not larger than 245 x 36 pixels. We recommend using a transparent image with no padding around the logo. |
| loginPageLayoutConfiguration | [loginPageLayoutConfiguration](../resources/loginPageLayoutConfiguration.md) | Represents the layout configuration to be displayed on the login page for a tenant. |
| loginPageTextVisibilitySettings | [loginPageTextVisibilitySettings](../resources/loginPageTextVisibilitySettings.md) | Represents the various texts that can be hidden on the login page for a tenant. All the properties can be updated. |
| signInPageText | String | Text that appears at the bottom of the sign-in box. Use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be in Unicode format and not exceed 1024 characters. |
| squareLogo | Stream | A square version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG not larger than 240 x 240 pixels and not more than 10 KB in size. We recommend using a transparent image with no padding around the logo.|
| squareLogoDark | Stream | A square dark version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG not larger than 240 x 240 pixels and not more than 10 KB in size. We recommend using a transparent image with no padding around the logo.|
| usernameHintText | String | A string that shows as the hint in the username textbox on the sign-in screen. This text must be a Unicode, without links or code, and can't exceed 64 characters. |

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Update the default branding

#### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandinglocaliation_1"
}-->

```msgraph-interactive
PATCH https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding
Content-Type: application/json
Accept-Language: 0

{
    "signInPageText":"Default",
    "usernameHintText":"DefaultHint"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-organizationalbrandinglocaliation-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-organizationalbrandinglocaliation-1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-organizationalbrandinglocaliation-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-organizationalbrandinglocaliation-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-organizationalbrandinglocaliation-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-organizationalbrandinglocaliation-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-organizationalbrandinglocaliation-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-organizationalbrandinglocaliation-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Update bannerLogo for the default branding

The following request updates the banner logo for the default branding. To update a Stream object type, use the PUT HTTP method and include the locale ID in the URL path.

#### Request

The following example shows a request.




# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandinglocaliation_2"
}-->

```msgraph-interactive
PUT https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/0/bannerLogo
Content-Type: image/jpeg

<Image>
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-organizationalbrandinglocaliation-2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-organizationalbrandinglocaliation-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-organizationalbrandinglocaliation-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```
