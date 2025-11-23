---
title: "activeDirectoryDomainEvidence resource type"
description: "Represents a Active Directory Domain entity that reported as part of the security detection alert."
ms.date: 05/14/2025
author: "t-hareldamti"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---


# activeDirectoryDomainEvidence resource type

Namespace: microsoft.graph.security

A file that is reported in the alert as evidence.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
| activeDirectoryDomainName | String |The name of the ActiveDirectoryDomainName|No|Yes|
| trustedDomains |[microsoft.graph.security.activeDirectoryDomainEvidence](./security-activedirectorydomainevidence.md) list|List of trusted domains|No|Yes|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.activeDirectoryDomainEvidence",
  "baseType": "microsoft.graph.security.activeDirectoryDomainEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.activeDirectoryDomainEvidence",
  "createdDateTime": "String (timestamp)",
  "verdict": "String",
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": [
    "String"
  ],
  "detailedRoles": [
    "String"
  ],
  "tags": [
    "String"
  ],
  "activeDirectoryDomainName": "String",
  "trustedDomains": [{"@odata.type": "microsoft.graph.security.activeDirectoryDomainEvidence"}],
}
```