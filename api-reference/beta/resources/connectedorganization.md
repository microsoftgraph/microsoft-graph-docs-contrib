---
title: "connectedOrganization resource type"
description: "In Microsoft Entra entitlement management, a connected organization is a reference to a directory or domain of another organization whose users can request access."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# connectedOrganization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Microsoft Entra entitlement management](entitlementmanagement-overview.md), a connected organization is a reference to a directory or domain of another organization whose users can request access.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/entitlementmanagement-list-connectedorganizations.md) | [connectedOrganization](connectedorganization.md) collection | Retrieve a list of connectedOrganization objects. |
|[Create](../api/entitlementmanagement-post-connectedorganizations.md) | [connectedOrganization](connectedorganization.md) | Create a new connectedOrganization object. |
|[Get](../api/connectedorganization-get.md) | [connectedOrganization](connectedorganization.md) | Read properties and relationships of a connectedOrganization object. |
|[Update](../api/connectedorganization-update.md) | | Update a connectedOrganization. |
|[Delete](../api/connectedorganization-delete.md) |None | Delete a connectedOrganization. |
| **External sponsors**| | |
|[List external sponsors](../api/connectedorganization-list-externalsponsors.md) | [directoryObject](directoryobject.md) collection | Retrieve a list of a connectedOrganization's external sponsors. |
|[Add external sponsors](../api/connectedorganization-post-externalsponsors.md) | None | Add a user or group to a connectedOrganization's external sponsors. |
|[Remove external sponsors](../api/connectedorganization-delete-externalsponsors.md) | None | Remove a user or group from a connectedOrganization's external sponsors. |
| **Internal sponsors**| | |
|[List internal sponsors](../api/connectedorganization-list-internalsponsors.md) | [directoryObject](directoryobject.md) collection | Retrieve a list of a connectedOrganization's internal sponsors. |
|[Add internal sponsors](../api/connectedorganization-post-internalsponsors.md) | None | Add a user or group to a connectedOrganization's internal sponsors. |
|[Remove internal sponsors](../api/connectedorganization-delete-internalsponsors.md) | None | Remove a user or group from a connectedOrganization's internal sponsors. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|String|UPN of the user who created this resource. Read-only.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|description|String|The description of the connected organization.|
|displayName|String|The display name of the connected organization. Supports `$filter` (`eq`).|
|id|String| Read-only.|
|modifiedBy|String|UPN of the user who last modified this resource. Read-only.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|state|connectedOrganizationState|The state of a connected organization defines whether assignment policies with requestor scope type `AllConfiguredConnectedOrganizationSubjects` are applicable or not. The possible values are: `configured`, `proposed`.|
|identitySources|[identitySource](identitySource.md) collection| The identity sources in this connected organization, one of [azureActiveDirectoryTenant](azureactivedirectorytenant.md), [crossCloudAzureActiveDirectoryTenant](crosscloudazureactivedirectorytenant.md), [domainIdentitySource](domainidentitysource.md), [externalDomainFederation](externaldomainfederation.md), or [socialIdentitySource](socialidentitysource.md). Read-only. Nullable. Supports `$select` and `$filter`(`eq`). To filter by the derived types, you must declare the resource using its full OData cast, for example, `$filter=identitySources/any(is:is/microsoft.graph.azureActiveDirectoryTenant/tenantId eq 'bcfdfff4-cbc3-43f2-9000-ba7b7515054f')`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|internalSponsors| [directoryObject](directoryobject.md) collection| Nullable.|
|externalSponsors| [directoryObject](directoryobject.md) collection| Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.connectedOrganization",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

```json
{
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdBy": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedBy": "String",
  "modifiedDateTime": "String (timestamp)",
  "identitySources": [
    {
      "@odata.type": "microsoft.graph.azureActiveDirectoryTenant",
      "tenantId": "String (identifier)",
      "displayName": "String"
    }
  ],
  "state": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "connectedOrganization resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
