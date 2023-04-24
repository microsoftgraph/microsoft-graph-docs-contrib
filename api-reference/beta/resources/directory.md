---
title: "directory resource type (deleted items)"
description: ". Deleted items will remain available to restore for up to 30 days. After 30 days, the items are permanently deleted."
ms.localizationpriority: medium
author: "keylimesoda"
ms.prod: "directory-management"
doc_type: resourcePageType
---

# directory resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a deleted item in the directory. When an item is deleted, it is added to the deleted items "container". Deleted items will remain available to restore for up to 30 days. After 30 days, the items are permanently deleted.

Currently, deleted items functionality is only supported for the [application](application.md), [group](group.md), and [user](user.md) resources.

Inherits from [entity](entity.md).

## Methods

| Method                                                                                     | Return Type                                      | Description                            |
| :----------------------------------------------------------------------------------------- | :----------------------------------------------- | :------------------------------------- |
| [Get deleted item](../api/directory-deleteditems-get.md)                                   | [directoryObject](directoryobject.md)            | Gets the properties of a deleted item. |
| [Restore deleted item](../api/directory-deleteditems-restore.md)                           | [directoryObject](directoryobject.md)            | Restores a recently deleted item.      |
| [List deleted items](../api/directory-deleteditems-list.md)                                | [directoryObject](directoryobject.md) collection | Gets a list of recently deleted items. |
| [Permanently delete an item](../api/directory-deleteditems-delete.md)                      | None                                             | Permanently deletes an item.           |
| [List deleted items owned by a user](../api/directory-deleteditems-getuserownedobjects.md) | [directoryObject](directoryobject.md) collection | Lists directory items owned by a user. |

## Properties

| Property | Type   | Description                                                                                                                                              |
| :------- | :----- | :------------------------------------------------------------------------------------------------------------------------------------------------------- |
| id       | String | A unique identifier for the object; for example, `12345678-9abc-def0-1234-56789abcde`. Key. Not nullable. Read-only. Inherited from [entity](entity.md). |

## Relationships

| Relationship                       | Type                                                                                     | Description                                                                                                               |
| :--------------------------------- | :--------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------ |
| administrativeUnits                | [administrativeUnit](administrativeunit.md) collection                                   | Conceptual container for user and group directory objects.                                                                |
| attributeSets                      | [attributeSet](attributeset.md) collection                                               | Group of related custom security attribute definitions.                                                                   |
| customSecurityAttributeDefinitions | [customSecurityAttributeDefinition](customsecurityattributedefinition.md) collection     | Schema of a custom security attributes (key-value pairs).                                                                 |
| deleteditems                       | [directoryObject](directoryobject.md) collection                                         | Recently deleted items. Read-only. Nullable.                                                                              |
| featureRolloutPolicies             | [featureRolloutPolicy](featurerolloutpolicy.md) collection                               | Nullable.                                                                                                                 |
| federationConfigurations           | [identityProviderBase](../resources/identityproviderbase.md) collection                  | Configure domain federation with organizations whose identity provider (IdP) supports either the SAML or WS-Fed protocol. |
| inboundSharedUserProfiles             | [inboundSharedUserProfile](inboundshareduserprofile.md) collection                               | A collection of external Azure AD users whose profile data has been shared with the Azure AD tenant. Nullable.                                                                                                                 |
| onPremisesSynchronization          | [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) | A container for on-premises directory synchronization functionalities that are available for the organization.            |
| outboundSharedUserProfile             | [outboundSharedUserProfile](outboundshareduserprofile.md) collection                               | A collection of Azure AD users whose profile data has been shared with an external Azure AD tenant. Nullable.                                                                                                                 |
| recommendations                    | [recommendation](../resources/recommendation.md) collection                              | List of recommended improvements to improve tenant posture.             |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.directory"
}-->

```json
{
  "@odata.type": "#microsoft.graph.directory"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "directory resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


