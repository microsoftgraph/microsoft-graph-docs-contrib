---
title: "contact resource type"
description: "A contact is an item in Outlook where you can organize and save information about the people and organizations you communicate with. Contacts are contained in contact folders."
author: "kevinbellinger"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 12/03/2025
---

# contact resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A contact is an item in Outlook where you can organize and save information about the people and organizations you communicate with. Contacts are contained in contact folders.

This resource supports:

- Adding your own data to custom properties as [extensions](/graph/extensibility-overview).
- Subscribing to [change notifications](/graph/change-notifications-overview).
- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates,
by providing a [delta](../api/contact-delta.md) function.

## Methods
| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get](../api/contact-get.md) | [contact](contact.md) |Read properties and relationships of contact object.|
|[Create](../api/user-post-contacts.md) | [contact](contact.md) |Add a contact to the root Contacts folder or to the contacts endpoint of another contact folder.|
|[Update](../api/contact-update.md) | [contact](contact.md) |Update contact object. |
|[Delete](../api/contact-delete.md) | None |Delete contact object. |
|[Permanently delete](../api/contact-permanentdelete.md)|None|Permanently delete a contact and place it in the Purges folder in the Recoverable Items folder in the user's mailbox.|
|[Get contact delta](../api/contact-delta.md)|[contact](contact.md) collection| Get a set of contacts that have been added, deleted, or updated in a specified folder.|
|**Open extensions**| | |
|[Create open extension](../api/opentypeextension-post-opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties to a new or existing resource.|
|[Get open extension](../api/opentypeextension-get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension identified by the extension name.|
|**Extended properties**| | |
|[Create single-value property](../api/singlevaluelegacyextendedproperty-post-singlevalueextendedproperties.md) |[contact](contact.md)  |Create one or more single-value extended properties in a new or existing contact.   |
|[Get single-value property](../api/singlevaluelegacyextendedproperty-get.md)  | [contact](contact.md) | Get contacts that contain a single-value extended property by using `$expand` or `$filter`. |
|[Create multi-value property](../api/multivaluelegacyextendedproperty-post-multivalueextendedproperties.md) | [contact](contact.md) | Create one or more multi-value extended properties in a new or existing contact.  |
|[Get multi-value property](../api/multivaluelegacyextendedproperty-get.md)  | [contact](contact.md) | Get a contact that contains a multi-value extended property by using `$expand`. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|assistantName|String|The name of the contact's assistant.|
|birthday|DateTimeOffset|The contact's birthday. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|categories|String collection|The categories associated with the contact. Each category corresponds to the **displayName** property of an [outlookCategory](outlookcategory.md) defined for the user.|
|changeKey|String|Identifies the version of the contact. Every time the contact is changed, **changeKey** changes as well, which allows Exchange to apply changes to the correct version of the object.|
|children|String collection|The names of the contact's children.|
|companyName|String|The name of the contact's company.|
|createdDateTime|DateTimeOffset|The time the contact was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|department|String|The contact's department.|
|displayName|String|The contact's display name. You can specify the display name in a [create](../api/user-post-contacts.md) or [update](../api/contact-update.md) operation. Later updates to other properties might cause an automatically generated value to overwrite the displayName value you specified. To preserve a pre-existing value, always include it as displayName in an [update](../api/contact-update.md) operation.|
|emailAddresses|[typedEmailAddress](typedemailaddress.md) collection|The contact's email addresses.|
|fileAs|String|The name the contact is filed under.|
|flag|[followupFlag](followupflag.md)|The flag value that indicates the status, start date, due date, or completion date for the contact. |
|gender |String |The contact's gender. |
|generation|String|The contact's suffix.|
|givenName|String|The contact's given name.|
|id|String| Unique identifier for the contact. [!INCLUDE [outlook-beta-id](../../includes/outlook-immutable-id.md)] Read-only. |
|imAddresses|String collection|The contact's instant messaging (IM) addresses.|
|initials|String|The contact's initials.|
|jobTitle|String|The contact’s job title.|
|lastModifiedDateTime|DateTimeOffset|The time the contact was modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|manager|String|The name of the contact's manager.
|middleName|String|The contact's middle name.|
|nickName|String|The contact's nickname.|
|officeLocation|String|The location of the contact's office.|
|parentFolderId|String|The ID of the contact's parent folder.|
|personalNotes|String|The user's notes about the contact.|
|phones |[phone](phone.md) collection |Phone numbers associated with the contact, for example, home phone, mobile phone, and business phone. |
|postalAddresses |[physicalAddress](physicaladdress.md) collection |Addresses associated with the contact, for example, home address and business address. |
|primaryEmailAddress|[emailAddress](../resources/emailaddress.md)|The primary email address of the contact.|
|profession|String|The contact's profession.|
|secondaryEmailAddress|[emailAddress](../resources/emailaddress.md)|The secondary email address of the contact.|
|spouseName|String|The name of the contact's spouse/partner.|
|surname|String|The contact's surname.|
|tertiaryEmailAddress|[emailAddress](../resources/emailaddress.md)|The tertiary email address of the contact.|
|title|String|The contact's title.|
|websites |[website](website.md) collection|Web sites associated with the contact. |
|weddingAnniversary |Date |The contact's wedding anniversary. |
|yomiCompanyName|String|The phonetic Japanese company name of the contact.|
|yomiGivenName|String|The phonetic Japanese given name (first name) of the contact.|
|yomiSurname|String|The phonetic Japanese surname (last name)  of the contact.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|extensions|[extension](extension.md) collection|The collection of open extensions defined for the contact. Nullable.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the contact. Read-only. Nullable.|
|photo|[photo](profilephoto.md)| Optional contact picture. You can get or set a photo for a contact.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the contact. Read-only. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "extensions",
    "multiValueExtendedProperties",
    "photo",
    "singleValueExtendedProperties"
  ],
  "keyProperty":"id",
  "@odata.type": "microsoft.graph.contact",
  "baseType": "microsoft.graph.outlookItem"
}-->

