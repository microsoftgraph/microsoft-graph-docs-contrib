---
title: "Update learningProvider"
description: "Update the properties of a learningProvider object."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update learningProvider
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [learningProvider](../resources/learningprovider.md) object.

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
PATCH /employeeExperience/learningProviders/{learningProviderId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**Display Name to be shown in Viva Learning** Required.|
|isEnabled|Boolean|**TODO: State of the provider** Optional.|
|loginWebUrl|String|**TODO: Add Description** Optional.|
|longLogoWebUrlForDarkTheme|String|**long logo url for the dark mode. Needs to be publicly accessible image. This image would be saved to the Blob storage of Viva Learning for rendering within Viva Learning app** Required.|
|longLogoWebUrlForLightTheme|String|**long logo url for the light mode. Needs to be publicly accessible image. This image would be saved to the Blob storage of Viva Learning for rendering within Viva Learning app** Required.|
|squareLogoWebUrlForDarkTheme|String|**square logo url for the dark mode. Needs to be publicly accessible image. This image would be saved to the Blob storage of Viva Learning for rendering within Viva Learning app** Required.|
|squareLogoWebUrlForLightTheme|String|**square logo url for the light mode. Needs to be publicly accessible image. This image would be saved to the Blob storage of Viva Learning for rendering within Viva Learning app** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [learningProvider](../resources/learningprovider.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_learningprovider"
}
-->
``` http
PATCH /employeeExperience/learningProviders/{id} HTTP/1.1 Content-Type: application/json

{
    "displayName": "Microsoft",
    "squareLogoWebUrlForDarkTheme": "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
    "longLogoWebUrlForDarkTheme": "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
    "squareLogoWebUrlForLightTheme": "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
    "longLogoWebUrlForLightTheme": "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png",
    "isEnabled": false
}

```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
Returns 204 No Content


```

