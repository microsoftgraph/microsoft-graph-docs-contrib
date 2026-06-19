---
title: "impactedUserAsset resource type (deprecated)"
description: "Represents a user account that was identified in an alert triggered by a custom detection rule."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/25/2026
---

# impactedUserAsset resource type (deprecated)

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!IMPORTANT]
> The **impactedUserAsset** resource type is deprecated and will be removed on 2026-10-01. Use [entityMapping](../resources/security-entitymapping.md) and its derived types via `alertTemplate.entityMappings` instead. See the [custom detection rule](../resources/security-detectionrule.md) topic for the new shape.

Represents a user account that was identified in an alert triggered by a [custom detection rule](../resources/security-detectionrule.md).

Inherits from [microsoft.graph.security.impactedAsset](../resources/security-impactedasset.md).

## Properties
| Property   | Type                                                                                                      | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|:-----------|:----------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| identifier | [microsoft.graph.security.userAssetIdentifier](../resources/enums-security.md#userassetidentifier-values) | Unique identifier for the impacted user asset. The possible values are: `accountObjectId`, `accountSid`, `accountUpn`, `accountName`, `accountDomain`, `accountId`, `requestAccountSid`, `requestAccountName`, `requestAccountDomain`, `recipientObjectId`, `processAccountObjectId`, `initiatingAccountSid`, `initiatingProcessAccountUpn`, `initiatingAccountName`, `initiatingAccountDomain`, `servicePrincipalId`, `servicePrincipalName`, `targetAccountUpn`, `unknownFutureValue`. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.impactedUserAsset"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.impactedUserAsset",
  "identifier": "String"
}
```

