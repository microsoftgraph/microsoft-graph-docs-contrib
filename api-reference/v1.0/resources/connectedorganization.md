---
title: "connectedOrganization resource type"
description: "In Azure AD entitlement management, a connected organization is a reference to a directory or domain of another organization whose users can request access."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# connectedOrganization resource type

Namespace: microsoft.graph


In [Azure AD entitlement management](entitlementmanagement-overview.md), a connected organization is a reference to a directory or domain of another organization whose users can request access.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List connectedOrganizations](../api/entitlementmanagement-list-connectedorganizations.md)|[connectedOrganization](connectedorganization.md) collection|Retrieve a list of connectedOrganization objects. |
|[Create connectedOrganization](../api/entitlementmanagement-post-connectedorganizations.md)|[connectedOrganization](connectedorganization.md)|Create a new connectedOrganization object. |
|[Get connectedOrganization](../api/connectedorganization-get.md)|[connectedOrganization](connectedorganization.md)|Read properties and relationships of a connectedOrganization object. |
|[Update connectedOrganization](../api/connectedorganization-update.md)|[connectedOrganization](connectedorganization.md) collection|Update a connectedOrganization. |
|[Delete connectedOrganization](../api/connectedorganization-delete.md)|None|Delete a connectedOrganization. |
|[List externalSponsors](../api/connectedorganization-list-externalsponsors.md)|[directoryObject](directoryobject.md) collection|Retrieve a list of a connectedOrganization's external sponsors. |
|[Add externalSponsors](../api/connectedorganization-post-externalsponsors.md)|None|Add a user or group to a connectedOrganization's external sponsors. |
|[List internalSponsors](../api/connectedorganization-list-internalsponsors.md)|[directoryObject](directoryobject.md) collection|Retrieve a list of a connectedOrganization's internal sponsors. |
|[Add internalSponsors](../api/connectedorganization-post-internalsponsors.md)|None|Add a user or group to a connectedOrganization's internal sponsors. |
|[Remove internalSponsors](../api/connectedorganization-delete-internalsponsors.md)|None|Remove a user or group from the connectedOrganization's internal sponsors. |
|[Remove externalSponsors](../api/connectedorganization-delete-externalsponsors.md)|None|Remove a user or group from the connectedOrganization's external sponsors. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|description|String|The description of the connected organization.|
|displayName|String|The display name of the connected organization. Supports `$filter` (`eq`).|
|id|String|Read-only.|
|identitySources|[identitySource](../resources/identitysource.md) collection|The identity sources in this connected organization, one of [azureActiveDirectoryTenant](azureactivedirectorytenant.md), [domainIdentitySource](domainidentitysource.md), [externalDomainFederation](externaldomainfederation.md) or [crossCloudAzureActiveDirectoryTenant](crosscloudazureactivedirectorytenant.md). Nullable.|
|modifiedDateTime|DateTimeOffset|*The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|state|connectedOrganizationState|The state of a connected organization defines whether assignment policies with requestor scope type `AllConfiguredConnectedOrganizationSubjects` are applicable or not.  The possible values are: `configured`, `proposed`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|externalSponsors|[directoryObject](directoryobject.md) collection|Nullable.|
|internalSponsors|[directoryObject](directoryobject.md) collection|Nullable.|

## JSON representation
The following is a JSON representation of the resource.
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


