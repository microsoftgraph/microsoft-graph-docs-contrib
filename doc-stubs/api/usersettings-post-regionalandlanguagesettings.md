---
title: "Create regionalAndLanguageSettings"
description: "Create a new regionalAndLanguageSettings object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create regionalAndLanguageSettings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [regionalAndLanguageSettings](../resources/regionalandlanguagesettings.md) object.

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
POST ** Collection URI for Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.regionalAndLanguageSettings not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [regionalAndLanguageSettings](../resources/regionalandlanguagesettings.md) object.

You can specify the following properties when creating a **regionalAndLanguageSettings**.

|Property|Type|Description|
|:---|:---|:---|
|defaultDisplayLanguage|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.localeInfo](../resources/localeinfo.md)|**TODO: Add Description** Optional.|
|authoringLanguages|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.localeInfo](../resources/localeinfo.md) collection|**TODO: Add Description** Optional.|
|defaultTranslationLanguage|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.localeInfo](../resources/localeinfo.md)|**TODO: Add Description** Optional.|
|defaultSpeechInputLanguage|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.localeInfo](../resources/localeinfo.md)|**TODO: Add Description** Optional.|
|defaultRegionalFormat|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.localeInfo](../resources/localeinfo.md)|**TODO: Add Description** Optional.|
|regionalFormatOverrides|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.regionalFormatOverrides](../resources/regionalformatoverrides.md)|**TODO: Add Description** Optional.|
|translationPreferences|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.translationPreferences](../resources/translationpreferences.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [regionalAndLanguageSettings](../resources/regionalandlanguagesettings.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_regionalandlanguagesettings_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.regionalAndLanguageSettings not found
Content-Type: application/json
Content-length: 750

{
  "@odata.type": "#Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.regionalAndLanguageSettings",
  "defaultDisplayLanguage": {
    "@odata.type": "microsoft.graph.localeInfo"
  },
  "authoringLanguages": [
    {
      "@odata.type": "microsoft.graph.localeInfo"
    }
  ],
  "defaultTranslationLanguage": {
    "@odata.type": "microsoft.graph.localeInfo"
  },
  "defaultSpeechInputLanguage": {
    "@odata.type": "microsoft.graph.localeInfo"
  },
  "defaultRegionalFormat": {
    "@odata.type": "microsoft.graph.localeInfo"
  },
  "regionalFormatOverrides": {
    "@odata.type": "microsoft.graph.regionalFormatOverrides"
  },
  "translationPreferences": {
    "@odata.type": "microsoft.graph.translationPreferences"
  }
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.regionalAndLanguageSettings"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.regionalAndLanguageSettings",
  "defaultDisplayLanguage": {
    "@odata.type": "microsoft.graph.localeInfo"
  },
  "authoringLanguages": [
    {
      "@odata.type": "microsoft.graph.localeInfo"
    }
  ],
  "defaultTranslationLanguage": {
    "@odata.type": "microsoft.graph.localeInfo"
  },
  "defaultSpeechInputLanguage": {
    "@odata.type": "microsoft.graph.localeInfo"
  },
  "defaultRegionalFormat": {
    "@odata.type": "microsoft.graph.localeInfo"
  },
  "regionalFormatOverrides": {
    "@odata.type": "microsoft.graph.regionalFormatOverrides"
  },
  "translationPreferences": {
    "@odata.type": "microsoft.graph.translationPreferences"
  }
}
```

