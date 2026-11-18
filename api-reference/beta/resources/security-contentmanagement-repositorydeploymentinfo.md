---
title: "repositoryDeploymentInfo resource type"
description: "Contains the last deployment status in the **lastDeploymentInfo** property of a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md)."
author: "AlexBrohshtut"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# repositoryDeploymentInfo resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the last deployment status in the **lastDeploymentInfo** property of a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md).

Deployment status requires a verified GitHub App installation. See [connect](../api/security-contentmanagement-contentmanagementrepository-connect.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|deploymentFetchStatus|[microsoft.graph.security.contentManagement.repositoryDeploymentFetchStatus](../resources/enums-security-contentmanagement.md#repositorydeploymentfetchstatus-values)|Whether deployment status could be fetched. The possible values are: `success`, `unauthorized`, `notFound`, `unknownFutureValue`, `unavailable`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `unavailable`.|
|message|String|Human-readable status or error message.|
|run|[microsoft.graph.security.contentManagement.repositoryDeployment](../resources/security-contentmanagement-repositorydeployment.md)|Deployment details; null when no run was fetched.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.contentManagement.repositoryDeploymentInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.repositoryDeploymentInfo",
  "deploymentFetchStatus": "String",
  "message": "String",
  "run": {
    "@odata.type": "microsoft.graph.security.contentManagement.repositoryDeployment"
  }
}
```
