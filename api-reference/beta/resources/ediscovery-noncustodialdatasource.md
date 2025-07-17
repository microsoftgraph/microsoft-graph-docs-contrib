---
title: "noncustodialDataSource resource type"
description: "Noncustodial data sources let you add data to a case without having to associate it to a custodian"
author: "mahage-msft"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 06/10/2024
---

# noncustodialDataSource resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Noncustodial data sources let you add data to a case without having to associate it to a custodian. To learn more, visit [Add noncustodial data sources to an Advanced eDiscovery case
](/microsoft-365/compliance/non-custodial-data-sources)

Inherits from [dataSourceContainer](../resources/ediscovery-datasourcecontainer.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/ediscovery-noncustodialdatasource-list.md)|[microsoft.graph.ediscovery.noncustodialDataSource](../resources/ediscovery-noncustodialdatasource.md) collection|Get a list of the [noncustodialDataSource](../resources/ediscovery-noncustodialdatasource.md) objects and their properties.|
|[Get](../api/ediscovery-noncustodialdatasource-get.md)|[microsoft.graph.ediscovery.noncustodialDataSource](../resources/ediscovery-noncustodialdatasource.md)|Read the properties and relationships of a [noncustodialDataSource](../resources/ediscovery-noncustodialdatasource.md) object.|
|[Release](../api/ediscovery-noncustodialdatasource-release.md)|None|Releases a noncustodial data source.|
|[List datasource](../api/ediscovery-noncustodialdatasource-list-datasource.md)|[microsoft.graph.ediscovery.dataSource](../resources/ediscovery-datasource.md) collection|Get the dataSource resources from the dataSource navigation property.|
|[Create](../api/ediscovery-noncustodialdatasource-post.md)|[microsoft.graph.ediscovery.dataSource](../resources/ediscovery-datasource.md)|Create a new dataSource object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|applyHoldToSource|Boolean|Indicates if hold is applied to noncustodial data source (such as mailbox or site).|
|createdDateTime|DateTimeOffset|Created date and time of the nonCustodialDataSource. Inherited from [microsoft.graph.ediscovery.dataSourceContainer](../resources/ediscovery-datasourcecontainer.md).|
|displayName|String|Display name of the noncustodialDataSource. Inherited from [microsoft.graph.ediscovery.dataSourceContainer](../resources/ediscovery-datasourcecontainer.md).|
|id|String|Unique identifier of the nonCustodialDataSource. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|Last modified date and time of the nonCustodialDataSource. Inherited from [microsoft.graph.ediscovery.dataSourceContainer](../resources/ediscovery-datasourcecontainer.md).|
|releasedDateTime|DateTimeOffset|Date and time that the nonCustodialDataSource was released from the case. Inherited from [microsoft.graph.ediscovery.dataSourceContainer](../resources/ediscovery-datasourcecontainer.md).|
|status|microsoft.graph.ediscovery.dataSourceContainerStatus|Latest status of the nonCustodialDataSource. Inherited from [microsoft.graph.ediscovery.dataSourceContainer](../resources/ediscovery-datasourcecontainer.md). Possible values are: `Active`, `Released`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|dataSource|[microsoft.graph.ediscovery.dataSource](../resources/ediscovery-datasource.md)|User source or SharePoint site data source as noncustodial data source.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.noncustodialDataSource",
  "baseType": "microsoft.graph.ediscovery.dataSourceContainer",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.noncustodialDataSource",
  "id": "String (identifier)",
  "status": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "releasedDateTime": "String (timestamp)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "applyHoldToSource": "Boolean"
}
```
