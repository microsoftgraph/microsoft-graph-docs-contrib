---
title: "directory resource type (deleted items)"
description: "Represents a deleted item in the directory."
ms.localizationpriority: medium
author: "vimranga"
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
toc.title: Deleted item
ms.date: 06/23/2025
---

# directory resource type

Namespace: microsoft.graph

Represents a deleted item in the directory. When an item is deleted, it moves to the deleted items container. Deleted items remain available to restore for up to 30 days. After 30 days, the items are permanently deleted.

Currently, deleted items functionality is supported for the the following resources:
- [application](application.md)
- [group](group.md)
- [servicePrincipal](../resources/serviceprincipal.md)
- [user](user.md)

Inherits from [entity](entity.md).

## Methods

| Method                                                                                     | Return Type                                      | Description                            |
| :----------------------------------------------------------------------------------------- | :----------------------------------------------- | :------------------------------------- |
| [List](../api/directory-deleteditems-list.md)                                | [directoryObject](directoryobject.md) collection | Gets a list of recently deleted items. |
| [Get](../api/directory-deleteditems-get.md)                                   | [directoryObject](directoryobject.md)            | Gets the properties of a deleted item. |
| [Restore](../api/directory-deleteditems-restore.md)                           | [directoryObject](directoryobject.md)            | Restores a recently deleted item.      |
| [Permanently delete](../api/directory-deleteditems-delete.md)                      | None                                             | Permanently deletes an item.           |
| [List deleted items owned by user](../api/directory-deleteditems-getuserownedobjects.md) | [directoryObject](directoryobject.md) collection | Lists directory items owned by a user. |

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
| deletedItems                       | [directoryObject](directoryobject.md) collection                                         | Recently deleted items. Read-only. Nullable.                                                                              |
| deviceLocalCredentials             | [deviceLocalCredential](../resources/devicelocalcredential.md) collection                | The credentials of the device's local administrator account backed up to Microsoft Entra ID.                            |
| federationConfigurations           | [identityProviderBase](../resources/identityproviderbase.md) collection                  | Configure domain federation with organizations whose identity provider (IdP) supports either the SAML or WS-Fed protocol. |
| onPremisesSynchronization          | [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) | A container for on-premises directory synchronization functionalities that are available for the organization.      |
|publicKeyInfrastructure|[publicKeyInfrastructureRoot](../resources/publickeyinfrastructureroot.md)|The collection of public key infrastructure instances for the certificate-based authentication feature for users in a Microsoft Entra tenant.|
| subscriptions                      | [companySubscription](companysubscription.md) collection                                 | List of commercial subscriptions that an organization acquired.                                                       |

## JSON representation

The following JSON representation shows the resource type.

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
<!-- {
  "type": "#page.annotation",
  "description": "directory resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
