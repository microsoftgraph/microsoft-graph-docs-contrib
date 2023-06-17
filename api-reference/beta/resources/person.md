---
title: "person resource type"
description: "Represents an aggregation of information about a person from across mail and contacts."
author: "simonhult"
ms.localizationpriority: medium
ms.prod: "insights"
doc_type: resourcePageType
---

# person resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an aggregation of information about a person from across mail and contacts. People can be local contacts or your organization's directory, and people from recent communications (such as email).

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[List people](../api/user-list-people.md) | **person** |Get a collection of person objects ordered by their relevance to the [user](../resources/user.md).|

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|birthday|String|The person's birthday.|
|companyName|String|The name of the person's company.|
|department|String|The person's department.|
|displayName|String|The person's display name.|
|emailAddresses|[rankedEmailAddress](rankedemailaddress.md) collection|The person's email addresses.|
|givenName|String|The person's given name.|
|id|String|The person's unique identifier. Read-only.|
|isFavorite|Boolean|`True` if the user has flagged this person as a favorite.|
|mailboxType|String|The type of mailbox that is represented by the person's email address.|
|officeLocation|String|The location of the person's office.|
|personNotes|String|Free-form notes that the user has taken about this person.|
|personType|String|The type of person, for example distribution list.|
|phones|[phone](phone.md) collection|The person's phone numbers.|
|postalAddresses|[location](location.md) collection|The person's addresses.|
|profession|String|The person's profession.|
|sources|[personDataSource](persondatasource.md) collection|The sources the user data comes from, for example Directory or Outlook Contacts.|
|surname|String|The person's surname.|
|title|String|The person's title.|
|userPrincipalName|String|The user principal name (UPN) of the person. The UPN is an Internet-style login name for the person based on the Internet standard [RFC 822](https://www.ietf.org/rfc/rfc0822.txt). By convention, this should map to the person's email name. The general format is `alias@domain`.|
|websites|[website](website.md) collection|The person's websites.|
|yomiCompany|String|The phonetic Japanese name of the person's company.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.person"
}-->

```json
{
  "birthday": "String",
  "companyName": "String",
  "department": "String",
  "displayName": "String",
  "emailAddresses": [{"@odata.type": "microsoft.graph.rankedEmailAddress"}],
  "givenName": "String",
  "id": "String (identifier)",
  "isFavorite": "Boolean",
  "mailboxType": "String",
  "officeLocation": "String",
  "personNotes": "String",
  "personType": "String",
  "phones": [{"@odata.type": "microsoft.graph.phone"}],
  "postalAddresses": [{"@odata.type": "microsoft.graph.location"}],
  "profession": "String",
  "sources": [{"@odata.type": "microsoft.graph.personDataSource"}],
  "surname": "String",
  "title": "String",
  "userPrincipalName": "String",
  "websites": [{"@odata.type": "microsoft.graph.website"}],
  "yomiCompany": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "person resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


