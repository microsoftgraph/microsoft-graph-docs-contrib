---
title: "relatedContact resource type"
description: "Represents a contact record related to an educationUser that provides information for guardians, aides, doctors, and so on."
author: "marcla"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# relatedContact resource type

Namespace: microsoft.graph

Represents a contact record related to an [educationUser](../resources/educationuser.md) that provides information for guardians, aides, doctors, and so on.

## Properties

| Property      | Type                  | Description                                                                                                                               |
| :------------ | :-------------------- | :---------------------------------------------------------------------------------------------------------------------------------------- |
| accessConsent | Boolean               | Indicates whether the user has been consented to access student data.                                                                     |
| displayName   | String                | Name of the contact. Required.                                                                                                            |
| emailAddress  | String                | Primary email address of the contact. Required.                                                                                           |
| mobilePhone   | String                | Mobile phone number of the contact.                                                                                                       |
| relationship  | contactRelationship | Relationship to the user. Possible values are: `parent`, `relative`, `aide`, `doctor`, `guardian`, `child`, `other`, `unknownFutureValue`.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.relatedContact"
}-->

```json
{
  "accessConsent": true,
  "displayName": "String",
  "emailAddress": "String",
  "mobilePhone": "String",
  "relationship": "String"
}
```

<!-- uuid: 720F9AB6-6E7A-4A66-8B0A-37A556FF99C5
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "relatedContact resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
