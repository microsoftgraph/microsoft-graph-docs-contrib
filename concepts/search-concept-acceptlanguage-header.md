---
title: "Supported language codes"
description: "Get a list of the supported language codes for the Microsoft Search API in Microsoft Graph."
author: "cxiang"
ms.localizationpriority: medium
ms.prod: "search"
---

# Supported language codes

For Microsoft Search APIs in Microsoft Graph, the `Accept-Language` HTTP request header provides a list of acceptable human languages for the response. The value is used for localization on the server side. The following table lists the supported `Accept-Language` header values.

| Accept-Language header string | Language |
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
We will support the format language-region e.g. en-US. Multiple languages also can be listed by using commas and given an associated quality value which represents an estimate of the user's preference for the languages specified by that range e.g. en-US, fr-FR;q=0.9. The quality value defaults to "q=1".

```http
POST /search/query
Content-Type: application/json
Accept-Language: en-US, fr-FR;q=0.9
```

## Known limitations
- If no Accept-Language header is present in the request, the server assumes that all languages are equally acceptable. If an Accept-Language header is present, then all languages which are assigned a quality factor greater than 0 are acceptable.

## See also

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
