---
title: "ediscoveryNoncustodialDataSource resource type"
description: "Non-custodial data sources lets you add data to a case without having to associate it to a custodian."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# ediscoveryNoncustodialDataSource resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Enables the addition of data to an eDiscovery case without associating it with a custodian. For details, see [Add non-custodial data sources to an eDiscovery (Premium) case](/microsoft-365/compliance/non-custodial-data-sources).

Inherits from [dataSourceContainer](../resources/security-datasourcecontainer.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoveryNoncustodialDataSources](../api/security-ediscoverysearch-list-noncustodialsources.md)|[microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) collection|Get a list of the [ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) objects and their properties.|
|[Create ediscoveryNoncustodialDataSource](../api/security-ediscoverysearch-post-noncustodialsources.md)|[microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md)|Create a new [ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) object.|
|[Get ediscoveryNoncustodialDataSource](../api/security-ediscoverynoncustodialdatasource-get.md)|[microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md)|Read the properties and relationships of an [ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) object.|
|[updateIndex](../api/security-ediscoverynoncustodialdatasource-updateindex.md)|None|Triggers a indexOperation to make a non-custodial data source and associated data sources searchable.|
|[release](../api/security-ediscoverynoncustodialdatasource-release.md)|None|Release a non-custodial data source from a case.|
|[applyHold](../api/security-ediscoverynoncustodialdatasource-applyhold.md)|None|Start the process of applying hold to eDiscovery non-custodial data sources.|
|[removeHold](../api/security-ediscoverynoncustodialdatasource-removehold.md)|None|Start the process of removing hold from eDiscovery non-custodial data sources.|
|[List ediscoveryIndexOperation](../api/security-ediscoverycustodian-list-lastindexoperation.md)|[microsoft.graph.security.ediscoveryIndexOperation](../resources/security-ediscoveryindexoperation.md) collection|Get a list of the [ediscoveryIndexOperation](../resources/security-ediscoveryindexoperation.md) associated with an [ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Created date and time of the nonCustodialDataSource. Inherited from [microsoft.graph.security.datasourcecontainer](../resources/security-datasourcecontainer.md).|
|displayName|String|Display name of the noncustodialDataSource. Inherited from [microsoft.graph.security.datasourcecontainer](../resources/security-datasourcecontainer.md).|
|id|String|Unique identifier of the nonCustodialDataSource. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|Last modified date and time of the nonCustodialDataSource. Inherited from [microsoft.graph.security.datasourcecontainer](../resources/security-datasourcecontainer.md).|
|releasedDateTime|DateTimeOffset|Date and time that the nonCustodialDataSource was released from the case. Inherited from [microsoft.graph.security.datasourcecontainer](../resources/security-datasourcecontainer.md).|
|status|microsoft.graph.security.dataSourceContainerStatus|Latest status of the nonCustodialDataSource. Inherited from [microsoft.graph.security.datasourcecontainer](../resources/security-datasourcecontainer.md). Possible values are: `Active`, `Released`.|
|holdStatus|microsoft.graph.security.dataSourceHoldStatus|The hold status of the nonCustodialDataSource.The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|dataSource|[microsoft.graph.security.dataSource](../resources/security-datasource.md)|User source or SharePoint site data source as non-custodial data source.|
|lastIndexOperation|[microsoft.graph.security.ediscoveryIndexOperation](../resources/security-ediscoveryindexoperation.md)|Operation entity that represents the latest indexing for the non-custodial data source.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryNoncustodialDataSource",
  "baseType": "microsoft.graph.security.dataSourceContainer",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryNoncustodialDataSource",
  "id": "String (identifier)",
  "status": "String",
  "holdStatus": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "releasedDateTime": "String (timestamp)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```