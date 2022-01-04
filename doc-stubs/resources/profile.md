---
title: "profile resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# profile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List profiles](../api/profile-list.md)|[profile](../resources/profile.md) collection|Get a list of the [profile](../resources/profile.md) objects and their properties.|
|[Create profile](../api/user-post-profile.md)|[profile](../resources/profile.md)|Create a new [profile](../resources/profile.md) object.|
|[Get profile](../api/profile-get.md)|[profile](../resources/profile.md)|Read the properties and relationships of a [profile](../resources/profile.md) object.|
|[Update profile](../api/profile-update.md)|[profile](../resources/profile.md)|Update the properties of a [profile](../resources/profile.md) object.|
|[Delete profile](../api/profile-delete.md)|None|Deletes a [profile](../resources/profile.md) object.|
|[List account](../api/profile-list-account.md)|[userAccountInformation](../resources/useraccountinformation.md) collection|Get the userAccountInformation resources from the account navigation property.|
|[Create userAccountInformation](../api/profile-post-account.md)|[userAccountInformation](../resources/useraccountinformation.md)|Create a new userAccountInformation object.|
|[List addresses](../api/profile-list-addresses.md)|[itemAddress](../resources/itemaddress.md) collection|Get the itemAddress resources from the addresses navigation property.|
|[Create itemAddress](../api/profile-post-addresses.md)|[itemAddress](../resources/itemaddress.md)|Create a new itemAddress object.|
|[List anniversaries](../api/profile-list-anniversaries.md)|[personAnnualEvent](../resources/personannualevent.md) collection|Get the personAnnualEvent resources from the anniversaries navigation property.|
|[Create personAnnualEvent](../api/profile-post-anniversaries.md)|[personAnnualEvent](../resources/personannualevent.md)|Create a new personAnnualEvent object.|
|[List awards](../api/profile-list-awards.md)|[personAward](../resources/personaward.md) collection|Get the personAward resources from the awards navigation property.|
|[Create personAward](../api/profile-post-awards.md)|[personAward](../resources/personaward.md)|Create a new personAward object.|
|[List certifications](../api/profile-list-certifications.md)|[personCertification](../resources/personcertification.md) collection|Get the personCertification resources from the certifications navigation property.|
|[Create personCertification](../api/profile-post-certifications.md)|[personCertification](../resources/personcertification.md)|Create a new personCertification object.|
|[List educationalActivities](../api/profile-list-educationalactivities.md)|[educationalActivity](../resources/educationalactivity.md) collection|Get the educationalActivity resources from the educationalActivities navigation property.|
|[Create educationalActivity](../api/profile-post-educationalactivities.md)|[educationalActivity](../resources/educationalactivity.md)|Create a new educationalActivity object.|
|[List emails](../api/profile-list-emails.md)|[itemEmail](../resources/itememail.md) collection|Get the itemEmail resources from the emails navigation property.|
|[Create itemEmail](../api/profile-post-emails.md)|[itemEmail](../resources/itememail.md)|Create a new itemEmail object.|
|[List interests](../api/profile-list-interests.md)|[personInterest](../resources/personinterest.md) collection|Get the personInterest resources from the interests navigation property.|
|[Create personInterest](../api/profile-post-interests.md)|[personInterest](../resources/personinterest.md)|Create a new personInterest object.|
|[List languages](../api/profile-list-languages.md)|[languageProficiency](../resources/languageproficiency.md) collection|Get the languageProficiency resources from the languages navigation property.|
|[Create languageProficiency](../api/profile-post-languages.md)|[languageProficiency](../resources/languageproficiency.md)|Create a new languageProficiency object.|
|[List names](../api/profile-list-names.md)|[personName](../resources/personname.md) collection|Get the personName resources from the names navigation property.|
|[Create personName](../api/profile-post-names.md)|[personName](../resources/personname.md)|Create a new personName object.|
|[List notes](../api/profile-list-notes.md)|[personAnnotation](../resources/personannotation.md) collection|Get the personAnnotation resources from the notes navigation property.|
|[Create personAnnotation](../api/profile-post-notes.md)|[personAnnotation](../resources/personannotation.md)|Create a new personAnnotation object.|
|[List patents](../api/profile-list-patents.md)|[itemPatent](../resources/itempatent.md) collection|Get the itemPatent resources from the patents navigation property.|
|[Create itemPatent](../api/profile-post-patents.md)|[itemPatent](../resources/itempatent.md)|Create a new itemPatent object.|
|[List phones](../api/profile-list-phones.md)|[itemPhone](../resources/itemphone.md) collection|Get the itemPhone resources from the phones navigation property.|
|[Create itemPhone](../api/profile-post-phones.md)|[itemPhone](../resources/itemphone.md)|Create a new itemPhone object.|
|[List positions](../api/profile-list-positions.md)|[workPosition](../resources/workposition.md) collection|Get the workPosition resources from the positions navigation property.|
|[Create workPosition](../api/profile-post-positions.md)|[workPosition](../resources/workposition.md)|Create a new workPosition object.|
|[List projects](../api/profile-list-projects.md)|[projectParticipation](../resources/projectparticipation.md) collection|Get the projectParticipation resources from the projects navigation property.|
|[Create projectParticipation](../api/profile-post-projects.md)|[projectParticipation](../resources/projectparticipation.md)|Create a new projectParticipation object.|
|[List publications](../api/profile-list-publications.md)|[itemPublication](../resources/itempublication.md) collection|Get the itemPublication resources from the publications navigation property.|
|[Create itemPublication](../api/profile-post-publications.md)|[itemPublication](../resources/itempublication.md)|Create a new itemPublication object.|
|[List skills](../api/profile-list-skills.md)|[skillProficiency](../resources/skillproficiency.md) collection|Get the skillProficiency resources from the skills navigation property.|
|[Create skillProficiency](../api/profile-post-skills.md)|[skillProficiency](../resources/skillproficiency.md)|Create a new skillProficiency object.|
|[List webAccounts](../api/profile-list-webaccounts.md)|[webAccount](../resources/webaccount.md) collection|Get the webAccount resources from the webAccounts navigation property.|
|[Create webAccount](../api/profile-post-webaccounts.md)|[webAccount](../resources/webaccount.md)|Create a new webAccount object.|
|[List websites](../api/profile-list-websites.md)|[personWebsite](../resources/personwebsite.md) collection|Get the personWebsite resources from the websites navigation property.|
|[Create personWebsite](../api/profile-post-websites.md)|[personWebsite](../resources/personwebsite.md)|Create a new personWebsite object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|account|[userAccountInformation](../resources/useraccountinformation.md) collection|**TODO: Add Description**|
|addresses|[itemAddress](../resources/itemaddress.md) collection|**TODO: Add Description**|
|anniversaries|[personAnnualEvent](../resources/personannualevent.md) collection|**TODO: Add Description**|
|awards|[personAward](../resources/personaward.md) collection|**TODO: Add Description**|
|certifications|[personCertification](../resources/personcertification.md) collection|**TODO: Add Description**|
|educationalActivities|[educationalActivity](../resources/educationalactivity.md) collection|**TODO: Add Description**|
|emails|[itemEmail](../resources/itememail.md) collection|**TODO: Add Description**|
|extensions|[personExtension](../resources/personextension.md) collection|**TODO: Add Description**|
|interests|[personInterest](../resources/personinterest.md) collection|**TODO: Add Description**|
|languages|[languageProficiency](../resources/languageproficiency.md) collection|**TODO: Add Description**|
|names|[personName](../resources/personname.md) collection|**TODO: Add Description**|
|notes|[personAnnotation](../resources/personannotation.md) collection|**TODO: Add Description**|
|patents|[itemPatent](../resources/itempatent.md) collection|**TODO: Add Description**|
|phones|[itemPhone](../resources/itemphone.md) collection|**TODO: Add Description**|
|positions|[workPosition](../resources/workposition.md) collection|**TODO: Add Description**|
|projects|[projectParticipation](../resources/projectparticipation.md) collection|**TODO: Add Description**|
|publications|[itemPublication](../resources/itempublication.md) collection|**TODO: Add Description**|
|skills|[skillProficiency](../resources/skillproficiency.md) collection|**TODO: Add Description**|
|webAccounts|[webAccount](../resources/webaccount.md) collection|**TODO: Add Description**|
|websites|[personWebsite](../resources/personwebsite.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.profile",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.profile",
  "id": "String (identifier)"
}
```

