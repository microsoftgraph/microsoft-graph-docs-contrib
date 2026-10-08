---
title: "allowFileResponseAction resource type (deprecated)"
description: "Describes a response action to allow a file to run on devices controlled by Microsoft Defender for Endpoint."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# allowFileResponseAction resource type (deprecated)

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!IMPORTANT]
> The **allowFileResponseAction** resource type is deprecated and will be removed on October 1, 2026. Use [automatedAction](../resources/security-automatedaction.md) (grouped via [automatedActionSet](../resources/security-automatedactionset.md)) on the [detectionAction](../resources/security-detectionaction.md) resource instead.

Describes a response action that allows a file to run on devices controlled by Microsoft Defender for Endpoint.

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
  "@odata.type": "microsoft.graph.security.allowFileResponseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.allowFileResponseAction",
  "identifier": "String",
  "deviceGroupNames": [
    "String"
  ]
}
```

