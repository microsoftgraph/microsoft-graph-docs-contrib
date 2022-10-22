---
title: "industryDataRoot resource type"
description: "Represents the entry point to all industry data resources."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: resourcePageType
---

# industryDataRoot resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entry point to all industry data resources.

## Methods

| Method                                                                                         | Return type                                                                                                               | Description                                                                                                           |
| :--------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------ | :-------------------------------------------------------------------------------------------------------------------- |
| [Get industryDataRoot](../api/industrydata-industrydataroot-get.md)                            | [microsoft.graph.industryData.industryDataRoot](../resources/industrydata-industrydataroot.md)                            | Read the properties and relationships of an [industryDataRoot](../resources/industrydata-industrydataroot.md) object. |
| [List dataConnectors](../api/industrydata-industrydataroot-list-dataconnectors.md)             | [microsoft.graph.industryData.industryDataConnector](../resources/industrydata-industrydataconnector.md) collection       | Get the **industryDataConnector** resources from the **dataConnectors** navigation property.                          |
| [Create industryDataConnector](../api/industrydata-industrydataroot-post-dataconnectors.md)    | [microsoft.graph.industryData.industryDataConnector](../resources/industrydata-industrydataconnector.md)                  | Create a new **industryDataConnector** object.                                                                        |
| [List inboundFlows](../api/industrydata-industrydataroot-list-inboundflows.md)                 | [microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md) collection                           | Get the **inboundFlow** resources from the **inboundFlows** navigation property.                                      |
| [Create inboundFlow](../api/industrydata-industrydataroot-post-inboundflows.md)                | [microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md)                                      | Create a new **inboundFlow** object.                                                                                  |
| [List longRunningOperations](../api/industrydata-industrydataroot-list-operations.md)                     | [microsoft.graph.longRunningOperation](../resources/longrunningoperation.md) collection                                   | Get a list of [long-running operations](../resources/longrunningoperation.md) and their statuses.                               |
| [List referenceDefinitions](../api/industrydata-industrydataroot-list-referencedefinitions.md) | [microsoft.graph.industryData.referenceDefinition](../resources/industrydata-referencedefinition.md) collection           | Get the **referenceDefinition** resources from the **referenceDefinitions** navigation property.                      |
| [List roleGroups](../api/industrydata-industrydataroot-list-rolegroups.md)                     | [microsoft.graph.industryData.roleGroup](../resources/industrydata-rolegroup.md) collection                               | Get the **roleGroup** resources from the **roleGroups** navigation property.                                          |
| [List runs](../api/industrydata-industrydataroot-list-runs.md)                                 | [microsoft.graph.industryData.industryDataRun](../resources/industrydata-industrydatarun.md) collection                   | Get the **industryDataRun** resources from the **runs** navigation property.                                          |
| [List sourceSystems](../api/industrydata-industrydataconnector-list-sourcesystem.md)           | [microsoft.graph.industryData.sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) collection     | Get the **sourceSystemDefinition** resources from the **sourceSystems** navigation property.                          |
| [Create sourceSystemDefinition](../api/industrydata-industrydataroot-post-sourcesystems.md)    | [microsoft.graph.industryData.sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md)                | Create a new **sourceSystemDefinition** object.                                                                       |
| [List years](../api/industrydata-inboundfileflow-list-year.md)                                 | [microsoft.graph.industryData.yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md) collection | Get the **yearTimePeriodDefinition** resources from the years navigation property.                                    |
| [Create yearTimePeriodDefinition](../api/industrydata-industrydataroot-post-years.md)          | [microsoft.graph.industryData.yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md)            | Create a new **yearTimePeriodDefinition** object.                                                                     |

## Properties

None.

## Relationships

| Relationship         | Type                                                                                                                      | Description                                                                                                                  |
| :------------------- | :------------------------------------------------------------------------------------------------------------------------ | :--------------------------------------------------------------------------------------------------------------------------- |
| dataConnectors       | [microsoft.graph.industryData.industryDataConnector](../resources/industrydata-industrydataconnector.md) collection       | Set of connectors for importing data from source systems.                                                                    |
| inboundFlows         | [microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md) collection                           | Set of data import flow activities to bring data into the canonical store via a connector.                                   |
| operations           | [microsoft.graph.longRunningOperation](../resources/longrunningoperation.md) collection                                   | Set of ephemeral operations that the system is currently running. Read-only.                                                 |
| referenceDefinitions | [microsoft.graph.industryData.referenceDefinition](../resources/industrydata-referencedefinition.md) collection           | Set of user modifiable system picker types.                                                                                  |
| roleGroups           | [microsoft.graph.industryData.roleGroup](../resources/industrydata-rolegroup.md) collection                               | Set of groups of individual roles that makes role-based admin simpler.                                                       |
| runs                 | [microsoft.graph.industryData.industryDataRun](../resources/industrydata-industrydatarun.md) collection                   | Set of ephemeral runs which present the point-in-time that diagnostic state of activities performed by the system. Read-only. |
| sourceSystems        | [microsoft.graph.industryData.sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) collection     | Set of source definitions that represents real world external systems.                                                       |
| years                | [microsoft.graph.industryData.yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md) collection | Set of years represented in the system.                                                                                      |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.industryDataRoot",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.industryDataRoot"
}
```
