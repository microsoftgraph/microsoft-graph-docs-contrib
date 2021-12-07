---
title: "broadcastMeetingCaptionSettings resource type"
description: "Caption settings related to Teams live event"
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# broadcastMeetingCaptionSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Caption settings related to a [Microsoft Teams live event](/microsoftteams/teams-live-events/what-are-teams-live-events). Refer to [see also](#see-also) section for Teams client behavior of this feature.

## Properties

| Property             | Type              | Description                          |
|:---------------------|:------------------|:-------------------------------------|
| isCaptionEnabled     | Boolean           | Indicates if caption is enabled.     |
| spokenLanguage       | String            | The spoken language.                 |
| translationLanguages | String collection | The translation languages (up to 6). |

> [!TIP]
>
>- See following tables for supported language codes for spoken language and translation languages.
>- You can only provide up to 6 translation languages.
>- Translation language must be different from spoken language.

### spokenLanguage values

| Spoken language           | Value   |
|:--------------------------|:--------|
| Chinese (Simplified, PRC) | zh-Hans |
| Dutch (Netherlands)       | nl      |
| English (United States)   | en      |
| French (Canada)           | fr-ca   |
| French (France)           | fr      |
| German (Germany)          | de      |
| Hindi (India)             | hi      |
| Italian (Italy)           | it      |
| Japanese (Japan)          | ja      |
| Korean (Korea)            | ko      |
| Portuguese (Brazil)       | pt      |
| Russian (Russia)          | ru      |
| Spanish (Spain)           | es      |
| Spanish (Mexico)          | es-mx   |
| Swedish (Sweden)          | sv      |

### translationLanguaes values

| Translation language                     | Value   |
|------------------------------------------|---------|
| Afrikaans (South Africa)                 | af      |
| Arabic (Egypt)                           | ar      |
| Bosnia (Latin)                           | bs      |
| Bulgarian (Bulgaria)                     | bg      |
| Catalan                                  | ca      |
| Chinese (Simplified, PRC)                | zh-Hans |
| Chinese (Tranditional, Hong Kong S.A.R.) | yue     |
| Chinese (Tranditional)                   | zh-Hant |
| Creole (Haiti)                           | ht      |
| Croatian (Croatia)                       | hr      |
| Czech (Czech Republic)                   | cs      |
| Danish (Denmark)                         | da      |
| Dutch (Netherlands)                      | nl      |
| English (United States)                  | en      |
| Estonian (Estonia)                       | et      |
| Filipino (Philippines)                   | fil     |
| Finnish (Finland)                        | fi      |
| French (Canada)                          | fr-ca   |
| French (France)                          | fr      |
| German (Germany)                         | de      |
| Greek (Greece)                           | el      |
| Hebrew (Israel)                          | he      |
| Hindi (India)                            | hi      |
| Hmong                                    | mww     |
| Hungarian (Hungary)                      | hu      |
| Indonesian                               | id      |
| Italian (Italy)                          | it      |
| Japanese (Japan)                         | ja      |
| Klingon                                  | tlh     |
| Korean (Korea)                           | ko      |
| Latvian (Latvia)                         | lv      |
| Lithuanian (Lithuania)                   | lt      |
| Malagasy (Madagascar)                    | mg      |
| Malay (Malaysia)                         | ms      |
| Maltese (Malta)                          | mt      |
| Norwegian (Norway)                       | nb      |
| Persian (Iran)                           | fa      |
| Polish (Poland)                          | pl      |
| Portuguese (Brazil)                      | pt      |
| Querétaro Otomi                          | otq     |
| Romanian (Romania)                       | ro      |
| Russian (Russia)                         | ru      |
| Samoan                                   | sm      |
| Serbian (Latin)                          | sr-latn |
| Serbian Cyrillic                         | sr-cyrl |
| Slovak (Slovakia)                        | sk      |
| Slovenian                                | sl      |
| Spanish (Spain)                          | es      |
| Swahili (Kenya)                          | sw      |
| Swedish (Sweden)                         | sv      |
| Tahitian                                 | ty      |
| Thai (Thailand)                          | th      |
| Tongan                                   | to      |
| Turkish (Turkey)                         | tr      |
| Ukrainian (Ukraine)                      | uk      |
| Urdu (Islamic Republic of Pakistan)      | ur      |
| Vietnamese (Vietnam)                     | vi      |
| Welsh (United Kingdom)                   | cy      |
| Yucatec Maya                             | yua     |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.broadcastMeetingCaptionSettings"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.broadcastMeetingCaptionSettings",
  "isCaptionEnabled": "Boolean",
  "spokenLanguage": "String",
  "translationLanguages": [
    "String"
  ]
}
```

## See also

- [Use live captions in a live event](https://support.microsoft.com/en-us/office/use-live-captions-in-a-live-event-1d6778d4-6c65-4189-ab13-e2d77beb9e2a)
