---
title: "impactedUserAsset resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# impactedUserAsset resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.security.impactedAsset](../resources/security-impactedasset.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|identifier|microsoft.graph.security.userAssetIdentifier|**TODO: Add Description**.The possible values are: `accountObjectId`, `accountSid`, `accountUpn`, `accountName`, `accountDomain`, `accountId`, `requestAccountSid`, `requestAccountName`, `requestAccountDomain`, `recipientObjectId`, `processAccountObjectId`, `initiatingAccountSid`, `initiatingProcessAccountUpn`, `initiatingAccountName`, `initiatingAccountDomain`, `servicePrincipalId`, `servicePrincipalName`, `targetAccountUpn`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

