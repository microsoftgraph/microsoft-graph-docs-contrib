---
title: "industryDataRoot resource type"
description: "Represents the entry point to all industry data resources."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# industryDataRoot resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entry point to all industry data resources.

## Methods

| Method                                                                                    | Return type                                                                                                  | Description                                                                                                             |
| :---------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------- |
| [Create industryDataConnector](../api/industrydata-industrydataconnector-post.md)         | [microsoft.graph.industryData.industryDataConnector](industrydata-industrydataconnector.md)                  | Create a new [industryDataConnector](industrydata-industrydataconnector.md) object.                                     |
| [List industryDataConnectors](../api/industrydata-industrydataconnector-list.md)          | [microsoft.graph.industryData.industryDataConnector](industrydata-industrydataconnector.md) collection       | Get a list of the [industryDataConnector](industrydata-industrydataconnector.md) objects and their properties.          |
| [Get industryDataConnector](../api/industrydata-industrydataconnector-get.md)             | [microsoft.graph.industryData.industryDataConnector](industrydata-industrydataconnector.md)                  | Read the properties and relationships of an [industryDataConnector](industrydata-industrydataconnector.md) object.      |
| [Update industryDataConnector](../api/industrydata-industrydataconnector-update.md)       | [microsoft.graph.industryData.industryDataConnector](industrydata-industrydataconnector.md)                  | Update the properties of an [industryDataConnector](industrydata-industrydataconnector.md) object.                      |
| [Delete industryDataConnector](../api/industrydata-industrydataconnector-delete.md)       | None                                                                                                         | Delete an [industryDataConnector](industrydata-industrydataconnector.md) object.                                        |
| [Create inboundFlow](../api/industrydata-inboundflow-post.md)                             | [microsoft.graph.industryData.inboundFlow](industrydata-inboundflow.md)                                      | Create a new [inboundFlow](industrydata-inboundflow.md) object.                                                         |
| [List inboundFlows](../api/industrydata-inboundflow-list.md)                              | [microsoft.graph.industryData.inboundFlow](industrydata-inboundflow.md) collection                           | Get a list of the [inboundFlow](industrydata-inboundflow.md) objects and their properties.                              |
| [Get inboundFlow](../api/industrydata-inboundflow-get.md)                                 | [microsoft.graph.industryData.inboundFlow](industrydata-inboundflow.md)                                      | Read the properties and relationships of an [inboundFlow](industrydata-inboundflow.md) object.                          |
| [Update inboundFlow](../api/industrydata-inboundflow-update.md)                           | [microsoft.graph.industryData.inboundFlow](industrydata-inboundflow.md)                                      | Update the properties of an [inboundFlow](industrydata-inboundflow.md) object.                                          |
| [Delete inboundFlow](../api/industrydata-inboundflow-delete.md)                           | None                                                                                                         | Delete an [inboundFlow](industrydata-inboundflow.md) object.                                                            |
| [List operations](../api/industrydata-filevalidateoperation-list.md)                       | [fileValidateOperation](industrydata-filevalidateoperation.md) collection                        | Get a list of [file validation operations](../resources/industrydata-filevalidateoperation.md) and their statuses.                                    |
| [List referenceDefinitions](../api/industrydata-referencedefinition-list.md)              | [microsoft.graph.industryData.referenceDefinition](industrydata-referencedefinition.md) collection           | Get a list of the [referenceDefinition](industrydata-referencedefinition.md) objects and their properties.              |
| [Get referenceDefinition](../api/industrydata-referencedefinition-get.md)                 | [microsoft.graph.industryData.referenceDefinition](industrydata-referencedefinition.md)                      | Read the properties and relationships of a [referenceDefinition](industrydata-referencedefinition.md) object.           |
| [List roleGroups](../api/industrydata-rolegroup-list.md)                                  | [microsoft.graph.industryData.roleGroup](industrydata-rolegroup.md) collection                               | Get a list of the [roleGroup](industrydata-rolegroup.md) objects and their properties.                                  |
| [Get roleGroup](../api/industrydata-rolegroup-get.md)                                     | [microsoft.graph.industryData.roleGroup](industrydata-rolegroup.md)                                          | Read the properties and relationships of a [roleGroup](industrydata-rolegroup.md) object.                               |
| [List industryDataRuns](../api/industrydata-industrydatarun-list.md)                      | [microsoft.graph.industryData.industryDataRun](industrydata-industrydatarun.md) collection                   | Get a list of the [industryDataRun](industrydata-industrydatarun.md) objects and their properties.                      |
| [Get industryDataRun](../api/industrydata-industrydatarun-get.md)                         | [microsoft.graph.industryData.industryDataRun](industrydata-industrydatarun.md)                              | Read the properties and relationships of an [industryDataRun](industrydata-industrydatarun.md) object.                  |
| [Create sourceSystemDefinition](../api/industrydata-sourcesystemdefinition-post.md)       | [microsoft.graph.industryData.sourceSystemDefinition](industrydata-sourcesystemdefinition.md)                | Create a new [sourceSystemDefinition](industrydata-sourcesystemdefinition.md) object.                                   |
| [List sourceSystemDefinitions](../api/industrydata-sourcesystemdefinition-list.md)        | [microsoft.graph.industryData.sourceSystemDefinition](industrydata-sourcesystemdefinition.md) collection     | Get a list of the [sourceSystemDefinition](industrydata-sourcesystemdefinition.md) objects and their properties.        |
| [Get sourceSystemDefinition](../api/industrydata-sourcesystemdefinition-get.md)           | [microsoft.graph.industryData.sourceSystemDefinition](industrydata-sourcesystemdefinition.md)                | Read the properties and relationships of a [sourceSystemDefinition](industrydata-sourcesystemdefinition.md) object.     |
| [Update sourceSystemDefinition](../api/industrydata-sourcesystemdefinition-update.md)     | [microsoft.graph.industryData.sourceSystemDefinition](industrydata-sourcesystemdefinition.md)                | Update the properties of a [sourceSystemDefinition](industrydata-sourcesystemdefinition.md) object.                     |
| [Delete sourceSystemDefinition](../api/industrydata-sourcesystemdefinition-delete.md)     | None                                                                                                         | Delete a [sourceSystemDefinition](industrydata-sourcesystemdefinition.md) object.                                       |
| [Create yearTimePeriodDefinition](../api/industrydata-yeartimeperioddefinition-post.md)   | [microsoft.graph.industryData.yearTimePeriodDefinition](industrydata-yeartimeperioddefinition.md)            | Create a new [yearTimePeriodDefinition](industrydata-yeartimeperioddefinition.md) object.                               |
| [List yearTimePeriodDefinitions](../api/industrydata-yeartimeperioddefinition-list.md)    | [microsoft.graph.industryData.yearTimePeriodDefinition](industrydata-yeartimeperioddefinition.md) collection | Get a list of the [yearTimePeriodDefinition](industrydata-yeartimeperioddefinition.md) objects and their properties.    |
| [Get yearTimePeriodDefinition](../api/industrydata-yeartimeperioddefinition-get.md)       | [microsoft.graph.industryData.yearTimePeriodDefinition](industrydata-yeartimeperioddefinition.md)            | Read the properties and relationships of a [yearTimePeriodDefinition](industrydata-yeartimeperioddefinition.md) object. |
| [Update yearTimePeriodDefinition](../api/industrydata-yeartimeperioddefinition-update.md) | [microsoft.graph.industryData.yearTimePeriodDefinition](industrydata-yeartimeperioddefinition.md)            | Update the properties of a [yearTimePeriodDefinition](industrydata-yeartimeperioddefinition.md) object.                 |
| [Delete yearTimePeriodDefinition](../api/industrydata-yeartimeperioddefinition-delete.md) | None                                                                                                         | Delete a [yearTimePeriodDefinition](industrydata-yeartimeperioddefinition.md) object.                                   |

