---
title: "orgContact resource type"
description: "Represents an organizational contact"
ms.localizationpriority: medium
author: "dkershaw10"
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 07/08/2024
---

# orgContact resource type

Namespace: microsoft.graph

Represents an organizational contact. Organizational contacts are managed by an organization's administrators and are different from [personal contacts](contact.md). Additionally, organizational contacts are either synchronized from on-premises directories or from Exchange Online, and are read-only in Microsoft Graph.

Inherits from [directoryObject](directoryobject.md).

This resource supports using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/orgcontact-delta.md) function. This resource is an open type that allows other properties to be passed in.

## Methods

| Method                                                                  | Return Type                                      | Description                                                                                                                 |
|:------------------------------------------------------------------------|:-------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------|
| **Organizational contacts** |
| [List](../api/orgcontact-list.md)               | [orgContact](orgcontact.md)                      | List properties of organizational contacts.                                                                                 |
| [Get](../api/orgcontact-get.md)                  | [orgContact](orgcontact.md)                      | Read properties and relationships of an organizational contact.                                                             |
| [Get delta](../api/orgcontact-delta.md) | [orgContact](orgcontact.md) collection| Get newly created, updated, or deleted organizational contacts without having to perform a full read of the entire collection. |
| [Get delta for directory object](../api/directoryobject-delta.md) | [direcyoryObject](orgcontact.md) collection| Get newly created, updated, or deleted organizational contacts via the directory object collection without having to perform a full read of the entire collection. |
| [List member of](../api/orgcontact-list-memberof.md) | String collection | Retrieve the list of groups and adminstrative units the contact is a member of. The check is transitive. |
| [List transitive members of](../api/orgcontact-list-transitivememberof.md) | [directoryObject](directoryobject.md) collection | List the groups an organizational contact is a member of, including groups that the organizational contact is nested under. |
| [Check member groups](../api/directoryobject-checkmembergroups.md) | String collection | Check for membership of an organizational contact in a list of groups. The check is transitive. |
| [Get member groups](../api/directoryobject-getmembergroups.md) | String collection | Return all the groups that the organizational contact is a member of. The check is transitive. |
|[Check member objects](../api/directoryobject-checkmemberobjects.md) | String collection | Check for membership of an organizational contact in a list of groups, directory role, or administrative unit objects. |
|[Get member objects](../api/directoryobject-checkmemberobjects.md) | String collection | Return all groups, administrative units, and directory roles that the organizational contact is a member of. The check is transitive. |
|[Retry service provisioning](../api/orgcontact-retryserviceprovisioning.md) | None | Retry the orgContact service provisioning. |
| **Organizational hierarchy** |
| [Get manager](../api/orgcontact-get-manager.md)                         | [directoryObject](directoryobject.md)            | Get the organizational contact's manager.                                                                                   |
| [List direct reports](../api/orgcontact-list-directreports.md)           | [directoryObject](directoryobject.md) collection | List the organizational contact's direct reports.                                                                           |

## Properties

> [!IMPORTANT]
> Specific usage of `$filter` and the `$search` query parameter is supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries#organizational-contacts-properties).

