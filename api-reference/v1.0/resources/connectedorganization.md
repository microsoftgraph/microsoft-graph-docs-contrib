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


In [Microsoft Entra entitlement management](entitlementmanagement-overview.md), a connected organization is a reference to a directory or domain of another organization whose users can request access.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/entitlementmanagement-list-connectedorganizations.md)|[connectedOrganization](connectedorganization.md) collection|Retrieve a list of connectedOrganization objects. |
|[Create](../api/entitlementmanagement-post-connectedorganizations.md)|[connectedOrganization](connectedorganization.md)|Create a new connectedOrganization object. |
|[Get](../api/connectedorganization-get.md)|[connectedOrganization](connectedorganization.md)|Read properties and relationships of a connectedOrganization object. |
|[Update](../api/connectedorganization-update.md)|[connectedOrganization](connectedorganization.md) collection|Update a connectedOrganization. |
|[Delete](../api/connectedorganization-delete.md)|None|Delete a connectedOrganization. |
| **External sponsors**| | |
|[List](../api/connectedorganization-list-externalsponsors.md)|[directoryObject](directoryobject.md) collection|Retrieve a list of a connectedOrganization's external sponsors. |
|[Add](../api/connectedorganization-post-externalsponsors.md)|None|Add a user or group to a connectedOrganization's external sponsors. |
|[Remove](../api/connectedorganization-delete-externalsponsors.md)|None|Remove a user or group from the connectedOrganization's external sponsors. |
| **Internal sponsors**| | |
|[List](../api/connectedorganization-list-internalsponsors.md)|[directoryObject](directoryobject.md) collection|Retrieve a list of a connectedOrganization's internal sponsors. |
|[Add](../api/connectedorganization-post-internalsponsors.md)|None|Add a user or group to a connectedOrganization's internal sponsors. |
|[Remove](../api/connectedorganization-delete-internalsponsors.md)|None|Remove a user or group from the connectedOrganization's internal sponsors. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|description|String|The description of the connected organization.|
|displayName|String|The display name of the connected organization. Supports `$filter` (`eq`).|
|id|String|Read-only.|
|identitySources|[identitySource](../resources/identitysource.md) collection|The identity sources in this connected organization, one of [azureActiveDirectoryTenant](azureactivedirectorytenant.md), [crossCloudAzureActiveDirectoryTenant](crosscloudazureactivedirectorytenant.md), [domainIdentitySource](domainidentitysource.md), [externalDomainFederation](externaldomainfederation.md), or [socialIdentitySource](socialidentitysource.md). Nullable.|
|modifiedDateTime|DateTimeOffset|*The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|state|connectedOrganizationState|The state of a connected organization defines whether assignment policies with requestor scope type `AllConfiguredConnectedOrganizationSubjects` are applicable or not.  The possible values are: `configured`, `proposed`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|externalSponsors|[directoryObject](directoryobject.md) collection|Nullable.|
|internalSponsors|[directoryObject](directoryobject.md) collection|Nullable.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.connectedOrganization",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.connectedOrganization",
  "description": "String",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "identitySources": [
    {
      "@odata.type": "microsoft.graph.azureActiveDirectoryTenant"
    }
  ],
  "modifiedDateTime": "String (timestamp)",
  "state": "String"
}
```
