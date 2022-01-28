---
title: "informationProtection resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# informationProtection resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List informationProtections](../api/security-informationprotection-list.md)|[microsoft.graph.security.informationProtection](../resources/security-informationprotection.md) collection|Get a list of the [informationProtection](../resources/security-informationprotection.md) objects and their properties.|
|[Create informationProtection](../api/security-security-post-informationprotection.md)|[microsoft.graph.security.informationProtection](../resources/security-informationprotection.md)|Create a new [informationProtection](../resources/security-informationprotection.md) object.|
|[Get informationProtection](../api/security-informationprotection-get.md)|[microsoft.graph.security.informationProtection](../resources/security-informationprotection.md)|Read the properties and relationships of an [informationProtection](../resources/security-informationprotection.md) object.|
|[Update informationProtection](../api/security-informationprotection-update.md)|[microsoft.graph.security.informationProtection](../resources/security-informationprotection.md)|Update the properties of an [informationProtection](../resources/security-informationprotection.md) object.|
|[Delete informationProtection](../api/security-informationprotection-delete.md)|None|Deletes an [informationProtection](../resources/security-informationprotection.md) object.|
|[decryptBuffer](../api/security-informationprotection-decryptbuffer.md)|[microsoft.graph.security.bufferDecryptionResult](../resources/security-bufferdecryptionresult.md)|**TODO: Add Description**|
|[encryptBuffer](../api/security-informationprotection-encryptbuffer.md)|[microsoft.graph.security.bufferEncryptionResult](../resources/security-bufferencryptionresult.md)|**TODO: Add Description**|
|[signDigest](../api/security-informationprotection-signdigest.md)|[microsoft.graph.security.signingResult](../resources/security-signingresult.md)|**TODO: Add Description**|
|[verifySignature](../api/security-informationprotection-verifysignature.md)|[microsoft.graph.security.verificationResult](../resources/security-verificationresult.md)|**TODO: Add Description**|
|[List informationProtectionPolicySetting](../api/security-informationprotection-list-labelpolicysettings.md)|[microsoft.graph.security.informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md) collection|Get the informationProtectionPolicySetting resources from the labelPolicySettings navigation property.|
|[Create informationProtectionPolicySetting](../api/security-informationprotection-post-labelpolicysettings.md)|[microsoft.graph.security.informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md)|Create a new informationProtectionPolicySetting object.|
|[List sensitivityLabels](../api/security-informationprotection-list-sensitivitylabels.md)|[microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) collection|Get the sensitivityLabel resources from the sensitivityLabels navigation property.|
|[Create sensitivityLabel](../api/security-informationprotection-post-sensitivitylabels.md)|[microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md)|Create a new sensitivityLabel object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|labelPolicySettings|[informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md)|**TODO: Add Description**|
|sensitivityLabels|[microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.informationProtection",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.informationProtection"
}
```

