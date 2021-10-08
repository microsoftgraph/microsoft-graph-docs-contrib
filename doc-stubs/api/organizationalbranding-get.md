---
title: "Get organizationalBranding"
description: "Read the properties and relationships of an organizationalBranding object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get organizationalBranding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [organizationalBranding](../resources/organizationalbranding.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /branding
GET /organization/{organizationId}/branding
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [organizationalBranding](../resources/organizationalbranding.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_organizationalbranding"
}
-->
``` http
GET https://graph.microsoft.com/beta/branding
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.organizationalBranding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#Microsoft.DirectoryServices.organizationalBranding",
    "id": "45437efe-7efe-4543-fe7e-4345fe7e4345",
    "backgroundColor": "String",
    "backgroundImage": "Stream",
    "backgroundImageRelativeUrl": "String",
    "bannerLogo": "Stream",
    "bannerLogoRelativeUrl": "String",
    "cdnList": [
      "String"
    ],
    "signInPageText": "String",
    "squareDarkLogo": "Stream",
    "squareDarkLogoRelativeUrl": "String",
    "squareLogo": "Stream",
    "squareLogoRelativeUrl": "String",
    "usernameHintText": "String",
    "customAccountResetCredentialsUrl": "String",
    "customCannotAccessYourAccountText": "String",
    "customCannotAccessYourAccountUrl": "String",
    "customForgotMyPasswordText": "String",
    "customPrivacyAndCookiesText": "String",
    "customPrivacyAndCookiesUrl": "String",
    "customResetItNowText": "String",
    "customTermsOfUseText": "String",
    "customTermsOfUseUrl": "String",
    "favicon": "Stream",
    "faviconRelativeUrl": "String",
    "headerBackgroundColor": "String",
    "loginPageTextVisibilitySettings": {
      "@odata.type": "microsoft.graph.loginPageTextVisibilitySettings"
    }
  }
}
```

