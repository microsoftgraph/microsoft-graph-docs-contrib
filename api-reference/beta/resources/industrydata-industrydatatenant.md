---
title: "industryDataTenant resource type"
description: "The root singleton for the industryData API."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# industryDataTenant resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The root singleton for the industryData API.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List industryDataTenants](../api/externalconnectors-external-list-industrydata.md)|[microsoft.graph.industryData.industryDataTenant](../resources/industrydata-industrydatatenant.md) collection|Get a list of the [industryDataTenant](../resources/industrydata-industrydatatenant.md) objects and their properties.|
|[Create industryDataTenant](../api/externalconnectors-external-post-industrydata.md)|[microsoft.graph.industryData.industryDataTenant](../resources/industrydata-industrydatatenant.md)|Create a new [industryDataTenant](../resources/industrydata-industrydatatenant.md) object.|
|[Get industryDataTenant](../api/industrydata-industrydatatenant-get.md)|[microsoft.graph.industryData.industryDataTenant](../resources/industrydata-industrydatatenant.md)|Read the properties and relationships of an [industryDataTenant](../resources/industrydata-industrydatatenant.md) object.|
|[Update industryDataTenant](../api/industrydata-industrydatatenant-update.md)|[microsoft.graph.industryData.industryDataTenant](../resources/industrydata-industrydatatenant.md)|Update the properties of an [industryDataTenant](../resources/industrydata-industrydatatenant.md) object.|
|[Delete industryDataTenant](../api/externalconnectors-external-delete-industrydata.md)|None|Deletes an [industryDataTenant](../resources/industrydata-industrydatatenant.md) object.|
|[List dataConnectors](../api/industrydata-industrydatatenant-list-dataconnectors.md)|[microsoft.graph.industryData.industryDataConnector](../resources/industrydata-industrydataconnector.md) collection|Get the industryDataConnector resources from the dataConnectors navigation property.|
|[Create industryDataConnector](../api/industrydata-industrydatatenant-post-dataconnectors.md)|[microsoft.graph.industryData.industryDataConnector](../resources/industrydata-industrydataconnector.md)|Create a new industryDataConnector object.|
|[List inboundFlows](../api/industrydata-industrydatatenant-list-inboundflows.md)|[microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md) collection|Get the inboundFlow resources from the inboundFlows navigation property.|
|[Create inboundFlow](../api/industrydata-industrydatatenant-post-inboundflows.md)|[microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md)|Create a new inboundFlow object.|
|[List operations](../api/industrydata-industrydatatenant-list-operations.md)|[microsoft.graph.longRunningOperation](../resources/longrunningoperation.md) collection|Get the longRunningOperation resources from the operations navigation property.|
|[Create longRunningOperation](../api/industrydata-industrydatatenant-post-operations.md)|[microsoft.graph.longRunningOperation](../resources/longrunningoperation.md)|Create a new longRunningOperation object.|
|[List referenceDefinitions](../api/industrydata-industrydatatenant-list-referencedefinitions.md)|[microsoft.graph.industryData.referenceDefinition](../resources/industrydata-referencedefinition.md) collection|Get the referenceDefinition resources from the referenceDefinitions navigation property.|
|[Create referenceDefinition](../api/industrydata-industrydatatenant-post-referencedefinitions.md)|[microsoft.graph.industryData.referenceDefinition](../resources/industrydata-referencedefinition.md)|Create a new referenceDefinition object.|
|[List roleGroups](../api/industrydata-industrydatatenant-list-rolegroups.md)|[microsoft.graph.industryData.roleGroup](../resources/industrydata-rolegroup.md) collection|Get the roleGroup resources from the roleGroups navigation property.|
|[Create roleGroup](../api/industrydata-industrydatatenant-post-rolegroups.md)|[microsoft.graph.industryData.roleGroup](../resources/industrydata-rolegroup.md)|Create a new roleGroup object.|
|[List runs](../api/industrydata-industrydatatenant-list-runs.md)|[microsoft.graph.industryData.industryDataRun](../resources/industrydata-industrydatarun.md) collection|Get the industryDataRun resources from the runs navigation property.|
|[Create industryDataRun](../api/industrydata-industrydatatenant-post-runs.md)|[microsoft.graph.industryData.industryDataRun](../resources/industrydata-industrydatarun.md)|Create a new industryDataRun object.|
|[List sourceSystems](../api/industrydata-industrydataconnector-list-sourcesystem.md)|[microsoft.graph.industryData.sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) collection|Get the sourceSystemDefinition resources from the sourceSystems navigation property.|
|[Create sourceSystemDefinition](../api/industrydata-industrydatatenant-post-sourcesystems.md)|[microsoft.graph.industryData.sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md)|Create a new sourceSystemDefinition object.|
|[List years](../api/industrydata-inboundfileflow-list-year.md)|[microsoft.graph.industryData.yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md) collection|Get the yearTimePeriodDefinition resources from the years navigation property.|
|[Create yearTimePeriodDefinition](../api/industrydata-industrydatatenant-post-years.md)|[microsoft.graph.industryData.yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md)|Create a new yearTimePeriodDefinition object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|dataConnectors|[microsoft.graph.industryData.industryDataConnector](../resources/industrydata-industrydataconnector.md) collection|Set of connectors for importing data from source systems.|
|inboundFlows|[microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md) collection|Set of data import flow processes to bring data into the canonical store via a connector.|
|operations|[microsoft.graph.longRunningOperation](../resources/longrunningoperation.md) collection|Read-only set of ephemeral operations the system is currently executing.|
|referenceDefinitions|[microsoft.graph.industryData.referenceDefinition](../resources/industrydata-referencedefinition.md) collection|Set of user modifiable system picker types.|
|roleGroups|[microsoft.graph.industryData.roleGroup](../resources/industrydata-rolegroup.md) collection|Set of groups of individual roles used to make role-based admin simpler.|
|runs|[microsoft.graph.industryData.industryDataRun](../resources/industrydata-industrydatarun.md) collection|Read-only set of groups of run information presenting the point-in-time diagnostic state of processes run by the system.|
|sourceSystems|[microsoft.graph.industryData.sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) collection|The set of systems representing real work external systems.|
|years|[microsoft.graph.industryData.yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md) collection|Set of years represented int the system.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.industryDataTenant",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.industryDataTenant"
}
```

