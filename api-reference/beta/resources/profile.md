---
title: "profile resource type"
description: "The user profile resource type aggregates information about a user in a convenient group of entities and collections."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# profile resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The [profile](profile.md) entityset represents properties about a user that are descriptive of the user and which are surfaced in shared people experiences across Microsoft 365 and 3rd party services and experiences through Microsoft Graph. 

## Methods

| Method                                                                     | Return Type                                                    | Description                                                                          |
|:---------------------------------------------------------------------------|:---------------------------------------------------------------|:-------------------------------------------------------------------------------------|
| [Get profile](../api/profile-get.md)                                       | [profile](profile.md)                                          | Read properties and relationships of profile object.                                 |
| [List account](../api/profile-list-account.md)                             | [userAccountInformation](useraccountinformation.md) collection | Get a userAccountInformation object collection.                                      |
| [Create personAnniversary](../api/profile-post-anniversaries.md)           | [personAnniversary](personanniversary.md)                      | Create a new personAnniversary by posting to the anniversaries collection.           |
| [List anniversaries](../api/profile-list-anniversaries.md)                 | [personAnniversary](personanniversary.md) collection           | Get a personAnniversary object collection.                                           |
| [Create educationalActivity](../api/profile-post-educationalactivities.md) | [educationalActivity](educationalactivity.md)                  | Create a new educationalActivity by posting to the educationalActivities collection. |
| [List educationalActivities](../api/profile-list-educationalactivities.md) | [educationalActivity](educationalactivity.md) collection       | Get a educationalActivity object collection.                                         |
| [Create itemEmail](../api/profile-post-emails.md)                          | [itemEmail](itememail.md)                                      | Create a new itemEmail by posting to the emails collection.                          |
| [List emails](../api/profile-list-emails.md)                               | [itemEmail](itememail.md) collection                           | Get a itemEmail object collection.                                                   |
| [Create personInterest](../api/profile-post-interests.md)                  | [personInterest](personinterest.md)                            | Create a new personInterest by posting to the interests collection.                  |
| [List interests](../api/profile-list-interests.md)                         | [personInterest](personinterest.md) collection                 | Get a personInterest object collection.                                              |
| [Create languageProficiency](../api/profile-post-languages.md)             | [languageProficiency](languageproficiency.md)                  | Create a new languageProficiency by posting to the languages collection.             |
| [List languages](../api/profile-list-languages.md)                         | [languageProficiency](languageproficiency.md) collection       | Get a languageProficiency object collection.                                         |
| [Create itemPhoneNumber](../api/profile-post-phones.md)                    | [itemPhoneNumber](itemphone.md)                                | Create a new itemPhone by posting to the phones collection.                          |
| [List phones](../api/profile-list-phones.md)                               | [itemPhoneNumber](itemphone.md) collection                     | Get a itemPhone object collection.                                                   |
| [Create workPosition](../api/profile-post-positions.md)                    | [workPosition](workposition.md)                                | Create a new workPosition by posting to the positions collection.                    |
| [List positions](../api/profile-list-positions.md)                         | [workPosition](workposition.md) collection                     | Get a workPosition object collection.                                                |
| [Create projectParticipation](../api/profile-post-projects.md)             | [projectParticipation](projectparticipation.md)                | Create a new projectParticipation by posting to the projects collection.             |
| [List projects](../api/profile-list-projects.md)                           | [projectParticipation](projectparticipation.md) collection     | Get a projectParticipation object collection.                                        |
| [Create skillProficiency](../api/profile-post-skills.md)                   | [skillProficiency](skillproficiency.md)                        | Create a new skillProficiency by posting to the skills collection.                   |
| [List skills](../api/profile-list-skills.md)                               | [skillProficiency](skillproficiency.md) collection             | Get a skillProficiency object collection.                                            |
| [Create webAccount](../api/profile-post-webaccounts.md)                    | [webAccount](webaccount.md)                                    | Create a new webAccount by posting to the webAccounts collection.                    |
| [List webAccounts](../api/profile-list-webaccounts.md)                     | [webAccount](webaccount.md) collection                         | Get a webAccount object collection.                                                  |
| [Create personWebsite](../api/profile-post-websites.md)                    | [personWebsite](personwebsite.md)                              | Create a new personWebsite by posting to the websites collection.                    |
| [List websites](../api/profile-list-websites.md)                           | [personWebsite](personwebsite.md) collection                   | Get a personWebsite object collection.                                               |
| [Delete](../api/profile-delete.md)                                         | None                                                           | Delete profile object.                                                               |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id            |String       | Read-only.  |

## Relationships

| Relationship          | Type                                                         | Description         |
|:----------------------|:-------------------------------------------------------------|:--------------------|
|account                |[userAccountInformation](useraccountinformation.md) collection| Read-only. Nullable.|
|anniversaries          |[personAnniversary](personanniversary.md) collection          | Read-only. Nullable.|
|educationalActivities  |[educationalActivity](educationalactivity.md) collection      | Read-only. Nullable.|
|emails                 |[itemEmail](itememail.md) collection                          | Read-only. Nullable.|
|interests              |[personInterest](personinterest.md) collection                | Read-only. Nullable.|
|languages              |[languageProficiency](languageproficiency.md) collection      | Read-only. Nullable.|
|phones                 |[itemPhone](itemphone.md) collection                          | Read-only. Nullable.|
|positions              |[workPosition](workposition.md) collection                    | Read-only. Nullable.|
|projects               |[projectParticipation](projectparticipation.md) collection    | Read-only. Nullable.|
|skills                 |[skillProficiency](skillproficiency.md) collection            | Read-only. Nullable.|
|webAccounts            |[webAccount](webaccount.md) collection                        | Read-only. Nullable.|
|websites               |[personWebsite](personwebsite.md) collection                  | Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.profile",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "profile resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->