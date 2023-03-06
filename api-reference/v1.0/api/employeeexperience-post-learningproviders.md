---
title: "Create learningProvider"
description: "Create a new learningProvider object and register it with Viva Learning using the specified display name and logos for different themes."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: apiPageType
---

# Create learningProvider

Namespace: microsoft.graph

Create a new [learningProvider](../resources/learningprovider.md) object and register it with Viva Learning using the specified display name and logos for different themes.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LearningProvider.ReadWrite|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /employeeExperience/learningProviders
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [learningProvider](../resources/learningprovider.md) object.

You can specify the following properties when you create a **learningProvider**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name that appears in Viva Learning. Required.|
|loginWebUrl|String|Authentication URL to access the courses for the provider. Optional.|
|longLogoWebUrlForDarkTheme|String|The long logo URL for the dark mode that needs to be a publicly accessible image. This image would be saved to the blob storage of Viva Learning for rendering within the Viva Learning app. Required.|
|longLogoWebUrlForLightTheme|String|The long logo URL for the light mode that needs to be a publicly accessible image. This image would be saved to the blob storage of Viva Learning for rendering within the Viva Learning app. Required.|
|squareLogoWebUrlForDarkTheme|String|The square logo URL for the dark mode that needs to be a publicly accessible image. This image would be saved to the blob storage of Viva Learning for rendering within the Viva Learning app. Required.|
|squareLogoWebUrlForLightTheme|String|The square logo URL for the light mode that needs to be a publicly accessible image. This image would be saved to the blob storage of Viva Learning for rendering within the Viva Learning app. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [learningProvider](../resources/learningprovider.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "create_learningprovider_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/employeeExperience/learningProviders
Content-Type: application/json

{
    "displayName": "Microsoft",
    "squareLogoWebUrlForDarkTheme": "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
    "longLogoWebUrlForDarkTheme": "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
    "squareLogoWebUrlForLightTheme": "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
    "longLogoWebUrlForLightTheme": "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
    "loginWebUrl": "https://www.linkedin.com/learning-login/teams"
}
```

### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.learningProvider"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#learningProviders/$entity",
    "id": "ba9790ef-21d5-4c17-808c-acda55230253",
    "displayName": "Microsoft",
    "squareLogoWebUrlForDarkTheme": "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
    "longLogoWebUrlForDarkTheme": "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
    "squareLogoWebUrlForLightTheme": "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
    "longLogoWebUrlForLightTheme": "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
    "loginWebUrl": "https://www.linkedin.com/learning-login/teams"
}
```
