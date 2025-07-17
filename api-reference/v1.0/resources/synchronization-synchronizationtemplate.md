---
title: "synchronizationTemplate resource type"
description: "Provides preconfigured synchronization settings for a particular application."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.subservice: "entra-applications"
ms.date: 04/03/2024
---

# synchronizationTemplate resource type

Namespace: microsoft.graph

Provides preconfigured synchronization settings for a particular application. These settings are used by default for any [synchronization job](synchronization-synchronizationjob.md) that is based on the template. The application developer specifies the template; anyone can retrieve the template to see the default settings, including the [synchronization schema](synchronization-synchronizationschema.md).

You can provide multiple templates for an application, and designate a default template. If multiple templates are available for the application you're interested in, seek application-specific guidance to determine which one best meets your needs.

## Methods

| Method        | Return Type               | Description                  |
|:--------------|:--------------------------|:-----------------------------|
|[List](../api/synchronization-synchronization-list-templates.md)    |[synchronizationTemplate](synchronization-synchronizationtemplate.md) collection  |List the templates that are available for an application or application instance (service principal).|
|[Get](../api/synchronization-synchronizationtemplate-get.md)      |[synchronizationTemplate](synchronization-synchronizationtemplate.md)   |Read the properties and relationships of the **synchronizationTemplate** object.|
|[Update](../api/synchronization-synchronizationtemplate-update.md)      |[synchronizationTemplate](synchronization-synchronizationtemplate.md)   |Update the properties and relationships of the **synchronizationTemplate** object.|

## Properties

| Property      | Type                      | Description                  |
|:--------------|:--------------------------|:-----------------------------|
|id             |String                     |Unique template identifier.|
|applicationId  |String                     |Identifier of the application this template belongs to.|
|default        |Boolean                    |`true` if this template is recommended to be the default for the application.|
|description    |String                     |Description of the template.|
|discoverable   |String                     |`true` if this template should appear in the collection of templates available for the application instance (service principal).|
|factoryTag     |String                     |One of the well-known factory tags supported by the synchronization engine. The **factoryTag** tells the synchronization engine which implementation to use when processing jobs based on this template.|
|metadata       |[synchronizationMetadataEntry](../resources/synchronization-synchronizationmetadataentry.md) collection  |Additional extension properties. Unless mentioned explicitly, metadata values should not be changed.|

## Relationships
| Relationship      | Type        |Description|
|:------------------|:----------|:----------|
|schema             |[synchronizationSchema](synchronization-synchronizationschema.md)     |Default synchronization schema for the jobs based on this template.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.synchronizationTemplate"
}-->

```json
{
  "applicationId": "String (identifier)",
  "default": true,
  "description": "String",
  "discoverable": true,
  "factoryTag": "String",
  "id": "String (identifier)",
  "metadata": [
    {
      "@odata.type": "microsoft.graph.synchronizationMetadataEntry"
    }
  ],
  "schema": {
    "@odata.type": "microsoft.graph.synchronizationSchema"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "synchronizationTemplate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


