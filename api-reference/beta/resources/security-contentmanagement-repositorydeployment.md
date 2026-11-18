---
title: "repositoryDeployment resource type"
description: "Contains the deployment run in the **run** property of a [repositoryDeploymentInfo](../resources/security-contentmanagement-repositorydeploymentinfo.md)."
author: "AlexBrohshtut"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# repositoryDeployment resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the deployment run in the **run** property of a [repositoryDeploymentInfo](../resources/security-contentmanagement-repositorydeploymentinfo.md).


## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|deploymentDateTime|DateTimeOffset|When the deployment ran.|
|deploymentId|String|Deployment id.|
|deploymentLogsUrl|String|URL where the deployment logs can be viewed.|
|deploymentResult|[microsoft.graph.security.contentManagement.repositoryDeploymentResult](../resources/enums-security-contentmanagement.md#repositorydeploymentresult-values)|Result of the deployment; pending until a final result is known. The possible values are: `success`, `canceled`, `failed`, `unknownFutureValue`, `pending`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `pending`.|
|deploymentState|[microsoft.graph.security.contentManagement.repositoryDeploymentState](../resources/enums-security-contentmanagement.md#repositorydeploymentstate-values)|Current state of the deployment. The possible values are: `inProgress`, `completed`, `queued`, `canceling`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.contentManagement.repositoryDeployment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.repositoryDeployment",
  "deploymentId": "String",
  "deploymentState": "String",
  "deploymentResult": "String",
  "deploymentDateTime": "String (timestamp)",
  "deploymentLogsUrl": "String"
}
```
