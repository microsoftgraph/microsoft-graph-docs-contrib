---
title: "Get organizationalBranding"
description: "Read the properties and relationships of an organizationalBranding object."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get organizationalBranding
Namespace: microsoft.graph

Retrieve the default organizational branding object, if the **Accept-Language** header is not specified. If no organizational branding object has been created, this method returns a `404 Not Found` error. A default branding object is automatically created only once when you (Create organizationalBrandingLocalization](organizationalbranding-post-localizations.md).

If the **Accept-Language** header is specified, this method retrieves the branding for the specified locale.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | User.Read, Organization.Read.All, User.ReadBasic.All, User.Read.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /organization/{organizationId}/branding
```

## Optional query parameters
This method supports only the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Accept-Language|A valid ISO 639-1 locale. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [organizationalBranding](../resources/organizationalbranding.md) object in the response body. If no default branding object exists, this method returns a `404 Not Found` response code.

## Examples

### Example 1: Get the default branding

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_organizationalbranding"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/organization/84841066-274d-4ec0-a5c1-276be684bdd3/branding
```

#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBranding"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#branding",
    "@odata.id": "https://graph.microsoft.com/v2/84841066-274d-4ec0-a5c1-276be684bdd3/directoryObjects/$/Microsoft.DirectoryServices.Organization('84841066-274d-4ec0-a5c1-276be684bdd3')/branding/en-US",
    "id": "en-US",
    "backgroundColor": "#FFFF33",
    "backgroundImageRelativeUrl": null,
    "bannerLogoRelativeUrl": null,
    "cdnList": [],
    "signInPageText": "Welcome",
    "squareLogoRelativeUrl": null,
    "usernameHintText": "hint"
}
```


### Example 2: Get organizational branding but no branding configured

#### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_organizationalbranding_Error"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding
```

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 404 Not Found
```

### Example 3: Get organizational branding for the French locale

The **Accept-Language** header is used to apply a particular localization to the branding. If the Accept-Language header is specified in the request, the response will include the Content-Language header, unless it is `und`.

#### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_organizationalbranding_locale"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding
Accept-Language: fr
```

#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBranding"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Language: fr

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#branding",
    "@odata.id": "https://graph.microsoft.com/v2/84841066-274d-4ec0-a5c1-276be684bdd3/directoryObjects/$/Microsoft.DirectoryServices.Organization('84841066-274d-4ec0-a5c1-276be684bdd3')/branding/fr",
    "id": "fr",
    "backgroundColor": "#FFFF33",
    "backgroundImageRelativeUrl": null,
    "bannerLogoRelativeUrl": null,
    "cdnList": [],
    "signInPageText": " ",
    "squareLogoRelativeUrl": null,
    "usernameHintText": " "
}
```

### Example 4: Get bannerLogo for the French locale
Returns **bannerLogo** for the fr locale if it exists. If the localization does not exist, returns the default **bannerLogo**.

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_organizationalbranding_5"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/bannerLogo
Accept-Language: fr
```

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBranding"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "bannerLogo@odata.mediaContentType":"image/*",
    "bannerLogo@odata.mediaReadLink": "https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/bannerLogo",
    "bannerLogo@odata.mediaEditLink": "https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/fr/bannerLogo",
}
```

### Example 5: Get bannerLogo when no bannerLogo is configured

This example shows a request for a property that does not exist on the default branding or the language specified in the Accept-Language header.

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_organizationalbranding_6"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/bannerLogo
Accept-Language: de
```

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```
