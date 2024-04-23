---
title: "authorizationSystem resource type"
description: "Represents a Microsoft Azure subscription, Amazon Web Services (AWS) account, or Google Cloud Platform (GCP) project that you've onboarded onto Microsoft Entra Permissions Management."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# authorizationSystem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Azure susbcription, Amazon Web Services (AWS) account, or Google Cloud Platform (GCP) project onboarded onto Microsoft Entra Permissions Management, Microsoft's cloud infrastructure entitlement management (CIEM) solution. Permissions Management discovers, remediates, and monitors the permissions and actions of identities in these platforms.

This object is read-only and is populated when you successfully onboard the platform onto Permissions Management.

The following resource types are derived from this resource:

- [awsAuthorizationSystem](../resources/awsauthorizationsystem.md) resource type
- [azureAuthorizationSystem](../resources/azureauthorizationsystem.md) resource type
- [gcpAuthorizationSystem](../resources/gcpauthorizationsystem.md) resource type

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authorizationSystems](../api/externalconnectors-external-list-authorizationsystems.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get a list of the [authorizationSystem](../resources/authorizationsystem.md) objects and their properties.|
|[Get authorizationSystem](../api/authorizationsystem-get.md)|[authorizationSystem](../resources/authorizationsystem.md)|Read the properties and relationships of an [authorizationSystem](../resources/authorizationsystem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authorizationSystemId|String|ID of the authorization system retrieved from the customer cloud environment. Supports `$filter`(`eq`, `contains`) and `$orderBy`.|
|authorizationSystemName|String|Name of the authorization system detected after onboarding. Supports `$filter`(`eq`,`contains`) and `$orderBy`.|
|authorizationSystemType|String|The type of authorization system. Can be `gcp`, `azure`, or `aws`. Supports `$filter`(`eq`).|
|id|String|Unique identifier for the authorization system within Microsoft Entra Permissions Management. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|dataCollectionInfo|[dataCollectionInfo](../resources/datacollectioninfo.md)|Defines how and whether Permissions Management collects data from the onboarded authorization system. Supports `$filter` (`eq`) as follows:  `$filter=dataCollectionInfo/entitlements/permissionsModificationCapability` and `$filter=dataCollectionInfo/entitlements/status`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authorizationSystem",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authorizationSystem",
  "id": "String (identifier)",
  "authorizationSystemId": "String",
  "authorizationSystemName": "String",
  "authorizationSystemType": "String"
}
```

