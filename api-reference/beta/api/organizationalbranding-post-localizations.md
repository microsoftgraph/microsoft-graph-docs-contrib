---
title: "Create organizationalBrandingLocalization"
description: "Create a new organizationalBrandingLocalization object."
author: "quievey"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.topic: reference
---

# Create organizationalBrandingLocalization
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [organizationalBrandingLocalization](../resources/organizationalBrandingLocalization.md) object. This creates a localized branding and at the same time, the default branding if it doesn't exist.

The default branding is created only once. It's loaded when a localized branding isn't configured for the user's browser language. To retrieve the default branding, see [Get branding](organizationalbranding-get.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "organizationalbranding_post_localizations" } -->
[!INCLUDE [permissions-table](../includes/permissions/organizationalbranding-post-localizations-permissions.md)]

[!INCLUDE [rbac-org-branding-apis-write](../includes/rbac-for-apis/rbac-org-branding-apis-write.md)]

## HTTP request
This request creates a new localization branding and a default branding if one doesn't already exist. 
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /organization/{organizationId}/branding/localizations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

The following table lists the properties that are required when you create the [organizationalBrandingLocalization](../resources/organizationalbrandinglocalization.md) object.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| id | String | An identifier that represents the locale specified using culture names. Culture names follow the RFC 1766 standard in the format "languagecode2-country/regioncode2". The portion "languagecode2" is a lowercase two-letter code derived from ISO 639-1 and "country/regioncode2" is an uppercase two-letter code derived from ISO 3166. For example, U.S. English is `en-US`. You can't create the default branding by setting the value of **id** to the String types `0` or `default`.  <br/><br/>**NOTE:** Multiple branding for a single locale are currently not supported. |

## Response

If successful, this method returns a `201 Created` response code and an [organizationalBrandingLocalization](../resources/organizationalbrandinglocalization.md) object in the response body.

## Examples

The following example creates a branding localization for French (`fr-FR`) localization. Any unspecified properties of the String type inherit from the value in the default branding object. For example, if the signInPageText in the default branding object is `null`, the signInPageText for the `fr-FR` branding created in this request will also be `null`. To override a `null` value without any text, use a string containing only whitespace.

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_organizationalbrandinglocalization"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations
Content-Type: application/json

{
    "backgroundColor":"#00000F",
    "id": "fr-FR",
    "signInPageText": " "
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-organizationalbrandinglocalization-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-organizationalbrandinglocalization-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-organizationalbrandinglocalization-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-organizationalbrandinglocalization-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-organizationalbrandinglocalization-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-organizationalbrandinglocalization-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-organizationalbrandinglocalization-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-organizationalbrandinglocalization-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBrandingLocalization"
} -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#organization('d69179bf-f4a4-41a9-a9de-249c0f2efb1d')/branding/localizations/$entity",
    "@odata.id": "https://graph.microsoft.com/v2/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/directoryObjects/$/Microsoft.DirectoryServices.Organization('d69179bf-f4a4-41a9-a9de-249c0f2efb1d')//localizations/fr-FR",
    "id": "fr-FR",
    "backgroundColor": " ",
    "backgroundImageRelativeUrl": null,
    "bannerLogoRelativeUrl": null,
    "cdnList": [],
    "signInPageText": " ",
    "squareLogoRelativeUrl": null,
    "squareLogoDarkRelativeUrl": null,
    "usernameHintText": " "
}
```
