---
title: "List localizations"
description: "Get the organizationalBrandingLocalization resources from the localizations navigation property."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List localizations
Namespace: microsoft.graph

Retrieve all localization branding objects, including the default branding.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | User.Read, Organization.Read.All, User.Read.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

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
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [organizationalBrandingLocalization](../resources/organizationalbrandinglocalization.md) objects in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_organizationalbrandinglocalization"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/organization/dcd219dd-bc68-4b9b-bf0b-4a33a796be35/branding/localizations/
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-organizationalbrandinglocalization-csharp-snippets.md)]
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#organization('84841066-274d-4ec0-a5c1-276be684bdd3')/branding/localizations",
    "value": [
        {
            "@odata.id": "https://graph.microsoft.com/v2/84841066-274d-4ec0-a5c1-276be684bdd3/directoryObjects/$/Microsoft.DirectoryServices.Organization('84841066-274d-4ec0-a5c1-276be684bdd3')//localizations/0",
            "id": "0",
            "backgroundColor": "",
            "backgroundImageRelativeUrl": "c1c6b6c8-ctwpxrbizfcsectmtir3yvna3hrhaib9j7ueqv0ldne/logintenantbranding/0/illustration?ts=637635061764954395",
            "bannerLogoRelativeUrl": "c1c6b6c8-ctwpxrbizfcsectmtir3yvna3hrhaib9j7ueqv0ldne/logintenantbranding/0/bannerlogo?ts=637635061773126717",
            "cdnList": [
                "secure.aadcdn.microsoftonline-p.com",
                "aadcdn.msftauthimages.net",
                "aadcdn.msauthimages.net"
            ],
            "signInPageText": "Contoso",
            "squareLogoRelativeUrl": "c1c6b6c8-ctwpxrbizfcsectmtir3yvna3hrhaib9j7ueqv0ldne/logintenantbranding/0/tilelogo?ts=637635061781098977",
            "usernameHintText": ""
        },
        {
            "@odata.id": "https://graph.microsoft.com/v2/84841066-274d-4ec0-a5c1-276be684bdd3/directoryObjects/$/Microsoft.DirectoryServices.Organization('84841066-274d-4ec0-a5c1-276be684bdd3')//localizations/fr",
            "id": "fr",
            "backgroundColor": "#FFFF33",
            "backgroundImageRelativeUrl": null,
            "bannerLogoRelativeUrl": null,
            "cdnList": [],
            "signInPageText": "Welcome",
            "squareLogoRelativeUrl": null,
            "usernameHintText": "hint"
        }
    ]
}
```

