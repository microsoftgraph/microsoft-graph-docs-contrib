---
title: "verifiedIdProfile resource type"
description: "Profile containing properties about a Verified ID provider and purpose"
author: "tilarso"
ms.date: 10/10/2025
toc.title: Verified ID profile (preview)
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# verifiedIdProfile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Verified ID profiles defining set of properties and usage patterns. 

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/identityverifiedidroot-list-profiles.md)|[verifiedIdProfile](../resources/verifiedidprofile.md) collection|Get a list of the verifiedIdProfile objects and their properties.|
|[Create](../api/identityverifiedidroot-post-profiles.md)|[verifiedIdProfile](../resources/verifiedidprofile.md)|Create a new verifiedIdProfile object.|
|[Get](../api/verifiedidprofile-get.md)|[verifiedIdProfile](../resources/verifiedidprofile.md)|Read the properties and relationships of [verifiedIdProfile](../resources/verifiedidprofile.md) object.|
|[Update](../api/verifiedidprofile-update.md)|[verifiedIdProfile](../resources/verifiedidprofile.md)|Update the properties of a verifiedIdProfile object.|
|[Delete](../api/identityverifiedidroot-delete-profiles.md)|None|Delete a verifiedIdProfile object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String| Description for the verified ID profile. Required.|
|faceCheckConfiguration|[faceCheckConfiguration](../resources/facecheckconfiguration.md)| Set of properties configuring Entra Verified ID Face Check behavior. Required.|
|id|String| Profile identifier. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|DateTime the profile was last modified. Optional.|
|name|String| Display name for the verified ID profile. Required.|
|priority|Int32|Defines profile processing priority if multiple profiles are configured. Optional.|
|state|verifiedIdProfileState| Enablement state for the profile. The possible values are: `enabled`, `disabled`, `unknownFutureValue`. Required.|
|verifierDid|String| Decentralized Identifier (DID) string that represents the verifier in the verifiable credential exchange. Required.|
|verifiedIdProfileConfiguration|[verifiedIdProfileConfiguration](../resources/verifiedidprofileconfiguration.md)| Set of properties expressing the accepted issuer, claims binding, and credential type. Required.|
|verifiedIdUsageConfigurations|[verifiedIdUsageConfiguration](../resources/verifiedidusageconfiguration.md) collection| Collection defining the usage purpose for the profile. The possible values are: `recovery`, `onboarding`, `all`, `unknownFutureValue`. Required.|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.verifiedIdProfile",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.verifiedIdProfile",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "state": "String",
  "verifierDid": "String",
  "priority": "Integer",
  "verifiedIdProfileConfiguration": {
    "@odata.type": "microsoft.graph.verifiedIdProfileConfiguration"
  },
  "faceCheckConfiguration": {
    "@odata.type": "microsoft.graph.faceCheckConfiguration"
  },
  "verifiedIdUsageConfigurations": [
    {
      "@odata.type": "microsoft.graph.verifiedIdUsageConfiguration"
    }
  ]
}
```

