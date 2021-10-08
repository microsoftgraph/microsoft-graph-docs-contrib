---
title: "domain resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# domain resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List domains](../api/domain-list.md)|[domain](../resources/domain.md) collection|Get a list of the [domain](../resources/domain.md) objects and their properties.|
|[Create domain](../api/domain-post-domains.md)|[domain](../resources/domain.md)|Create a new [domain](../resources/domain.md) object.|
|[Get domain](../api/domain-get.md)|[domain](../resources/domain.md)|Read the properties and relationships of a [domain](../resources/domain.md) object.|
|[Update domain](../api/domain-update.md)|[domain](../resources/domain.md)|Update the properties of a [domain](../resources/domain.md) object.|
|[Delete domain](../api/domain-delete.md)|None|Deletes a [domain](../resources/domain.md) object.|
|[List domainNameReferences](../api/domain-list-domainnamereferences.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the domainNameReferences navigation property.|
|[Add domainNameReferences](../api/domain-post-domainnamereferences.md)|[directoryObject](../resources/directoryobject.md)|Add domainNameReferences by posting to the domainNameReferences collection.|
|[List serviceConfigurationRecords](../api/domain-list-serviceconfigurationrecords.md)|[domainDnsRecord](../resources/domaindnsrecord.md) collection|Get the domainDnsRecord resources from the serviceConfigurationRecords navigation property.|
|[Create domainDnsRecord](../api/domain-post-serviceconfigurationrecords.md)|[domainDnsRecord](../resources/domaindnsrecord.md)|Create a new domainDnsRecord object.|
|[List sharedEmailDomainInvitations](../api/domain-list-sharedemaildomaininvitations.md)|[sharedEmailDomainInvitation](../resources/sharedemaildomaininvitation.md) collection|Get the sharedEmailDomainInvitation resources from the sharedEmailDomainInvitations navigation property.|
|[Create sharedEmailDomainInvitation](../api/domain-post-sharedemaildomaininvitations.md)|[sharedEmailDomainInvitation](../resources/sharedemaildomaininvitation.md)|Create a new sharedEmailDomainInvitation object.|
|[List verificationDnsRecords](../api/domain-list-verificationdnsrecords.md)|[domainDnsRecord](../resources/domaindnsrecord.md) collection|Get the domainDnsRecord resources from the verificationDnsRecords navigation property.|
|[Create domainDnsRecord](../api/domain-post-verificationdnsrecords.md)|[domainDnsRecord](../resources/domaindnsrecord.md)|Create a new domainDnsRecord object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationType|String|**TODO: Add Description**|
|availabilityStatus|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|isAdminManaged|Boolean|**TODO: Add Description**|
|isDefault|Boolean|**TODO: Add Description**|
|isInitial|Boolean|**TODO: Add Description**|
|isRoot|Boolean|**TODO: Add Description**|
|isVerified|Boolean|**TODO: Add Description**|
|passwordNotificationWindowInDays|Int32|**TODO: Add Description**|
|passwordValidityPeriodInDays|Int32|**TODO: Add Description**|
|state|[domainState](../resources/domainstate.md)|**TODO: Add Description**|
|supportedServices|String collection|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|domainNameReferences|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|serviceConfigurationRecords|[domainDnsRecord](../resources/domaindnsrecord.md) collection|**TODO: Add Description**|
|sharedEmailDomainInvitations|[sharedEmailDomainInvitation](../resources/sharedemaildomaininvitation.md) collection|**TODO: Add Description**|
|verificationDnsRecords|[domainDnsRecord](../resources/domaindnsrecord.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.domain",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.domain",
  "authenticationType": "String",
  "availabilityStatus": "String",
  "isAdminManaged": "Boolean",
  "isDefault": "Boolean",
  "isInitial": "Boolean",
  "isRoot": "Boolean",
  "isVerified": "Boolean",
  "id": "String (identifier)",
  "passwordNotificationWindowInDays": "Integer",
  "passwordValidityPeriodInDays": "Integer",
  "supportedServices": [
    "String"
  ],
  "state": {
    "@odata.type": "microsoft.graph.domainState"
  }
}
```

