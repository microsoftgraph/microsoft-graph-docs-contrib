---
title: "blockFileResponseAction resource type"
description: "Describes a response action that blocks a file from running on devices controlled by Microsoft Defender for Endpoint."
author: "mmekler"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# blockFileResponseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes a response action that blocks a file from running on devices controlled by Microsoft Defender for Endpoint.

Inherits from [microsoft.graph.security.responseAction](../resources/security-responseaction.md).

## Properties
| Property         | Type                                                                                                        | Description                                                                                                                                                     |
|------------------|-------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| identifier       | [microsoft.graph.security.fileEntityIdentifier](../resources/enums-security.md#fileentityidentifier-values) | Unique identifier for the response action. The possible values are: `sha1`, `initiatingProcessSHA1`, `sha256`, `initiatingProcessSHA256`, `unknownFutureValue`. |
| deviceGroupNames | String collection                                                                                           | Device groups to which the actions set in the custom detection rule are applied. [More information](/microsoft-365/security/defender-endpoint/machine-groups)    |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.blockFileResponseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.blockFileResponseAction",
  "identifier": "String",
  "deviceGroupNames": [
    "String"
  ]
}
```

