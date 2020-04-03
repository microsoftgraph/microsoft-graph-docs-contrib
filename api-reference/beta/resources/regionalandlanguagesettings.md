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

An open type that represents a user's preferences for languages in various contexts, and regional locale and formatting that drives the default calendar, and formatting for date and time.

## Methods

| Method                                                          | Return Type                                                    | Description                                                                                  |
| :-------------------------------------------------------------- | :------------------------------------------------------------- | :------------------------------------------------------------------------------------------- |
| [Get](../api/regionalAndLanguageSettings-get.md)        | [regionalAndLanguageSettings](regionalAndLanguageSettings.md)  | Read properties and relationships of a **regionalAndLanguageSettings** object.               |                           |
| [Update](../api/regionalandlanguagesettings-update.md)  | [regionalAndLanguageSettings](regionalAndLanguageSettings.md)  | Update the **regionalAndLanguageSettings** object for a user.                                |

## Properties
|Property                     |Type                 |Description          |
|-----------------------------|---------------------|--------------------|
|defaultDisplayLanguage             |[localeInfo](localeinfo.md)                     |The  user's preferred user interface language (menus, buttons, ribbons, warning messages) for Microsoft web applications.<br><br>Returned by default. Not nullable.|
|authoringLanguages                 |localeInfo        |Prioritized list of languages the user reads and authors in.<br><br>Returned by default. Not nullable.|
|defaultTranslationLanguage         |localeInfo                   |The language a user expects to have documents, emails, and messages translated into.<br><br>Returned by default.|
|defaultSpeechInputLanguage         |localeInfo                   |The language a user expected to use as input for text to speech scenarios.<br><br>Returned by default.|
|defaultRegionalFormat              |localeInfo                     |The locale that drives the default date, time, and calendar formatting.<br><br>Returned by default.|
|regionalFormatOverrides            |[regionalFormatOverrides](regionalformatoverrides.md)    |Allows a user to override their defaultRegionalFormat with field specific formats.<br><br>Returned by default.|

## Relationships

| Relationship      | Type                                                            | Description                                 |
| :---------------- | :-------------------------------------------------------------- | :------------------------------------------ |
| regional formats  | [regionalFormatOverrides](regionalformatoverrides.md)   | Date and time formatting. Not nullable.     |

## JSON representation

The following is a JSON definition of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "",
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
<!-- {
  "type": "#page.annotation",
  "description": "regionalAndLanguageSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
