---
title: "includeAllAccountTargetContent resource type"
description: "Represents included or excluded users from an attack simulation training campaign."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# includeAllAccountTargetContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents included or excluded users from an attack simulation training campaign.

Attack simulation and training is a service available as part of [Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365?view=o365-worldwide&preserve-view=true). This service lets tenant users experience a realistic benign phishing attack and learn from it. The service enables tenant administrators to simulate, assign trainings, and read derived insights into online behaviors of users in the phishing simulations. The service provides attack simulation reports that help tenants identify security knowledge gaps, so that they can further train their users to decrease their susceptibility to attacks.

The attack simulation and training API enables tenant administrators to list launched **simulation** exercises and trainings, and get [reports](report-m365defender-reports-overview.md) on derived insights into online behaviors of users in the phishing simulations.

Inherits from [accountTargetContent](../resources/accounttargetcontent.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get includedAccountTarget](../api/attacksimulationroot-get-includedaccounttarget.md)|[includeAllAccountTargetContent](../resources/includeallaccounttargetcontent.md)|Get included user for an attack simulation campaigns.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|type|[accountTargetContentType](../resources/accountTargetContent.md#accountTargetContentType-values. Inherited from [accountTargetContent](../resources/accounttargetcontent.md)|Type of account target content. Possible values are: `includeAll`,`addressBook`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.includeAllAccountTargetContent",
  "openType": true
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.security.includeAllAccountTargetContent",
    "type": "String"
}
```

## See also

- [Simulate a phishing attack](/microsoft-365/security/office-365-security/attack-simulation-training?view=o365-worldwide&preserve-view=true)
- [Get started using attack simulation training](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).