| Property                     | Type                                                                     | Description                                                                                                                                                                                                                                                                                                                        |
|:-----------------------------|:-------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| addresses                    | [physicalOfficeAddress](physicalofficeaddress.md) collection             | Postal addresses for this organizational contact. For now a contact can only have one physical address.                                                                                                                                                                                                                            |
| companyName                  | String                                                                   | Name of the company that this organizational contact belongs to.  Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` for `null` values).                                                                                                                                                                                          |
| department                   | String                                                                   | The name for the department in which the contact works.  Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` for `null` values).                                                                                                                                                                                                   |
| displayName                  | String                                                                   | Display name for this organizational contact. Maximum length is 256 characters. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` for `null` values), `$search`, and `$orderby`.                                                                                                                                                                                   |
| givenName                    | String                                                                   | First name for this organizational contact. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` for `null` values).                                                                                                                                                                                                                |
| id                           | String                                                                   | Unique identifier for this organizational contact.  Supports `$filter` (`eq`, `ne`, `not`, `in`).                                                                                                                                                                                                                                  |
| jobTitle                     | String                                                                   | Job title for this organizational contact. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` for `null` values).                                                                                                                                                                                                                 |
| mail                         | String                                                                   | The SMTP address for the contact, for example, "jeff@contoso.com". Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` for `null` values).                                                                                                                                                                             |
| mailNickname                 | String                                                                   | Email alias (portion of email address pre-pending the @ symbol) for this organizational contact. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` for `null` values).                                                                                                                                                           |
| serviceProvisioningErrors    | [serviceProvisioningError](serviceprovisioningerror.md) collection       | Errors published by a federated service describing a non-transient, service-specific error regarding the properties or link from an organizational contact object . <br><br> Supports `$filter` (`eq`, `not`, for isResolved and serviceInstance).  |
| onPremisesLastSyncDateTime   | DateTimeOffset                                                           | Date and time when this organizational contact was last synchronized from on-premises AD. This date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`).                             |
| onPremisesProvisioningErrors | [onPremisesProvisioningError](onpremisesprovisioningerror.md) collection | List of any synchronization provisioning errors for this organizational contact. Supports `$filter` (`eq`, `not` for **category** and **propertyCausingError**), `/$count eq 0`, `/$count ne 0`.                                                                                                                                                                                                                 |
| onPremisesSyncEnabled        | Boolean                                                                  | `true` if this object is synced from an on-premises directory; `false` if this object was originally synced from an on-premises directory but is no longer synced and now mastered in Exchange; `null` if this object has never been synced from an on-premises directory (default). <br/> <br/> Supports `$filter` (`eq`, `ne`, `not`, `in`, and `eq` for `null` values). |
| phones                       | [phone](phone.md) collection                                             | List of phones for this organizational contact. Phone types can be mobile, business, and businessFax. Only one of each type can ever be present in the collection.                                                                                                                                                                 |
| proxyAddresses               | String collection                                                        | For example: "SMTP: bob@contoso.com", "smtp: bob@sales.contoso.com". The **any** operator is required for filter expressions on multi-valued properties. Supports `$filter` (`eq`, `not`, `ge`, `le`, `startsWith`, `/$count eq 0`, `/$count ne 0`).                                                                                                              |
| surname                      | String                                                                   | Last name for this organizational contact. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` for `null` values).                                                                                                                                                                                                                 |

## Relationships

| Relationship       | Type                                             | Description                                                                                                                                            |
|:-------------------|:-------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------|
| directReports      | [directoryObject](directoryobject.md) collection | The contact's direct reports. (The users and contacts that have their manager property set to this contact.)  Read-only. Nullable. Supports `$expand`. |
| manager            | [directoryObject](directoryobject.md)            | The user or contact that is this contact's manager. Read-only. Supports `$expand` and `$filter` (`eq`) by **id**.                                                                     |
| memberOf           | [directoryObject](directoryobject.md) collection | Groups that this contact is a member of. Read-only. Nullable. Supports `$expand`.                                                                      |
| transitiveMemberOf | [directoryObject](directoryobject.md) collection | Groups that this contact is a member of, including groups that the contact is nested under. Read-only. Nullable.                                       |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "directReports",
    "manager",
    "memberOf"
  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",
  "@odata.type": "microsoft.graph.orgcontact"
}-->

```json
{
  "addresses": [{"@odata.type": "microsoft.graph.physicalOfficeAddress"}],
  "companyName": "string",
  "department": "string",
  "displayName": "string",
  "givenName": "string",
  "id": "string (identifier)",
  "jobTitle": "string",
  "mail": "string",
  "mailNickname": "string",
  "onPremisesLastSyncDateTime": "string (timestamp)",
  "onPremisesProvisioningErrors": [{"@odata.type": "microsoft.graph.onPremisesProvisioningError"}],
  "onPremisesSyncEnabled": true,
  "phones": [{"@odata.type": "microsoft.graph.phone"}],
  "proxyAddresses": ["string"],
  "serviceProvisioningErrors": [
    { "@odata.type": "microsoft.graph.serviceProvisioningXmlError" }
  ],
  "surname": "string"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "orgContact resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

