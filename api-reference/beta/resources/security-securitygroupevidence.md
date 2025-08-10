---
title: "securityGroupEvidence resource type"
description: "Represents a security group that is reported in the alert as evidence."
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# securityGroupEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a security group that is reported in the alert as evidence.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
| Property                  | Type   | Description                                                   |
|:--------------------------|:-------|:--------------------------------------------------------------|
| activeDirectoryObjectGuid | Guid   | The unique group identifier assigned by Active Directory.     |
| displayName               | String | The name of the security group.                               |
| distinguishedName         | String | The distinguished name of the security group.                 |
| friendlyName              | String | The friendly name of the security group.                      |
| securityGroupId           | String | Unique identifier of the security group.                      |
| sid                       | String | The security identifier of the group.                         |

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
  "activeDirectoryObjectGuid": "Guid",
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "distinguishedName": "String",
  "friendlyName": "String",
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": ["String"],
  "securityGroupId": "String",
  "sid": "String",
  "tags": ["String"],
  "verdict": "String"
}
```
