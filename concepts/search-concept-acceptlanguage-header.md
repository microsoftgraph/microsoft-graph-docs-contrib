---
title: "Supported Language Codes"
description: "Supported Language Codes in Microsoft Graph Search API."
author: "cxiang"
ms.localizationpriority: medium
ms.prod: "search"
---

# Supported Language Codes
The Accept-Language request HTTP header indicates list of acceptable human languages for response. The value will be leveraged for localization on server side. The following list shows the Accept-Language header supported by Microsoft Graph APIs.
| Accept-Language string | Language |
|:---|:---|
|af|Afrikaans|
|am|Amharic|
|ar-sa|Arabic (Saudi Arabia)|
|as|Assamese|
|az-Latn|Azerbaijani (Latin)|
|be|Belarusian|
|bg|Bulgarian|
|bn-BD|Bangla (Bangladesh)|
|bn-IN|Bangla (India)|
|bs|Bosnian (Latin)|
|ca|Catalan Spanish|
|ca-ES-valencia|Valencian|
|cs|Czech|
|cy|Welsh|
|da|Danish|
|de|German (Germany)|
|de-de|German (Germany)|
|el|Greek|
|en-GB|English (United Kingdom)|
|en-US|English (United States)|
|es|Spanish (Spain)|
|es-ES|Spanish (Spain)|
|es-US|Spanish (United States)|
|es-MX|Spanish (Mexico)|
|et|Estonian|
|eu|Basque|
|fa|Persian|
|fi|Finnish|
|fil-Latn|Filipino|
|fr|French (France)|
|fr-FR|French (France)|
|fr-CA|French (Canada)|
|ga|Irish|
|gd-Latn|Scottish Gaelic|
|gl|Galician|
|gu|Gujarati|
|ha-Latn|Hausa (Latin)|
|he|Hebrew|
|hi|Hindi|
|hr|Croatian|
|hu|Hungarian|
|hy|Armenian|
|id|Indonesian|
|ig-Latn|Igbo|
|is|Icelandic|
|it|Italian (Italy)|
|it-it|Italian (Italy)|
|ja|Japanese|
|ka|Georgian|
|kk|Kazakh|
|km|Khmer|
|kn|Kannada|
|ko|Korean|
|kok|Konkani|
|ku-Arab|Central Kurdish|
|ky-Cyrl|Kyrgyz|
|lb|Luxembourgish|
|lt|Lithuanian|
|lv|Latvian|
|mi-Latn|Maori|
|mk|Macedonian|
|ml|Malayalam|
|mn-Cyrl|Mongolian (Cyrillic)|
|mr|Marathi|
|ms|Malay (Malaysia)|
|mt|Maltese|
|nb|Norwegian (Bokmål)|
|ne|Nepali (Nepal)|
|nl|Dutch (Netherlands)|
|nl-BE|Dutch (Netherlands)|
|nn|Norwegian (Nynorsk)|
|nso|Sesotho sa Leboa|
|or|Odia|
|pa|Punjabi (Gurmukhi)|
|pa-Arab|Punjabi (Arabic)|
|pl|Polish|
|prs-Arab|Dari|
|pt-BR|Portuguese (Brazil)|
|pt-PT|Portuguese (Portugal)|
|qut-Latn|K’iche’|
|quz|Quechua (Peru)|
|ro|Romanian (Romania)|
|ru|Russian|
|rw|Kinyarwanda|
|sd-Arab|Sindhi (Arabic)|
|si|Sinhala|
|sk|Slovak|
|sl|Slovenian|
|sq|Albanian|
|sr-Cyrl-BA|Serbian (Cyrillic, Bosnia and Herzegovina)|
|sr-Cyrl-RS|Serbian (Cyrillic, Serbia)|
|sr-Latn-RS|Serbian (Latin, Serbia)|
|sv|Swedish (Sweden)|
|sw|Kiswahili|
|ta|Tamil|
|te|Telugu|
|tg-Cyrl|Tajik (Cyrillic)|
|th|Thai|
|ti|Tigrinya|
|tk-Latn|Turkmen (Latin)|
|tn|Setswana|
|tr|Turkish|
|tt-Cyrl|Tatar (Cyrillic)|
|ug-Arab|Uyghur|
|uk|Ukrainian|
|ur|Urdu|
|uz-Latn|Uzbek (Latin)|
|vi|Vietnamese|
|wo|Wolof|
|xh|isiXhosa|
|yo-Latn|Yoruba|
|zh-Hans|Chinese (Simplified)|
|zh-Hant|Chinese (Traditional)|
|zu|isiZulu|

## Examples
We will support the format language-region e.g. en-us. Only the first value is used for language related processing.

```HTTP
POST /search/query
Content-Type: application/json
Accept-Language: en-us
```

## Known limitations
- Compliance with HTTP standards.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