## Properties

None.

## Relationships

| Relationship         | Type                                                                                                         | Description                                                                                                                   |
| :------------------- | :----------------------------------------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------- |
| dataConnectors       | [microsoft.graph.industryData.industryDataConnector](industrydata-industrydataconnector.md) collection       | Set of connectors for importing data from source systems.                                                                     |
| inboundFlows         | [microsoft.graph.industryData.inboundFlow](industrydata-inboundflow.md) collection                           | Set of data import flow activities to bring data into the canonical store via a connector.                                    |
| operations           | [microsoft.graph.longRunningOperation](longrunningoperation.md) collection                                   | Set of ephemeral operations that the system runs currently. Read-only.                                                        |
| referenceDefinitions | [microsoft.graph.industryData.referenceDefinition](industrydata-referencedefinition.md) collection           | Set of user modifiable system picker types.                                                                                   |
| roleGroups           | [microsoft.graph.industryData.roleGroup](industrydata-rolegroup.md) collection                               | Set of groups of individual roles that makes role-based admin simpler.                                                        |
| runs                 | [microsoft.graph.industryData.industryDataRun](industrydata-industrydatarun.md) collection                   | Set of ephemeral runs which present the point-in-time that diagnostic state of activities performed by the system. Read-only. |
| sourceSystems        | [microsoft.graph.industryData.sourceSystemDefinition](industrydata-sourcesystemdefinition.md) collection     | Set of source definitions that represents real-world external systems.                                                        |
| years                | [microsoft.graph.industryData.yearTimePeriodDefinition](industrydata-yeartimeperioddefinition.md) collection | Set of years represented in the system.                                                                                       |

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
