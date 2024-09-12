---
title: "identityContainer resource type"
description: "Represents a container for security identities APIs that currently exposes the healthIssues relationship."
author: "naalmog"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "security"
---

# identityContainer resource type

Namespace: microsoft.graph.security

Represents a container for security identities APIs that currently exposes the [healthIssues](security-healthissue.md) relationship.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List healthissues](../api/security-identitycontainer-list-healthissues.md)|[microsoft.graph.security.healthIssue](../resources/security-healthissue.md) collection|Get a list of [healthIssue](../resources/security-healthissue.md) objects and their properties.|

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|healthIssues|[microsoft.graph.security.healthIssue](security-healthissue.md) collection| Represents potential issues identified by Microsoft Defender for Identity within a customer's Microsoft Defender for Identity configuration. |

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.identityContainer",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.identityContainer"
}
```
