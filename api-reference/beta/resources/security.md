---
title: "security resource type"
description: "**TODO: Add Description**"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# security resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get security](../api/security-get.md)|[security](../resources/security.md)|Read the properties and relationships of a [security](../resources/security.md) object.|
|[Update security](../api/security-update.md)|[security](../resources/security.md)|Update the properties of a [security](../resources/security.md) object.|
|[List threatSubmissionRoot](../api/security-security-list-threatsubmission.md)|[threatSubmissionRoot](../resources/security-threatsubmissionroot.md) collection|Get the threatSubmissionRoot resources from the threatSubmission navigation property.|
|[Create threatSubmissionRoot](../api/security-post-threatsubmission.md)|[threatSubmissionRoot](../resources/security-threatsubmissionroot.md)|Create a new threatSubmissionRoot object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|providerStatus|[securityProviderStatus](../resources/securityproviderstatus.md) collection|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alerts|[alert](../resources/alert.md) collection|**TODO: Add Description**|
|attackSimulation|[attackSimulationRoot](../resources/attacksimulationroot.md)|**TODO: Add Description**|
|cases|[casesRoot](../resources/security-casesroot.md)|**TODO: Add Description**|
|cloudAppSecurityProfiles|[cloudAppSecurityProfile](../resources/cloudappsecurityprofile.md) collection|**TODO: Add Description**|
|domainSecurityProfiles|[domainSecurityProfile](../resources/domainsecurityprofile.md) collection|**TODO: Add Description**|
|fileSecurityProfiles|[fileSecurityProfile](../resources/filesecurityprofile.md) collection|**TODO: Add Description**|
|hostSecurityProfiles|[hostSecurityProfile](../resources/hostsecurityprofile.md) collection|**TODO: Add Description**|
|informationProtection|[informationProtection](../resources/security-informationprotection.md)|**TODO: Add Description**|
|ipSecurityProfiles|[ipSecurityProfile](../resources/ipsecurityprofile.md) collection|**TODO: Add Description**|
|providerTenantSettings|[providerTenantSetting](../resources/providertenantsetting.md) collection|**TODO: Add Description**|
|secureScoreControlProfiles|[secureScoreControlProfile](../resources/securescorecontrolprofile.md) collection|**TODO: Add Description**|
|secureScores|[secureScore](../resources/securescore.md) collection|**TODO: Add Description**|
|securityActions|[securityAction](../resources/securityaction.md) collection|**TODO: Add Description**|
|subjectRightsRequests|[subjectRightsRequest](../resources/subjectrightsrequest.md) collection|**TODO: Add Description**|
|threatSubmission|[threatSubmissionRoot](../resources/security-threatsubmissionroot.md)|**TODO: Add Description**|
|tiIndicators|[tiIndicator](../resources/tiindicator.md) collection|**TODO: Add Description**|
|userSecurityProfiles|[userSecurityProfile](../resources/usersecurityprofile.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security",
  "id": "String (identifier)",
  "providerStatus": [
    {
      "@odata.type": "microsoft.graph.securityProviderStatus"
    }
  ]
}
```

