---
title: "securityGroupEvidence resource type"
description: "A security group that is reported in the alert as evidence."
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# securityGroupEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A security group that is reported in the alert as evidence.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
| Property                  | Type   | Description                                                   |
|---------------------------|--------|---------------------------------------------------------------|
| sid                       | String | The security identifier of the group.                         |
| securityGroupId           | String | Unique identifier of the security group.                      |
| distinguishedName         | String | The distinguished name of the security group                  |
| displayName               | String | The name of the security group.                               |
| friendlyName              | String | The friendly name of the security group.                      |
| activeDirectoryObjectGuid | Guid   | The group unique identifier assigned by the Active Directory. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.securityGroupEvidence",
  "baseType": "microsoft.graph.security.alertEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.securityGroupEvidence",
  "createdDateTime": "String (timestamp)",
  "verdict": "String",
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": [
    "String"
  ],
  "tags": [
    "String"
  ],
  "sid": "String",
  "securityGroupId": "String",
  "distinguishedName": "String",
  "displayName": "String",
  "friendlyName": "String",
  "groupObjectId": "Guid"
}
```