---
title: "accountTargetContent resource type"
description: "Represents included or excluded users from an attack simulation training campaign."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# accountTargetContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents included or excluded users from an attack simulation training campaign.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get includedAccountTarget](../api/attacksimulationroot-get-includedaccounttarget.md)|[accountTargetContent](../resources/accountTargetContent.md)|Get included user for an attack simulation campaigns.|
|[Get excludedAccountTarget](../api/attacksimulationroot-get-excludedaccounttarget.md)|[accountTargetContent](../resources/accountTargetContent.md)|Get excluded user for an attack simulation campaigns.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|type|[accountTargetContentType](#accounttargetcontenttype-values)|Type of account target content. Possible values are: `unknown`, `addressBook`, `includeAll`, `unknownFutureValue`.|

### accountTargetContentType values

|Member|Description |
|:---|:---|
|unknown| Unknown type. |
|includeAll| Include all users under tenant boundary. |
|addressBook| Account details uploaded via Azure Active Directory.|
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accountTargetContent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accountTargetContent",
  "type": "String"
}
```

## See also

- [Simulate a phishing attack](/microsoft-365/security/office-365-security/attack-simulation-training?view=o365-worldwide&preserve-view=true)
- [Get started using attack simulation training](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).
