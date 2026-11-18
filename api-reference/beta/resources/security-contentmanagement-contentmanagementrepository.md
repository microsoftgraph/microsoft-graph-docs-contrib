---
title: "contentManagementRepository resource type"
description: "Represents a connected source-control repository that delivers security content as code in the caller's tenant."
author: "AlexBrohshtut"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# contentManagementRepository resource type

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a connected source-control repository that delivers security content as code in the caller's tenant.


Inherits from [microsoft.graph.entity](../resources/entity.md).


## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List repositories](../api/contentmanagementroot-list-repositories.md)|[microsoft.graph.security.contentManagement.contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md) collection|List connected repositories.|
|[Get contentManagementRepository](../api/security-contentmanagement-contentmanagementrepository-get.md)|[microsoft.graph.security.contentManagement.contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md)|Get one connection by its identifier.|
|[contentManagementRepository: connect](../api/security-contentmanagement-contentmanagementrepository-connect.md)|[microsoft.graph.security.contentManagement.contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md)|Connect a source-control repository.|
|[contentManagementRepository: discoverAvailableRepositories](../api/security-contentmanagement-contentmanagementrepository-discoveravailablerepositories.md)|[microsoft.graph.security.contentManagement.discoveredRepository](../resources/security-contentmanagement-discoveredrepository.md) collection|Discover up to 200 accessible candidate repositories.|
|[contentManagementRepository: modify](../api/security-contentmanagement-contentmanagementrepository-modify.md)|[microsoft.graph.security.contentManagement.contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md)|Modify a connected repository.|
|[contentManagementRepository: disconnect](../api/security-contentmanagement-contentmanagementrepository-disconnect.md)|[microsoft.graph.security.contentManagement.repositoryDisconnectResult](../resources/security-contentmanagement-repositorydisconnectresult.md)|Disconnect and report any cleanup warning.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|contentTypes|[microsoft.graph.security.contentManagement.repositoryContentType](../resources/enums-security-contentmanagement.md#repositorycontenttype-values) collection|Content kinds this repository is configured to deploy. The possible values are: `customDetection`, `unknownFutureValue`, `defenderWorkbook`. Use the `Prefer: include-unknown-enum-members` request header to get `defenderWorkbook`.|
|deploymentIdentity|[microsoft.graph.security.contentManagement.deploymentIdentity](../resources/security-contentmanagement-deploymentidentity.md)|Bring-your-own deployment identity used for deployment. Optional; when omitted the platform-managed identity path is used. Provide a service principal or a managed identity. Immutable after connecting.|
|deploymentScope|[microsoft.graph.security.contentManagement.deploymentScope](../resources/security-contentmanagement-deploymentscope.md)|Optional Azure deployment scope, immutable after connecting the repository.|
|description|String|Optional description of the connection.|
|displayName|String|Human-readable name of the connection. Supports `$filter` (`eq`, `ne`) and `$orderby`.|
|id|String|A unique identifier for this resource. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`).|
|lastDeploymentInfo|[microsoft.graph.security.contentManagement.repositoryDeploymentInfo](../resources/security-contentmanagement-repositorydeploymentinfo.md)|Status of the most recent deployment from this repository. Read-only.|
|pullRequest|[microsoft.graph.security.contentManagement.repositoryPullRequest](../resources/security-contentmanagement-repositorypullrequest.md)|The setup pull request opened for this connection, when applicable. Read-only.|
|repoType|[microsoft.graph.security.contentManagement.repositoryType](../resources/enums-security-contentmanagement.md#repositorytype-values)|Source-control provider for this repository. Immutable after connecting. Supports `$filter` (`eq`, `ne`). The possible values are: `gitHub`, `azureDevOps`, `unknownFutureValue`.|
|servicePrincipal|[microsoft.graph.security.contentManagement.repositoryServicePrincipal](../resources/security-contentmanagement-repositoryserviceprincipal.md)|Service principal / managed identity used by the connection. Read-only.|
|sourceLocation|[microsoft.graph.security.contentManagement.repositorySettings](../resources/security-contentmanagement-repositorysettings.md)|Location of the source repository (URL and branch).|
|systemData|[microsoft.graph.security.contentManagement.systemData](../resources/security-contentmanagement-systemdata.md)|Creation and last modification provenance. Read-only.|
|workloadIdentityFederation|[microsoft.graph.security.contentManagement.repositoryWorkloadIdentityFederation](../resources/security-contentmanagement-repositoryworkloadidentityfederation.md)|Workload identity federation details for the connection, when configured. Read-only.|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.contentManagement.contentManagementRepository",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.contentManagement.contentManagementRepository",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "repoType": "String",
  "contentTypes": [
    "String"
  ],
  "sourceLocation": {
    "@odata.type": "microsoft.graph.security.contentManagement.repositorySettings"
  },
  "deploymentScope": {
    "@odata.type": "microsoft.graph.security.contentManagement.deploymentScope"
  },
  "deploymentIdentity": {
    "@odata.type": "microsoft.graph.security.contentManagement.deploymentIdentity"
  },
  "servicePrincipal": {
    "@odata.type": "microsoft.graph.security.contentManagement.repositoryServicePrincipal"
  },
  "workloadIdentityFederation": {
    "@odata.type": "microsoft.graph.security.contentManagement.repositoryWorkloadIdentityFederation"
  },
  "lastDeploymentInfo": {
    "@odata.type": "microsoft.graph.security.contentManagement.repositoryDeploymentInfo"
  },
  "pullRequest": {
    "@odata.type": "microsoft.graph.security.contentManagement.repositoryPullRequest"
  },
  "systemData": {
    "@odata.type": "microsoft.graph.security.contentManagement.systemData"
  }
}
```
