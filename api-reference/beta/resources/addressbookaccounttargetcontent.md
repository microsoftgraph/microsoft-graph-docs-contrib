---
title: "aaddressbookccountTargetContent resource type"
description: "Represents an included or excluded users from attack simulation training campaign."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# aaddressbookccountTargetContent resource type

Namespace: microsoft.graph

Represents an included or excluded users from attack simulation training campaign.

Attack simulation and training is a service available as part of [Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365?view=o365-worldwide&preserve-view=true). This service lets tenant users experience a realistic benign phishing attack and learn from it. The service enables tenant administrators to simulate, assign trainings, and read derived insights into online behaviors of users in the phishing simulations. The service provides attack simulation reports that help tenants identify security knowledge gaps, so that they can further train their users to decrease their susceptibility to attacks.

The attack simulation and training API enables tenant administrators to list launched **simulation** exercises and trainings, and get [reports](report-m365defender-reports-overview.md) on derived insights into online behaviors of users in the phishing simulations.

Inherits from [accountTargetContent](../resources/accounttargetcontent.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|accountTargetEmails|String Collection|List of user emails targeted|
|type|accountTargetContentType| Type of account target content contains targeted user email addresses. Inherited from [accountTargetContent](../resources/accounttargetcontent.md).The possible values are: `unknown`, `includeAll`, `addressBook`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.addressBookAccountTargetContent",
  "openType": true
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.security.addressBookAccountTargetContent",
    "accountTargetEmails": [
        "String"
    ],
    "type": {
        "@odata.type": "microsoft.graph.accountTargetContentType"
    }
}
```

## See also

- [Simulate a phishing attack](/microsoft-365/security/office-365-security/attack-simulation-training?view=o365-worldwide&preserve-view=true)
- [Get started using attack simulation training](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).
