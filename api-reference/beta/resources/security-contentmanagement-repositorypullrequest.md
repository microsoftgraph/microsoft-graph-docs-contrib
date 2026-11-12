---
title: "repositoryPullRequest resource type"
description: "Describes the setup pull request in the **pullRequest** property of a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md)."
author: "AlexBrohshtut"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# repositoryPullRequest resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the setup pull request in the **pullRequest** property of a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md).


## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|state|[microsoft.graph.security.contentManagement.repositoryPullRequestState](../resources/enums-security-contentmanagement.md#repositorypullrequeststate-values)|Whether the pull request is open, closed, or merged. The possible values are: `open`, `closed`, `unknownFutureValue`, `merged`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `merged`.|
|url|String|Pull request URL.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.contentManagement.repositoryPullRequest"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.repositoryPullRequest",
  "url": "String",
  "state": "String"
}
```
