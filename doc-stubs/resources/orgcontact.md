---
title: "orgContact resource type"
description: "Represents an Azure Active Directory object. The directoryObject type is the base type for many other directory entity types."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# orgContact resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure Active Directory object. The directoryObject type is the base type for many other directory entity types.


Inherits from [directoryObject](../resources/directoryobject.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List orgContacts](../api/orgcontact-list.md)|[orgContact](../resources/orgcontact.md) collection|Get a list of the [orgContact](../resources/orgcontact.md) objects and their properties.|
|[Create orgContact](../api/orgcontact-post-contacts.md)|[orgContact](../resources/orgcontact.md)|Create a new [orgContact](../resources/orgcontact.md) object.|
|[Get orgContact](../api/orgcontact-get.md)|[orgContact](../resources/orgcontact.md)|Read the properties and relationships of an [orgContact](../resources/orgcontact.md) object.|
|[Update orgContact](../api/orgcontact-update.md)|[orgContact](../resources/orgcontact.md)|Update the properties of an [orgContact](../resources/orgcontact.md) object.|
|[Delete orgContact](../api/orgcontact-delete.md)|None|Deletes an [orgContact](../resources/orgcontact.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|addresses|[physicalOfficeAddress](../resources/physicalofficeaddress.md) collection|**TODO: Add Description**|
|cloudMSRtcIsSipEnabled|Boolean|**TODO: Add Description**|
|cloudMSRtcOwnerUrn|String|**TODO: Add Description**|
|cloudMSRtcPolicyAssignments|String collection|**TODO: Add Description**|
|cloudMSRtcPool|String|**TODO: Add Description**|
|cloudMSRtcServiceAttribute|[cloudMSRtcServiceAttributes](../resources/cloudmsrtcserviceattributes.md)|**TODO: Add Description**|
|cloudSipLine|String|**TODO: Add Description**|
|companyName|String|**TODO: Add Description**|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|department|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|givenName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|jobTitle|String|**TODO: Add Description**|
|mail|String|**TODO: Add Description**|
|mailNickname|String|**TODO: Add Description**|
|onPremisesLastSyncDateTime|DateTimeOffset|**TODO: Add Description**|
|onPremisesProvisioningErrors|[onPremisesProvisioningError](../resources/onpremisesprovisioningerror.md) collection|**TODO: Add Description**|
|onPremisesSyncEnabled|Boolean|**TODO: Add Description**|
|phones|[phone](../resources/phone.md) collection|**TODO: Add Description**|
|proxyAddresses|String collection|**TODO: Add Description**|
|surname|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|directReports|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|manager|[directoryObject](../resources/directoryobject.md)|**TODO: Add Description**|
|memberOf|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|transitiveMemberOf|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|transitiveReports|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.orgContact",
  "baseType": "microsoft.graph.directoryObject",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.orgContact",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "addresses": [
    {
      "@odata.type": "microsoft.graph.physicalOfficeAddress"
    }
  ],
  "cloudMSRtcIsSipEnabled": "Boolean",
  "cloudMSRtcOwnerUrn": "String",
  "cloudMSRtcPolicyAssignments": [
    "String"
  ],
  "cloudMSRtcPool": "String",
  "cloudMSRtcServiceAttribute": {
    "@odata.type": "microsoft.graph.cloudMSRtcServiceAttributes"
  },
  "cloudSipLine": "String",
  "companyName": "String",
  "department": "String",
  "displayName": "String",
  "givenName": "String",
  "jobTitle": "String",
  "mail": "String",
  "mailNickname": "String",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesProvisioningErrors": [
    {
      "@odata.type": "microsoft.graph.onPremisesProvisioningError"
    }
  ],
  "onPremisesSyncEnabled": "Boolean",
  "phones": [
    {
      "@odata.type": "microsoft.graph.phone"
    }
  ],
  "proxyAddresses": [
    "String"
  ],
  "surname": "String"
}
```

