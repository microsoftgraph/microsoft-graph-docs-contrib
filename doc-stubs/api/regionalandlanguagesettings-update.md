---
title: "Update regionalAndLanguageSettings"
description: "Update the properties of a regionalAndLanguageSettings object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update regionalAndLanguageSettings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [regionalAndLanguageSettings](../resources/regionalandlanguagesettings.md) object.

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
PATCH /userSettings/regionalAndLanguageSettings
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
|defaultDisplayLanguage|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.localeInfo](../resources/localeinfo.md)|**TODO: Add Description** Optional.|
|authoringLanguages|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.localeInfo](../resources/localeinfo.md) collection|**TODO: Add Description** Optional.|
|defaultTranslationLanguage|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.localeInfo](../resources/localeinfo.md)|**TODO: Add Description** Optional.|
|defaultSpeechInputLanguage|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.localeInfo](../resources/localeinfo.md)|**TODO: Add Description** Optional.|
|defaultRegionalFormat|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.localeInfo](../resources/localeinfo.md)|**TODO: Add Description** Optional.|
|regionalFormatOverrides|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.regionalFormatOverrides](../resources/regionalformatoverrides.md)|**TODO: Add Description** Optional.|
|translationPreferences|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.translationPreferences](../resources/translationpreferences.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [regionalAndLanguageSettings](../resources/regionalandlanguagesettings.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_regionalandlanguagesettings"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/userSettings/regionalAndLanguageSettings
Content-Type: application/json
Content-length: 716

{
  "@odata.type": "#microsoft.graph.regionalAndLanguageSettings",
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.regionalAndLanguageSettings",
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

