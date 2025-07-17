---
title: "parentalControlSettings resource type"
description: "Specifies parental control settings for an application. These settings control the consent experience."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-applications"
author: "sureshja"
ms.date: 03/21/2024
---

# parentalControlSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies parental control settings for an application. These settings control the consent experience.

## Properties

| Property | Type | Description |
:---------------|:--------|:----------|
|countriesBlockedForMinors|String collection| Specifies the [two-letter ISO country codes](https://www.iso.org/iso-3166-country-codes.html). Access to the application will be blocked for minors from the countries specified in this list.|
|legalAgeGroupRule| String | Specifies the legal age group rule that applies to users of the app. Can be set to one of the following values: <table><tr><th>Value</th><th>Description</th></tr><tr><td>Allow</td><td>Default. Enforces the legal minimum. This means parental consent is required for minors in the European Union and Korea.</td></tr><tr><td>RequireConsentForPrivacyServices</td><td>Enforces the user to specify date of birth to comply with COPPA rules. </td></tr><tr><td>RequireConsentForMinors</td><td>Requires parental consent for ages below 18, regardless of country/region minor rules.</td></tr><tr><td>RequireConsentForKids</td><td>Requires parental consent for ages below 14, regardless of country/region minor rules.</td></tr><tr><td>BlockMinors</td><td>Blocks minors from using the app.</td></tr></table> |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.parentalControlSettings"
}-->
```json
{
  "countriesBlockedForMinors": [ "String" ],
  "legalAgeGroupRule": "String"
}

```


