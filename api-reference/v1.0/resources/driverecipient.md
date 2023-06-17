---
author: JeremyKelley
ms.date: 09/10/2017
title: DriveRecipient
ms.localizationpriority: medium
ms.prod: "sharepoint"
description: "The driveRecipient resource represents a person, group, or other recipient to share with using the invite action."
doc_type: resourcePageType
---

# driveRecipient resource

Namespace: microsoft.graph

Represents a person, group, or other recipient to share a drive item with using the [invite](../api/driveitem-invite.md) action.

When using [invite](../api/driveitem-invite.md) to add permissions, the **driveRecipient** object would specify the **email**, **alias**, or **objectId** of the recipient.
Only one of these values is required; multiple values are not accepted.

## Properties
The recipients resource has these properties.

| Property name | Type   | Description                                                                                             |
|:--------------|:-------|:--------------------------------------------------------------------------------------------------------|
| alias         | String | The alias of the domain object, for cases where an email address is unavailable (e.g. security groups). |
| email         | String | The email address for the recipient, if the recipient has an associated email address.                  |
| objectId      | String | The unique identifier for the recipient in the directory.                                               |

## JSON representation

<!-- { 
  "blockType": "resource", 
  "@odata.type": "microsoft.graph.driveRecipient", 
  "optionalProperties": ["alias", "objectId", "email"] } -->
```json
{
  "alias": "string",
  "email": "string",
  "objectId": "string",
}
```

<!-- {
  "type": "#page.annotation",
  "description": "Recipients resource defines a single recipient for the sharing invitation and permissions collection.",
  "keywords": "sharing,share,permissions,action.invite,invite,email",
  "section": "documentation",
  "tocPath": "Resources/Recipients"
} -->

