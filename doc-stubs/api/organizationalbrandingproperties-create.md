---
title: "Create organizationalBrandingProperties"
description: "Create a new organizationalBrandingProperties object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create organizationalBrandingProperties
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md) object.

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
POST ** Collection URI for Microsoft.DirectoryServices.organizationalBrandingProperties not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md) object.

The following table shows the properties that are required when you create the [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|backgroundColor|String|**TODO: Add Description**|
|backgroundImage|Stream|**TODO: Add Description**|
|backgroundImageRelativeUrl|String|**TODO: Add Description**|
|bannerLogo|Stream|**TODO: Add Description**|
|bannerLogoRelativeUrl|String|**TODO: Add Description**|
|cdnList|String collection|**TODO: Add Description**|
|signInPageText|String|**TODO: Add Description**|
|squareDarkLogo|Stream|**TODO: Add Description**|
|squareDarkLogoRelativeUrl|String|**TODO: Add Description**|
|squareLogo|Stream|**TODO: Add Description**|
|squareLogoRelativeUrl|String|**TODO: Add Description**|
|usernameHintText|String|**TODO: Add Description**|
|customAccountResetCredentialsUrl|String|**TODO: Add Description**|
|customCannotAccessYourAccountText|String|**TODO: Add Description**|
|customCannotAccessYourAccountUrl|String|**TODO: Add Description**|
|customForgotMyPasswordText|String|**TODO: Add Description**|
|customPrivacyAndCookiesText|String|**TODO: Add Description**|
|customPrivacyAndCookiesUrl|String|**TODO: Add Description**|
|customResetItNowText|String|**TODO: Add Description**|
|customTermsOfUseText|String|**TODO: Add Description**|
|customTermsOfUseUrl|String|**TODO: Add Description**|
|favicon|Stream|**TODO: Add Description**|
|faviconRelativeUrl|String|**TODO: Add Description**|
|headerBackgroundColor|String|**TODO: Add Description**|
|loginPageTextVisibilitySettings|[Microsoft.DirectoryServices.loginPageTextVisibilitySettings](../resources/loginpagetextvisibilitysettings.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and an [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_organizationalbrandingproperties_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for Microsoft.DirectoryServices.organizationalBrandingProperties not found
Content-Type: application/json
Content-length: 1097

{
  "@odata.type": "#Microsoft.DirectoryServices.organizationalBrandingProperties",
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
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.organizationalBrandingProperties"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.DirectoryServices.organizationalBrandingProperties",
  "id": "bc4140ef-40ef-bc41-ef40-41bcef4041bc",
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
```