```json
{
  "assistantName": "string",
  "birthday": "String (timestamp)",
  "categories": ["string"],
  "changeKey": "string",
  "children": ["string"],
  "companyName": "string",
  "createdDateTime": "String (timestamp)",
  "department": "string",
  "displayName": "string",
  "emailAddresses": [{"@odata.type": "microsoft.graph.typedEmailAddress"}],
  "fileAs": "string",
  "flag": {"@odata.type": "microsoft.graph.followupFlag"},
  "gender": "string",
  "generation": "string",
  "givenName": "string",
  "id": "string (identifier)",
  "imAddresses": ["string"],
  "initials": "string",
  "jobTitle": "string",
  "lastModifiedDateTime": "String (timestamp)",
  "manager": "string",
  "middleName": "string",
  "nickName": "string",
  "officeLocation": "string",
  "parentFolderId": "string",
  "personalNotes": "string",
  "phones": [{"@odata.type": "microsoft.graph.phone"}],
  "postalAddresses": [{"@odata.type": "microsoft.graph.physicalAddress"}],
  "primaryEmailAddress": {"@odata.type": "microsoft.graph.emailAddress"},
  "profession": "string",
  "secondaryEmailAddress": {"@odata.type": "microsoft.graph.emailAddress"},
  "spouseName": "string",
  "surname": "string",
  "tertiaryEmailAddress": {"@odata.type": "microsoft.graph.emailAddress"},
  "title": "string",
  "websites": [{"@odata.type": "microsoft.graph.website"}],
  "weddingAnniversary": "date",
  "yomiCompanyName": "string",
  "yomiGivenName": "string",
  "yomiSurname": "string"
}
```

## Related content

- [Use delta query to track changes in Microsoft Graph data](/graph/delta-query-overview)
- [Get incremental changes to messages in a folder](/graph/delta-query-messages)
- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions](/graph/extensibility-open-users)
- [Add custom data to groups using schema extensions](/graph/extensibility-schema-groups)


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "contact resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


