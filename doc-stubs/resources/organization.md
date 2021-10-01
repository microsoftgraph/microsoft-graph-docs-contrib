---
title: "organization resource type"
description: "The organization resource represents an instance of global settings and resources which operate and are provisioned at the tenant-level."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# organization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The organization resource represents an instance of global settings and resources which operate and are provisioned at the tenant-level.


Inherits from [directoryObject](../resources/directoryobject.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List organizations](../api/organization-list.md)|[organization](../resources/organization.md) collection|Get a list of the [organization](../resources/organization.md) objects and their properties.|
|[Create organization](../api/organization-post-organization.md)|[organization](../resources/organization.md)|Create a new [organization](../resources/organization.md) object.|
|[Get organization](../api/organization-get.md)|[organization](../resources/organization.md)|Read the properties and relationships of an [organization](../resources/organization.md) object.|
|[Update organization](../api/organization-update.md)|[organization](../resources/organization.md)|Update the properties of an [organization](../resources/organization.md) object.|
|[Delete organization](../api/organization-delete.md)|None|Deletes an [organization](../resources/organization.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedPlans|[assignedPlan](../resources/assignedplan.md) collection|**TODO: Add Description**|
|businessPhones|String collection|**TODO: Add Description**|
|certificateConnectorSetting|[certificateConnectorSetting](../resources/certificateconnectorsetting.md)|Certificate connector setting.|
|city|String|**TODO: Add Description**|
|companyTags|String collection|**TODO: Add Description**|
|country|String|**TODO: Add Description**|
|countryLetterCode|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|dataBoundary|dataBoundary|**TODO: Add Description**. The possible values are: `none`, `eu`, `unknownFutureValue`.|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|directorySizeQuota|[directorySizeQuota](../resources/directorysizequota.md)|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isMultipleDataLocationsForServicesEnabled|Boolean|**TODO: Add Description**|
|licenseMigrationInfo|[licenseMigrationInfo](../resources/licensemigrationinfo.md)|**TODO: Add Description**|
|marketingNotificationEmails|String collection|**TODO: Add Description**|
|mobileDeviceManagementAuthority|mdmAuthority|Mobile device management authority. The possible values are: `unknown`, `intune`, `sccm`, `office365`.|
|onPremisesLastSyncDateTime|DateTimeOffset|**TODO: Add Description**|
|onPremisesSyncEnabled|Boolean|**TODO: Add Description**|
|postalCode|String|**TODO: Add Description**|
|preferredLanguage|String|**TODO: Add Description**|
|privacyProfile|[privacyProfile](../resources/privacyprofile.md)|**TODO: Add Description**|
|provisionedPlans|[provisionedPlan](../resources/provisionedplan.md) collection|**TODO: Add Description**|
|releaseTrack|String|**TODO: Add Description**|
|replicationScope|String|**TODO: Add Description**|
|securityComplianceNotificationMails|String collection|**TODO: Add Description**|
|securityComplianceNotificationPhones|String collection|**TODO: Add Description**|
|state|String|**TODO: Add Description**|
|street|String|**TODO: Add Description**|
|technicalNotificationMails|String collection|**TODO: Add Description**|
|verifiedDomains|[verifiedDomain](../resources/verifieddomain.md) collection|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|branding|[organizationalBranding](../resources/organizationalbranding.md)|**TODO: Add Description**|
|certificateBasedAuthConfiguration|[certificateBasedAuthConfiguration](../resources/certificatebasedauthconfiguration.md) collection|**TODO: Add Description**|
|extensions|[extension](../resources/extension.md) collection|**TODO: Add Description**|
|serviceProvisioningInfo|[serviceInfo](../resources/serviceinfo.md) collection|**TODO: Add Description**|
|settings|[organizationSettings](../resources/organizationsettings.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.organization",
  "baseType": "microsoft.graph.directoryObject",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organization",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "assignedPlans": [
    {
      "@odata.type": "microsoft.graph.assignedPlan"
    }
  ],
  "businessPhones": [
    "String"
  ],
  "certificateConnectorSetting": {
    "@odata.type": "microsoft.graph.certificateConnectorSetting"
  },
  "city": "String",
  "companyTags": [
    "String"
  ],
  "country": "String",
  "countryLetterCode": "String",
  "createdDateTime": "String (timestamp)",
  "dataBoundary": "String",
  "directorySizeQuota": {
    "@odata.type": "microsoft.graph.directorySizeQuota"
  },
  "displayName": "String",
  "isMultipleDataLocationsForServicesEnabled": "Boolean",
  "licenseMigrationInfo": {
    "@odata.type": "microsoft.graph.licenseMigrationInfo"
  },
  "marketingNotificationEmails": [
    "String"
  ],
  "mobileDeviceManagementAuthority": "String",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesSyncEnabled": "Boolean",
  "postalCode": "String",
  "preferredLanguage": "String",
  "privacyProfile": {
    "@odata.type": "microsoft.graph.privacyProfile"
  },
  "provisionedPlans": [
    {
      "@odata.type": "microsoft.graph.provisionedPlan"
    }
  ],
  "releaseTrack": "String",
  "replicationScope": "String",
  "securityComplianceNotificationMails": [
    "String"
  ],
  "securityComplianceNotificationPhones": [
    "String"
  ],
  "state": "String",
  "street": "String",
  "technicalNotificationMails": [
    "String"
  ],
  "verifiedDomains": [
    {
      "@odata.type": "microsoft.graph.verifiedDomain"
    }
  ]
}
```

