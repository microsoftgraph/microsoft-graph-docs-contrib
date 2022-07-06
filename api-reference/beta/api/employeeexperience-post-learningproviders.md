---
title: "Create learningProvider"
description: "Create a new learningProvider object."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create learningProvider
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [learningProvider](../resources/learningprovider.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**provider.readwrite**|
|Delegated (personal Microsoft account)|**Not Supported**|
|Application|**Not Supported**|

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

You can specify the following properties when creating a **learningProvider**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**Display Name to be shown in Viva Learning** Required.|
|isEnabled|Boolean|**State of the provider** Optional.|
|loginWebUrl|String|**TODO: Add Description** Optional.|
|longLogoWebUrlForDarkTheme|String|**long logo url for the dark mode. Needs to be publicly accessible image. This image would be saved to the Blob storage of Viva Learning for rendering within Viva Learning app** Required.|
|longLogoWebUrlForLightTheme|String|**long logo url for the light mode. Needs to be publicly accessible image. This image would be saved to the Blob storage of Viva Learning for rendering** Required.|
|squareLogoWebUrlForDarkTheme|String|**square logo url for the dark mode. Needs to be publicly accessible image. This image would be saved to the Blob storage of Viva Learning for rendering within Viva Learning app** Required.|
|squareLogoWebUrlForLightTheme|String|**square logo url for the light mode. Needs to be publicly accessible image. This image would be saved to the Blob storage of Viva Learning for rendering within Viva Learning app** Required.|



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
``` POST /employeeExperience/learningProviders HTTP/1.1 Content-Type: application/json
{
    "displayName": "Microsoft",
    "squareLogoWebUrlForDarkTheme": "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
    "longLogoWebUrlForDarkTheme": "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
    "squareLogoWebUrlForLightTheme": "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
    "longLogoWebUrlForLightTheme": "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
    "isEnabled": true
}

```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.vivaLearning.learningProvider"
}
-->
``` http
Returns 201 - Created
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#learningProviders/$entity",
    "id": "ba9790ef-21d5-4c17-808c-acda55230253",
    "displayName": "Microsoft",
    "squareLogoWebUrlForDarkTheme": "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
    "longLogoWebUrlForDarkTheme": "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
    "squareLogoWebUrlForLightTheme": "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
    "longLogoWebUrlForLightTheme": "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
    "isEnabled": true
}
```

