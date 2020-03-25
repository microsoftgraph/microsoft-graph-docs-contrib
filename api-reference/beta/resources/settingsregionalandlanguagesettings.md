---
title: "regionalAndLanguageSettings resource type"
description: "A resource representing a users regional and language preferences"
localization_priority: Normal
author: "jasonbro"
ms.prod: "settings"
doc_type: resourcePageType
---

# regionalAndLangaugesettings resource type

Namespace: microsoft.graph

A resource representing a users regional and language preferences.

## Methods

| Method                                                          | Return Type                                                    | Description                                                                                  |
| :-------------------------------------------------------------- | :------------------------------------------------------------- | :------------------------------------------------------------------------------------------- |
| [Get](../api/settingsregionalAndLanguageSettings-get.md)        | [regionalAndLanguageSettings](regionalAndLanguageSettings.md)  | Read properties and relationships of a **regionalAndLanguageSettings** object.               |
| [Create](../api/settingsregionalandlanguagesettings-create.md)  | [regionalAndLanguageSettings](regionalAndLanguageSettings.md)  | Create the **regionalAndLanguageSettings** object for a user.                                |
| [Update](../api/settingsregionalandlangaugesettings-update.md)  | [regionalAndLanguageSettings](regionalAndLanguageSettings.md)  | Update the **regionalAndLanguageSettings** object for a user.                                |

## Properties
|Property                           |Type                                       |Description                                                                         |Required       |ReadOnly       |Nullable   |
|-----------------------------------|-------------------------------------------|------------------------------------------------------------------------------------|---------------|---------------|-----------|
|defaultDisplayLanguage             |microsoft.graph.locale                     |The language the user expects to view the Microsoft Web application.                |Yes            |No             |Yes        |
|authoringLanguages                 |Collection(microsoft.graph.locale)         |Prioritized list of languages that the user understands and can author in.          |Yes            |No             |No         |
|defaultTranslationLanguage         |microsoft.graph.locale                     |The language a user expects to have documents, emails, and messages translated into.|No             |No             |Yes        |
|defaultSpeechInputLanguage         |microsoft.graph.locale                     |The language a user expected to use as input for text to speech scenarios           |No             |No             |Yes        |
|defaultRegionalFormat              |microsoft.graph.locale                     |The locale that drives the default date, time, and calendar formatting.             |No             |No             |Yes        |
|regionalFormatOverrides            |microsoft.graph.regionalFormatOverrides    |Allows a user to override their defaultRegionalFormat with field specific formats.  |No             |No             |No         |

## Relationships

| Relationship      | Type                                                            | Description                                 |
| :---------------- | :-------------------------------------------------------------- | :------------------------------------------ |
| regional formats  | [regionalFormatOverrides](settingsregionalformatoverrides.md)   | Date and time formatting. Not nullable.     |

## JSON representation

The following is a JSON definition of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.settings.regionalAndLanguageSettings",
  "@odata.type": "microsoft.graph.settings.regionalAndLanguageSettings"
}-->

```json
{
    "defaultDisplayLanguage": {"odata.type":"microsoft.graph.locale"},
    "authoringLanguages":[{"odata.type":"microsoft.graph.locale"}] ,
    "defaultTranslationLanguage": {"odata.type":"microsoft.graph.locale"},
    "defaultSpeechInputLanguage": {"odata.type":"microsoft.graph.locale"},
    "defaultRegionalFormat":{"odata.type":"microsoft.graph.locale"} ,
    "regionalFormatOverrides":[{"odata.type":"microsofr.graph.regionalFormatOverrides"}]
}
```
The following is a JSON representation with examples of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.settings.regionalAndLanguageSettings",
  "@odata.type": "microsoft.graph.settings.regionalAndLanguageSettings"
}-->

```json
"defaultDisplayLanguage": {
        "locale": "en-US",
        "displayName": "English (United States)"
    },
    "authoringLanguages": [
        {
            "locale": "fr-FR",
            "displayName": "French (France)"
        },
        {
            "locale": "de-DE",
            "displayName": "German (Germany)"
        },
    ],
    "defaultTranslationLanguage": {
        "locale": "en-US",
        "displayName": "English (United States)"
    },
    "defaultSpeechInputLanguage": {
        "locale": "en-US",
        "displayName": "English (United States)"
    },
    "defaultRegionalFormat": {
        "locale": "en-GB",
        "displayName": "English (United Kingdom)"
    },
    "regionalFormatOverrides": {
        "calendar": "Gregorian Calendar",
        "firstDayOfWeek": "Sunday",
        "shortDateFormat": "yyyy-MM-dd",
        "longDateFormat": "dddd, MMMM d, yyyy",
        "shortTimeFormat": "HH:mm",
        "longTimeFormat": "h:mm:ss tt",
        "timeZone": "Pacific Standard Time"
    }
}
```
<!-- {
  "type": "#page.annotation",
  "description": "regionalAndLanguageSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
